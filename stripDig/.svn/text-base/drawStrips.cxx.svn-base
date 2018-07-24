#include <iostream>
#include "stripDig.h"
#include "TGraph.h"
#include "TCanvas.h"
#include "TROOT.h"
#include "TStyle.h"

using namespace std;

extern TROOT gRoot;
extern TStyle *gStyle;

int drawStrips(Histograms &h, string histDir, Results &r) {

    gROOT->SetStyle("Plain");
    gStyle->SetOptStat(110010); // 110010: overflow, underflow, entries

    int nBarrelStripRDOs = r.barrelStripRDOListGlobX0.size();
    if (nBarrelStripRDOs > 0) {
        TCanvas c7("c7","c7",600,600);
        TGraph gStripRDOsGlobalXYbarrel(nBarrelStripRDOs, &r.barrelStripRDOListGlobX0[0], &r.barrelStripRDOListGlobY0[0]);
        gStripRDOsGlobalXYbarrel.SetTitle("Barrel Strip RDO y-x global positions");
        gStripRDOsGlobalXYbarrel.GetXaxis()->SetTitle("global X0 coordinate (mm)");
        gStripRDOsGlobalXYbarrel.GetYaxis()->SetTitle("global Y0 coordinate (mm)");
        gStripRDOsGlobalXYbarrel.Draw("ap");
        c7.SaveAs((histDir + "/StripBarrelRDOsXY.pdf").c_str());
    }
    else {
        cout << "No barrelStripRDOs!\n";
    }

    int nAllStripRDOs = r.allStripRDOListGlobR0.size();
    if (nAllStripRDOs > 0) {
        TCanvas c8("c8","c8");

        TGraph gStripRDOsGlobalRZ(nAllStripRDOs, &r.allStripRDOListGlobZ0[0], &r.allStripRDOListGlobR0[0]);

        gStripRDOsGlobalRZ.SetTitle("All Strip RDO r-z global positions");
        gStripRDOsGlobalRZ.GetXaxis()->SetTitle("global Z0 coordinate (mm)");
        gStripRDOsGlobalRZ.GetYaxis()->SetTitle("global R0 coordinate (mm)");
        gStripRDOsGlobalRZ.Draw("ap");
        c8.SaveAs((histDir + "/StripRDOsRZ.pdf").c_str());
    }

    TCanvas c9("c9", "c9", 1000, 800);
    c9.Divide(4, 2);
    c9.cd(1);
    h.BarrelEndcapId->Draw();
    c9.cd(2);
    h.LayerId->Draw();
    c9.cd(3);
    h.PhiId->Draw();
    c9.cd(4);
    h.EtaId->Draw();
    c9.cd(5);
    h.SideId->Draw();
    c9.cd(6);
    h.RowId->Draw();
    c9.cd(7);
    h.StripId->Draw();
    c9.SaveAs((histDir + "/Id.pdf").c_str());

    TCanvas cl("cl", "cl", 1000, 800);
    cl.Divide(2, 2);
    cl.cd(1);
    h.ClusterWidth->Draw();
    cl.cd(2);
    h.ClusterWidthCMOS->Draw();
    cl.cd(3);
    h.ClusterWidthB->Draw();
    cl.cd(4);
    h.ClusterWidthEC->Draw();
    cl.SaveAs((histDir + "/ClusterWidth.pdf").c_str());

    TCanvas cA("cA", "cA", 1000, 800);
    cA.Divide(4, 2);
    cA.cd(1);
    h.LayerIdB->Draw();
    cA.cd(2);
    h.PhiIdB->Draw();
    cA.cd(3);
    h.EtaIdB->Draw();
    cA.cd(4);
    h.SideIdB->Draw();
    cA.cd(5);
    h.RowIdB->Draw();
    cA.cd(6);
    h.StripIdB->Draw();
    cA.cd(7);
    h.RowIdBSS->Draw();
    cA.cd(8);
    h.RowIdBLS->Draw();
    cA.SaveAs((histDir + "/BarrelId.pdf").c_str());

    TCanvas cA2("cA2", "cA2", 1000, 800);
    cA2.Divide(2, 1);
    cA2.cd(1);
    h.RowIdCMOS->Draw();
    cA2.cd(2);
    h.StripIdCMOS->Draw();
    cA2.SaveAs((histDir + "/CMOS_ID.pdf").c_str());

    TCanvas cB("cB", "cB", 1000, 800);
    cB.Divide(3, 2);
    cB.cd(1);
    h.LayerIdEC->Draw();
    cB.cd(2);
    h.PhiIdEC->Draw();
    cB.cd(3);
    h.EtaIdEC->Draw();
    cB.cd(4);
    h.SideIdEC->Draw();
    cB.cd(5);
    h.RowIdEC->Draw();
    cB.cd(6);
    h.StripIdEC->Draw();
    cB.SaveAs((histDir + "/EndcapId.pdf").c_str());

    TCanvas cC("cC", "cC", 1000, 800);
    cC.Divide(2, 2);
    cC.cd(1);
    h.LocalSSYX->Draw("COLZ");
    cC.cd(2);
    h.LocalSSYZ->Draw("COLZ");
    cC.cd(3);
    h.LocalSSZX->Draw("COLZ");
    cC.SaveAs((histDir + "/SSHitStripCoords.pdf").c_str());

    cC.Clear("D");
    cC.cd(1);
    h.LocalLSYX->Draw("COLZ");
    cC.cd(2);
    h.LocalLSYZ->Draw("COLZ");
    cC.cd(3);
    h.LocalLSZX->Draw("COLZ");
    cC.SaveAs((histDir + "/LSHitStripCoords.pdf").c_str());

    cC.Clear("D");
    cC.cd(1);
    h.LocalCMOSYX->Draw("COLZ");
    cC.cd(2);
    h.LocalCMOSYZ->Draw("COLZ");
    cC.cd(3);
    h.LocalCMOSZX->Draw("COLZ");
    cC.SaveAs((histDir + "/CMOSHitStripCoords.pdf").c_str());

    cC.Clear("D");
    cC.cd(1);
    h.LocalECYX->Draw("COLZ");
    cC.cd(2);
    h.LocalECYZ->Draw("COLZ");
    cC.cd(3);
    h.LocalECZX->Draw("COLZ");
    cC.SaveAs((histDir + "/ECHitStripCoords.pdf").c_str());

    TCanvas c10("c10", "c10", 1000, 800);
    c10.Divide(2, 1);
    c10.cd(1);
    h.RvsLayIdBarrel->Draw("COLZ");
    c10.cd(2);
    h.BRowvsLay->Draw("COLZ");
    c10.SaveAs((histDir + "/RvsLayB.pdf").c_str());

    TCanvas c11("c11", "c11", 1000, 800);
    c11.Divide(2, 2);
    c11.cd(1);
    h.DistFromTrack->Draw();
    c11.cd(2);
    h.NCloseHits->Draw("COLZ");
    c11.cd(3);
    h.TrackEtaPhi->Draw("COLZ");
    c11.cd(4);
    h.NHitsEtaPhi->Divide(h.TrackEtaPhi);
    h.NHitsEtaPhi->Draw("COLZ");
    c11.SaveAs((histDir + "/nHitsVsEta.pdf").c_str());

    TCanvas c12("c12", "c12", 1000, 800);
    h.VertexZ->Draw();
    c12.SaveAs((histDir + "/VertexZ.pdf").c_str());

    return 1;
}
