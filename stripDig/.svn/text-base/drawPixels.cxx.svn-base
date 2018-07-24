#include <iostream>
#include "stripDig.h"
#include "TGraph.h"
#include "TCanvas.h"
#include "TROOT.h"
#include "TStyle.h"

using namespace std;

extern TROOT gRoot;
extern TStyle *gStyle;

int drawPixels(Histograms &h, string histDir, Results &r) {
    gROOT->SetStyle("Plain");
    gStyle->SetOptStat(110010); // 110010: overflow, underflow, entries

    int nEndcapPixelRDOs = r.endcapPixelRDOListGlobX.size();
    if (nEndcapPixelRDOs > 0) {
        TCanvas p0("p0", "p0", 600, 600);
        TGraph gPixelRDOsGlobalXYendcap(nEndcapPixelRDOs, &r.endcapPixelRDOListGlobX[0], &r.endcapPixelRDOListGlobY[0]);
        gPixelRDOsGlobalXYendcap.SetTitle("Pixel Endcap RDO Locations");
        gPixelRDOsGlobalXYendcap.GetXaxis()->SetTitle("global X coordinate (mm)");
        gPixelRDOsGlobalXYendcap.GetYaxis()->SetTitle("global Y coordinate (mm)");
        gPixelRDOsGlobalXYendcap.Draw("ap");
        p0.SaveAs((histDir + "/PixelEndcapRDOsXY.pdf").c_str());
    }
    int nBarrelPixelRDOs = r.barrelPixelRDOListGlobX.size();
    if (nBarrelPixelRDOs > 0) {
        TCanvas p1("p1", "p1", 600, 600);
        TGraph gPixelRDOsGlobalXYbarrel(nBarrelPixelRDOs, &r.barrelPixelRDOListGlobX[0], &r.barrelPixelRDOListGlobY[0]);
        gPixelRDOsGlobalXYbarrel.SetTitle("Pixel Barrel RDO Locations");
        gPixelRDOsGlobalXYbarrel.GetXaxis()->SetTitle("global X coordinate (mm)");
        gPixelRDOsGlobalXYbarrel.GetYaxis()->SetTitle("global Y coordinate (mm)");
        gPixelRDOsGlobalXYbarrel.Draw("ap");
        p1.SaveAs((histDir + "/PixelBarrelRDOsXY.pdf").c_str());
    }

    int nAllPixelRDOs = r.allPixelRDOListGlobR.size();
    if (nAllPixelRDOs > 0) {
        TCanvas p2("p2","p2");
        TGraph gPixelRDOsGlobalRZ(nAllPixelRDOs, &r.allPixelRDOListGlobZ[0], &r.allPixelRDOListGlobR[0]);
        gPixelRDOsGlobalRZ.SetTitle("Pixel RDO Locations");
        gPixelRDOsGlobalRZ.GetXaxis()->SetTitle("global Z coordinate (mm)");
        gPixelRDOsGlobalRZ.GetYaxis()->SetTitle("global R coordinate (mm)");
        gPixelRDOsGlobalRZ.Draw("ap");
        p2.SaveAs((histDir + "/PixelRDOsRZ.pdf").c_str());
        TCanvas p3("p3", "p3");
        p3.Divide(2, 2);
        p3.cd(1);
        h.PixelBarrelEndcapId->Draw();
        p3.cd(2);
        h.PixelLayerId->Draw();
        p3.cd(3);
        h.PixelPhiId->Draw();
        p3.cd(4);
        h.PixelEtaId->Draw();
        p3.SaveAs((histDir + "/PixelIDs.pdf").c_str());

        TCanvas p4("p4", "p4", 1000, 800);
        p4.Divide(2, 2);
        p4.cd(1);
        h.LocalPixelYX->Draw("COLZ");
        p4.cd(2);
        h.LocalPixelYZ->Draw("COLZ");
        p4.cd(3);
        h.LocalPixelZX->Draw("COLZ");
        p4.SaveAs((histDir + "/PixelHitLocalCoords.pdf").c_str());
    }

    return 1;
}
