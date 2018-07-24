#include <string>
#include <vector>
#include <cmath>
#include "TTree.h"
#include "TH1F.h"
#include "TH2F.h"
#include "TCanvas.h"

const int nShortStripBarrels = 2;
const double circleOver12 = 2. * M_PI / 12.;

typedef struct {
    unsigned int nPixelRDO;
    std::vector<double> *pixelRDOGlobX = 0;
    std::vector<double> *pixelRDOGlobY = 0;
    std::vector<double> *pixelRDOGlobZ = 0;
    std::vector<double> *pixelRDOXL = 0;
    std::vector<double> *pixelRDOYL = 0;
    std::vector<double> *pixelRDOZL = 0;

    std::vector<double> *pixelRDO_BarrelEndcap = 0;
    std::vector<double> *pixelRDO_Layer = 0;
    std::vector<double> *pixelRDO_Phi = 0;
    std::vector<double> *pixelRDO_Eta = 0;

    unsigned int nStripRDO;
    std::vector<int> *stripRDO_BarrelEndcap = 0;
    std::vector<int> *stripRDO_Layer = 0;
    std::vector<int> *stripRDO_Phi = 0;
    std::vector<int> *stripRDO_Eta = 0;
    std::vector<int> *stripRDO_Side = 0;
    std::vector<int> *stripRDO_Row = 0;
    std::vector<int> *stripRDO_Strip = 0;

    std::vector<int> *stripRDO_Size = 0;

    std::vector<double> *stripRDOXL = 0;
    std::vector<double> *stripRDOYL = 0;
    std::vector<double> *stripRDOZL = 0;

    std::vector<double> *stripRDOGlobX0 = 0;
    std::vector<double> *stripRDOGlobY0 = 0;
    std::vector<double> *stripRDOGlobZ0 = 0;

    std::vector<double> *stripRDOGlobX1 = 0;
    std::vector<double> *stripRDOGlobY1 = 0;
    std::vector<double> *stripRDOGlobZ1 = 0;

    unsigned int nTruth;
    std::vector<double> *trPx = 0;
    std::vector<double> *trPy = 0;
    std::vector<double> *trPz = 0;
    std::vector<double> *trVx = 0;
    std::vector<double> *trVy = 0;
    std::vector<double> *trVz = 0;
} Data; 

typedef struct {
    TH1F *PixelBarrelEndcapId;
    TH1F *PixelLayerId;
    TH1F *PixelPhiId;
    TH1F *PixelEtaId;

    TH2F *LocalPixelYX;
    TH2F *LocalPixelZX;
    TH2F *LocalPixelYZ;

    TH1F *BarrelEndcapId;
    TH1F *LayerId;
    TH1F *PhiId;
    TH1F *EtaId;
    TH1F *SideId;
    TH1F *RowId;
    TH1F *StripId;

    TH1F *LayerIdB;
    TH1F *PhiIdB;
    TH1F *EtaIdB;
    TH1F *SideIdB;
    TH1F *RowIdB;
    TH1F *RowIdBSS;
    TH1F *RowIdBLS;
    TH1F *StripIdB;
    TH1F *StripIdCMOS;
    TH1F *RowIdCMOS;

    TH1F *LayerIdEC;
    TH1F *PhiIdEC;
    TH1F *EtaIdEC;
    TH1F *SideIdEC;
    TH1F *RowIdEC;
    TH1F *StripIdEC;

    TH1F *ClusterWidth;
    TH1F *ClusterWidthCMOS;
    TH1F *ClusterWidthB;
    TH1F *ClusterWidthEC;

    TH2F *LocalSSYX;
    TH2F *LocalSSZX;
    TH2F *LocalSSYZ;

    TH2F *LocalLSYX;
    TH2F *LocalLSZX;
    TH2F *LocalLSYZ;

    TH2F *LocalCMOSYX;
    TH2F *LocalCMOSZX;
    TH2F *LocalCMOSYZ;

    TH2F *LocalECYX;
    TH2F *LocalECZX;
    TH2F *LocalECYZ;

    TH2F *RvsLayIdBarrel;
    TH2F *BRowvsLay;

    TH1F *DistFromTrack;
    TH2F *NCloseHits;
    TH2F *TrackEtaPhi;
    TH2F *NHitsEtaPhi;

    TH1F *VertexZ;
} Histograms;

typedef struct {
    std::vector<double> allPixelRDOListGlobR;
    std::vector<double> allPixelRDOListGlobZ;
    std::vector<double> barrelPixelRDOListGlobX;
    std::vector<double> barrelPixelRDOListGlobY;
    std::vector<double> barrelPixelRDOListGlobZ;

    std::vector<double> endcapPixelRDOListGlobX;
    std::vector<double> endcapPixelRDOListGlobY;
    std::vector<double> endcapPixelRDOListGlobZ;

    std::vector<double> allStripRDOListGlobR0;
    std::vector<double> allStripRDOListGlobZ0;
    std::vector<double> barrelStripRDOListGlobX0;
    std::vector<double> barrelStripRDOListGlobY0;
    std::vector<double> barrelStripRDOListGlobZ0;

} Results;

typedef struct {
    int nHits;
    std::vector<double> hitX;
    std::vector<double> hitY;
    std::vector<double> hitZ;
    std::vector<double> hitR;
    std::vector<double> hitPhi;
    std::vector<double> stripLowPhi;
    std::vector<double> stripHighPhi;
} EventDisplay;

TTree * prepareRootTree(std::string filename, Data &d);
int bookHists(Histograms &h);
int analyse(TTree &rootTree, Data &d, int nEvents, Histograms &h, Results &r, bool drawEvents, std::string histDir);
int drawPixels(Histograms &h, std::string histDir, Results &r);
int drawStrips(Histograms &h, std::string histDir, Results &r);
int drawEvent(bool *drawEvents, Data &d, EventDisplay &ev, TCanvas &evCanvas, int evNum, std::string histDir);

