#include "stripDig.h"
#include <iostream>
#include <sstream>
#include <iomanip>
#include "TGraph.h"
#include "TGraphAsymmErrors.h"
#include "TLine.h"

using namespace std;

int drawEvent(bool *drawEvents, Data &d, EventDisplay &ev, TCanvas &evCanvas, int ientry, string histDir) {

const double OuterRadius(1050.0);
const double EndZ(3050.0);
double p, px, py, pz, startX, startY, startZ, startR, endX, endY, endZ, endR, dx, dy, dz, length, trackEta, trackPhi;
cout << "Truth track:\n";
//
//    Track from truth (first only)
//
    if (d.nTruth > 0) {
        px = d.trPx->at(0);
        py = d.trPy->at(0);
        pz = d.trPz->at(0);
        p = sqrt(px * px + py * py + pz * pz);
        dx = px / p;
        dy = py / p;
        dz = pz / p; // = cos theta
        startX = d.trVx->at(0);
        startY = d.trVy->at(0);
        startZ = d.trVz->at(0);
        startR = sqrt(startX * startX + startY * startY);
        // Does it leave the side or the ends?
        // Track length to reach OuterRadius: r / sin theta
        length = OuterRadius / sqrt(1. - dz * dz);
        endZ = startZ + length * dz;
        if (fabs(endZ) > EndZ) { // leaves ends
            endZ = endZ >= 0.? EndZ: -EndZ;
            endX = startX + (endZ - startZ) * dx / dz;
            endY = startY + (endZ - startZ) * dy / dz;
        }
        else { // Leaves cyl
            endX = startX + length * dx;
            endY = startY + length * dy;
        }
        endR = sqrt(endX * endX + endY * endY);
        trackPhi = atan2(py, px);
        double theta = acos(dz); 
        trackEta = -log(tan(theta/2.));
    }
    evCanvas.cd(1);
    TGraph evDisplayRZ(ev.nHits, &(ev.hitZ[0]), &(ev.hitR[0]));
    evDisplayRZ.SetTitle("RZ event display");
    evDisplayRZ.GetXaxis()->SetTitle("z (mm)");
    evDisplayRZ.GetYaxis()->SetTitle("r (mm)");
    evDisplayRZ.GetXaxis()->SetLimits(-EndZ, EndZ);
    evDisplayRZ.GetHistogram()->SetMinimum(0.);
    evDisplayRZ.GetHistogram()->SetMaximum(OuterRadius);
    evDisplayRZ.SetMarkerColor(4);
    evDisplayRZ.SetMarkerStyle(5);
    evDisplayRZ.SetMarkerSize(0.5);
    evDisplayRZ.Draw("a*");
    TLine lineRZ(startZ, startR, endZ, endR);
    lineRZ.Draw();

    evCanvas.cd(2);
    TGraph evDisplayXY(ev.nHits, &(ev.hitX[0]), &(ev.hitY[0]));
    evDisplayXY.SetTitle("XY event display");
    evDisplayXY.GetXaxis()->SetTitle("x (mm)");
    evDisplayXY.GetYaxis()->SetTitle("y (mm)");
    evDisplayXY.GetXaxis()->SetLimits(-OuterRadius, OuterRadius);
    evDisplayXY.GetHistogram()->SetMinimum(-OuterRadius);
    evDisplayXY.GetHistogram()->SetMaximum(OuterRadius);
    evDisplayXY.SetMarkerColor(4);
    evDisplayXY.SetMarkerStyle(5);
    evDisplayXY.SetMarkerSize(0.5);
    evDisplayXY.Draw("a*");
    TLine lineXY(startX, startY, endX, endY);
    lineXY.Draw();

    evCanvas.cd(3);
    for (int h = 0; h < ev.nHits; ++h) {
        ev.hitPhi[h] -= trackPhi;
    }
    TGraphAsymmErrors evDisplayPhiZ(ev.nHits, &ev.hitZ[0], &ev.hitPhi[0], 0, 0, &ev.stripLowPhi[0], &ev.stripHighPhi[0]);
    evDisplayPhiZ.SetTitle("Phi-z event display");
    evDisplayPhiZ.GetXaxis()->SetTitle("z (mm)");
    evDisplayPhiZ.GetYaxis()->SetTitle("Deviation of RDO-phi from muon phi (rad)");
    evDisplayPhiZ.GetXaxis()->SetLimits(-EndZ, EndZ);
//    evDisplayPhiZ.GetHistogram()->SetMinimum(0.00);
//    evDisplayPhiZ.GetHistogram()->SetMaximum(0.03);
    evDisplayPhiZ.SetMarkerColor(4);
    evDisplayPhiZ.SetMarkerStyle(21);
    evDisplayPhiZ.SetMarkerSize(0.25);
    evDisplayPhiZ.Draw("ap");

    evCanvas.cd(4);
    TGraphAsymmErrors evDisplayPhiR(ev.nHits, &ev.hitR[0], &ev.hitPhi[0], 0, 0, &ev.stripLowPhi[0], &ev.stripHighPhi[0]);
    evDisplayPhiR.SetTitle("Phi-r event display");
    evDisplayPhiR.GetXaxis()->SetTitle("r (mm)");
    evDisplayPhiR.GetYaxis()->SetTitle("Deviation of RDO-phi from muon phi (rad)");
    evDisplayPhiR.GetXaxis()->SetLimits(0., OuterRadius);
//    evDisplayPhiR.GetHistogram()->SetMinimum(0.00);
//    evDisplayPhiR.GetHistogram()->SetMaximum(0.03);
    evDisplayPhiR.SetMarkerColor(4);
    evDisplayPhiR.SetMarkerStyle(21);
    evDisplayPhiR.SetMarkerSize(0.25);
    evDisplayPhiR.Draw("ap");

    evCanvas.Update();

    ostringstream evFilename;
    evFilename << histDir << "/evDisp" << setw(3) << setfill('0') << ientry << ".pdf";
    evCanvas.SaveAs(evFilename.str().c_str());

    cout <<  "Number of hits was " << ev.hitZ.size() << ". Type n to stop event display [anything else to continue]: ";
    string input;
    std::cin >> input;
    if (input == "n") {
        *drawEvents = false;
    }

    evCanvas.Clear("D");

    return 1;
}
