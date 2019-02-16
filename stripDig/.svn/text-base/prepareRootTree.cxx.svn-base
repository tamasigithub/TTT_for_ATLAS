#include "stripDig.h"
#include "TFile.h"
#include <iostream>

using namespace std;

TTree * prepareRootTree(string filename, Data &d) {

    memset(&d, 0, sizeof(d));

    TFile *f = TFile::Open(filename.c_str());
    if (!f) {
        cerr << "FATAL: Unable to open root file named " << filename << endl;
        exit(EXIT_FAILURE);
    }
    TTree *t = (TTree *) f->Get("digTree");
    if (!t) {
        cerr << "FATAL: Unable to get tree named digTree" << endl;
        exit(EXIT_FAILURE);
    }
//
//    Where to store things from the Tree
//

//
//    Pixel
//
    t->SetBranchAddress("NPixelRDO", &d.nPixelRDO);
    t->SetBranchAddress("PixelRDO_GlobalX", &d.pixelRDOGlobX);
    t->SetBranchAddress("PixelRDO_GlobalY", &d.pixelRDOGlobY);
    t->SetBranchAddress("PixelRDO_GlobalZ", &d.pixelRDOGlobZ);

    t->SetBranchAddress("PixelRDO_LocalX", &d.pixelRDOXL);
    t->SetBranchAddress("PixelRDO_LocalY", &d.pixelRDOYL);
    t->SetBranchAddress("PixelRDO_LocalZ", &d.pixelRDOZL);

    t->SetBranchAddress("PixelRDO_BarrelEndcap", &d.pixelRDO_BarrelEndcap);
    t->SetBranchAddress("PixelRDO_Layer", &d.pixelRDO_Layer);
    t->SetBranchAddress("PixelRDO_Phi", &d.pixelRDO_Phi);
    t->SetBranchAddress("PixelRDO_Eta", &d.pixelRDO_Eta);
//
//    Strips
//
    t->SetBranchAddress("NStripRDO", &d.nStripRDO);

    t->SetBranchAddress("StripRDO_BarrelEndcap", &d.stripRDO_BarrelEndcap);
    t->SetBranchAddress("StripRDO_Layer", &d.stripRDO_Layer);
    t->SetBranchAddress("StripRDO_Phi", &d.stripRDO_Phi);
    t->SetBranchAddress("StripRDO_Eta", &d.stripRDO_Eta);
    t->SetBranchAddress("StripRDO_Side", &d.stripRDO_Side);
    t->SetBranchAddress("StripRDO_Row", &d.stripRDO_Row);
    t->SetBranchAddress("StripRDO_Strip", &d.stripRDO_Strip);

    t->SetBranchAddress("StripRDO_size", &d.stripRDO_Size);

    t->SetBranchAddress("StripRDO_LocalX", &d.stripRDOXL);
    t->SetBranchAddress("StripRDO_LocalY", &d.stripRDOYL);
    t->SetBranchAddress("StripRDO_LocalZ", &d.stripRDOZL);

    t->SetBranchAddress("StripRDO_x0", &d.stripRDOGlobX0);
    t->SetBranchAddress("StripRDO_y0", &d.stripRDOGlobY0);
    t->SetBranchAddress("StripRDO_z0", &d.stripRDOGlobZ0);

    t->SetBranchAddress("StripRDO_x1", &d.stripRDOGlobX1);
    t->SetBranchAddress("StripRDO_y1", &d.stripRDOGlobY1);
    t->SetBranchAddress("StripRDO_z1", &d.stripRDOGlobZ1);

    t->SetBranchAddress("NTruth", &d.nTruth);
    t->SetBranchAddress("TruthPx", &d.trPx);
    t->SetBranchAddress("TruthPy", &d.trPy);
    t->SetBranchAddress("TruthPz", &d.trPz);
    t->SetBranchAddress("TruthVx", &d.trVx);
    t->SetBranchAddress("TruthVy", &d.trVy);
    t->SetBranchAddress("TruthVz", &d.trVz);

    return t;
}
