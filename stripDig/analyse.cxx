#include <iostream>
#include <cmath>
// #include <Eigen/Dense>
#include "vector/Cartesian3Vector.h"
#include <chrono>
#include "stripDig.h"

using namespace std;
using namespace std::chrono;
//using namespace Eigen;

int analyse(TTree &t, Data &d, int nEvents, Histograms &h, Results &results, bool drawEvents, string histDir) {
// Identifiers
int bec, lay, phi, eta, sid, row, str;
EventDisplay ev;
//
//    Timing
//
    time_point<std::chrono::system_clock> prev, now;
    duration<double> elapsed_seconds;
//
//    Event display things
//
    ev.nHits = 0;
    TCanvas evCanvas("evCanvas", "evCanvas", 1000, 800);
    evCanvas.Divide(2, 2);
    evCanvas.Paint();
//
//    Event loop
//
    prev = system_clock::now();
    int nEntries = (int) t.GetEntries();
    int nToDo = nEvents? min(nEntries, nEvents): nEntries;

    for (int ientry = 0; ientry < nToDo; ientry++) {
        int lengt = t.GetEntry(ientry);
        if (ientry > 0 && (ientry % 1000) == 0) {
            now = system_clock::now();
            elapsed_seconds = now - prev;
            cout << "Do event " << ientry << "; previous set of events took " << elapsed_seconds.count() << 
                    " s. Length = " << lengt << "\n"; 
            prev = now;
        }
//
//    Pixels
//
        for (int i = 0; i < d.nPixelRDO; i++) {

            double x = d.pixelRDOGlobX->at(i);
            double y = d.pixelRDOGlobY->at(i);
            double z = d.pixelRDOGlobZ->at(i);
            double r = sqrt(x * x + y * y);
            double phiAng = atan2(y, x);

            results.allPixelRDOListGlobR.push_back(r);
            results.allPixelRDOListGlobZ.push_back(z);

            if (d.pixelRDO_BarrelEndcap->at(i) == 0) {
                results.barrelPixelRDOListGlobX.push_back(x);
                results.barrelPixelRDOListGlobY.push_back(y);
                results.barrelPixelRDOListGlobZ.push_back(z);
            }
            else {
                results.endcapPixelRDOListGlobX.push_back(x);
                results.endcapPixelRDOListGlobY.push_back(y);
                results.endcapPixelRDOListGlobZ.push_back(z);
            }

            h.PixelBarrelEndcapId->Fill(d.pixelRDO_BarrelEndcap->at(i));
            h.PixelLayerId->Fill(d.pixelRDO_Layer->at(i));
            h.PixelPhiId->Fill(d.pixelRDO_Phi->at(i));
            h.PixelEtaId->Fill(d.pixelRDO_Eta->at(i));

            h.LocalPixelYX->Fill(d.pixelRDOXL->at(i), d.pixelRDOYL->at(i));
            h.LocalPixelZX->Fill(d.pixelRDOXL->at(i), d.pixelRDOZL->at(i));
            h.LocalPixelYZ->Fill(d.pixelRDOZL->at(i), d.pixelRDOYL->at(i));

            ev.hitX.push_back(x);
            ev.hitY.push_back(y);
            ev.hitZ.push_back(z);
            ev.hitR.push_back(r);
            ev.hitPhi.push_back(phiAng);
            ev.stripLowPhi.push_back(0.025 / r);  // Not relevant to pixels, but we need to pad the vectors out
            ev.stripHighPhi.push_back(0.025 / r); // 50 micron pitch
            ev.nHits += 1;
        }
/*
        now = system_clock::now();
        elapsed_seconds = now - prev;
        cout << "Pixels took " << elapsed_seconds.count() << " s.\n";
*/
//
//    Strips
//
        for (int i = 0; i < d.nStripRDO; ++i) { // Loop over RDOs in this event
            bec = d.stripRDO_BarrelEndcap->at(i);
            lay = d.stripRDO_Layer->at(i);
            phi = d.stripRDO_Phi->at(i);
            eta = d.stripRDO_Eta->at(i);
            sid = d.stripRDO_Side->at(i);
            row = d.stripRDO_Row->at(i);
            str = d.stripRDO_Strip->at(i);

            bool cmos = bec == 0 && lay >= 4 && lay <= 6;

            h.BarrelEndcapId->Fill(bec);
            h.LayerId->Fill(lay);
            h.PhiId->Fill(phi);
            h.EtaId->Fill(eta);
            h.SideId->Fill(sid);
            h.RowId->Fill(row);
            h.StripId->Fill(str);

            if (cmos) {
                h.RowIdCMOS->Fill(row);
                h.StripIdCMOS->Fill(str);
            }

            if (bec == 0) {
                h.LayerIdB->Fill(lay);
                h.PhiIdB->Fill(phi);
                h.EtaIdB->Fill(eta);
                h.SideIdB->Fill(sid);
                h.RowIdB->Fill(row);
                if (lay < nShortStripBarrels) { // SS
                    h.RowIdBSS->Fill(row);
                }
                else if (!cmos) { // LS
                    h.RowIdBLS->Fill(row);
                }
                h.StripIdB->Fill(str);
            }
            else {
                h.LayerIdEC->Fill(lay);
                h.PhiIdEC->Fill(phi);
                h.EtaIdEC->Fill(eta);
                h.SideIdEC->Fill(sid);
                h.RowIdEC->Fill(row);
                h.StripIdEC->Fill(str);
            }
//
//    Cluster widths
//
            h.ClusterWidth->Fill(d.stripRDO_Size->at(i));
            if (cmos) { //CMOS or BCL
                int width = d.stripRDO_Size->at(i);
//                if (width >= 0) 
                    h.ClusterWidthCMOS->Fill(d.stripRDO_Size->at(i));
//                else
//                    cout << "Cluster width negative in CMOS\n";
            }
            else if (bec == 0) { // Barrel, excluding CMOS/BCL
                h.ClusterWidthB->Fill(d.stripRDO_Size->at(i));
            }
            else {
                h.ClusterWidthEC->Fill(d.stripRDO_Size->at(i));
            }
//
//    Local strip-centre coords. In Trk frame: 0/X - phi; 1/Y - eta; 2/Z - depth
//    I make hists in GeoModel local frame. Names: YX means plot Y vs X. First par is X. But I swap X and Y for geoModel frame
//
            if (i >=  d.stripRDOXL->size()) {
                cerr << "Event " << ientry << 
                        ": Wrong number of hit positions! Usually means bad identifiers during digitization\n";
                continue;
            }
            if (bec == 0 && !cmos) {
                if (lay < nShortStripBarrels) { // Barrel SS
                    h.LocalSSYX->Fill(d.stripRDOYL->at(i), d.stripRDOXL->at(i));
                    h.LocalSSZX->Fill(d.stripRDOYL->at(i), d.stripRDOZL->at(i));
                    h.LocalSSYZ->Fill(d.stripRDOZL->at(i), d.stripRDOXL->at(i));
                }
                else { // Barrel LS
                    h.LocalLSYX->Fill(d.stripRDOYL->at(i), d.stripRDOXL->at(i));
                    h.LocalLSZX->Fill(d.stripRDOYL->at(i), d.stripRDOZL->at(i));
                    h.LocalLSYZ->Fill(d.stripRDOZL->at(i), d.stripRDOXL->at(i));
                }
            }
            else if (cmos) {
                h.LocalCMOSYX->Fill(d.stripRDOYL->at(i), d.stripRDOXL->at(i));
                h.LocalCMOSZX->Fill(d.stripRDOYL->at(i), d.stripRDOZL->at(i));
                h.LocalCMOSYZ->Fill(d.stripRDOZL->at(i), d.stripRDOXL->at(i));
            }
            else { // EC
                h.LocalECYX->Fill(d.stripRDOYL->at(i), d.stripRDOXL->at(i));
                h.LocalECZX->Fill(d.stripRDOYL->at(i), d.stripRDOZL->at(i));
                h.LocalECYZ->Fill(d.stripRDOZL->at(i), d.stripRDOXL->at(i));
            }
//
//    Global coords
//
            double x0 = d.stripRDOGlobX0->at(i);
            double y0 = d.stripRDOGlobY0->at(i);
            double z0 = d.stripRDOGlobZ0->at(i);
            double x1 = d.stripRDOGlobX1->at(i);
            double y1 = d.stripRDOGlobY1->at(i);
            double z1 = d.stripRDOGlobZ1->at(i);
            double x = (x0 + x1) /2.;
            double y = (y0 + y1) /2.;
            double z = (z0 + z1) /2.;
            double r = sqrt(x * x + y * y);
            double phiAng = atan2(y, x);

            results.allStripRDOListGlobR0.push_back(r);
            results.allStripRDOListGlobZ0.push_back(z);

            if (bec == 0) {
                h.RvsLayIdBarrel->Fill(lay, r);
                h.BRowvsLay->Fill(lay, row);
            }

            ev.hitX.push_back(x);
            ev.hitY.push_back(y);
            ev.hitZ.push_back(z);
            ev.hitR.push_back(r);
            ev.hitPhi.push_back(phiAng);
            ev.stripLowPhi.push_back(fabs(atan2(y1, x1) - phiAng));
            ev.stripHighPhi.push_back(fabs(atan2(y0, x0) - phiAng));
            ev.nHits += 1;
/*
cout << stripRDO_BarrelEndcap->at(i) << " " <<  stripRDO_Layer->at(i) << " " <<  stripRDO_Phi->at(i) << " " <<
        stripRDO_Eta->at(i) << " " <<  stripRDO_Side->at(i) << " " <<  stripRDO_Row->at(i) << " " <<  stripRDO_Strip->at(i) <<
        " z = " << z << endl;
*/
            if (bec == 0) {
                results.barrelStripRDOListGlobX0.push_back(x);
                results.barrelStripRDOListGlobY0.push_back(y);
                results.barrelStripRDOListGlobZ0.push_back(z);
            }
        }
/*
        now = system_clock::now();
        elapsed_seconds = now - prev;
        cout << "Strips took " << elapsed_seconds.count() << " s.\n";
*/
//
//    Truth track
//
        if (d.nTruth > 0) {
            h.VertexZ->Fill(d.trVz->at(0));
            C3V vertex(d.trVx->at(0), d.trVy->at(0), d.trVz->at(0));
            C3V p(d.trPx->at(0), d.trPy->at(0), d.trPz->at(0));
            C3V dircos(p/p.modulus());
            double theta = acos(dircos.z);
            double phi = atan2(dircos.y, dircos.x);
            double eta = -log(tan(theta/2.));
//
//    Count hits near truth track
//
            int nCloseHits = 0;
            double trackLength, distFromTrack;
            for (int e = 0; e < ev.nHits; ++e) {
                if (ev.hitR[e] < 320.) continue; // Skip pixel RDO's 
                C3V hit(ev.hitX[e], ev.hitY[e], ev.hitZ[e]);
                // Track length: use z in endcap, and r in barrel
                if (fabs(hit.z) > 1400.) { // Endcap; z independent of where along strip
                    trackLength = hit.z / dircos.z;
                }
                else { // Barrel; radius ~independent of where along strip
                    trackLength = ev.hitR[e] /sqrt(1. - dircos.z * dircos.z);
                }
                C3V trackPoint = vertex + trackLength * dircos; 
                double trackR = sqrt(trackPoint.x * trackPoint.x + trackPoint.y * trackPoint.y);
                double trackPhi = atan2(trackPoint.y, trackPoint.x);
                distFromTrack = ev.hitR[e] * fabs(ev.hitPhi[e] - trackPhi); // Just take precision phi converted to mm
//                double distFromTrack = ((hit - vertex).cross(dircos)).norm(); // closest aproach, line to point
//                double distFromTrack = (hit - trackPoint).norm(); // Includes z error; no good
                h.DistFromTrack->Fill(distFromTrack);
                if (distFromTrack < 4.) { 
                    nCloseHits++;
                }
            }
            h.NCloseHits->Fill(eta, (double) nCloseHits);
            double phiMod12 = phi - circleOver12 * floor(phi / circleOver12);
            h.TrackEtaPhi->Fill(phiMod12, eta);
            h.NHitsEtaPhi->Fill(phiMod12, eta, nCloseHits);
        }
/*
        now = system_clock::now();
        elapsed_seconds = now - prev;
        cout << "Track took " << elapsed_seconds.count() << " s.\n";
*/
        if (drawEvents) {
            drawEvent(&drawEvents, d, ev, evCanvas, ientry, histDir); 
        }
//
//    Clear ev, even if not displaying since it is used for other things
//
        ev.nHits = 0;
        ev.hitX.clear();
        ev.hitY.clear();
        ev.hitZ.clear();
        ev.hitR.clear();
        ev.hitPhi.clear();
        ev.stripLowPhi.clear();
        ev.stripHighPhi.clear();

//      Results are never cleared (list of all hits for entire run). Data d cleared by root.
/*
        now = system_clock::now();
        elapsed_seconds = now - prev;
        cout << "Event took " << elapsed_seconds.count() << " s.\n";
        prev = now;
*/
    }
    return 1;
}
