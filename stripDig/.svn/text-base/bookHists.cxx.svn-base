#include "stripDig.h"

int bookHists(Histograms &h) {
//
//    Create Pixel histograms
//
    h.PixelBarrelEndcapId = new TH1F ("PixelBarrelEndcap-id", "Barrel-Endcap values from identifier", 10, -5., 5.0);
    h.PixelLayerId = new TH1F ("PixelLayer-id", "Layer-values from identifier", 10, 0., 10.0);
    h.PixelPhiId = new TH1F ("PixelPhi-id", "Phi-values from identifier", 100, 0., 100.0);
    h.PixelEtaId = new TH1F ("PixelEta-id", "Eta-values from identifier", 60, -30., 30.0);

    h.LocalPixelYX = new TH2F ("PixelYvsX", "Local hit coords Y vs X", 101, -50.5, 50.5, 101, -50.5, 50.5);
    h.LocalPixelZX = new TH2F ("PixelZvsX", "Local hit coords Z vs X", 101, -50.5, 50.5, 21, -1.05, 1.05);
    h.LocalPixelYZ = new TH2F ("PixelYvsZ", "Local hit coords Y vs Z", 21, -1.05, 1.05, 101, -50.5, 50.5);

//
//    Create Strip histograms
//
    h.BarrelEndcapId = new TH1F ("BarrelEndcap-id", "Barrel-Endcap values from identifier", 10, -5., 5.0);
    h.LayerId = new TH1F ("Layer-id", "Layer-values from identifier", 10, 0., 10.0);
    h.PhiId = new TH1F ("Phi-id", "Phi-values from identifier", 100, 0., 100.0);
    h.EtaId = new TH1F ("Eta-id", "Eta-values from identifier", 40, -20., 20.0);
    h.SideId = new TH1F ("Side-id", "Side-values from identifier", 5, 0., 5);
    h.RowId = new TH1F ("Row-id", "Row-values from identifier", 10, 0., 10.0);
    h.StripId = new TH1F ("Strip-id", "Strip-values from identifier", 2000, 0., 2000.0);

    h.LayerIdB = new TH1F ("Layer-idBarrel", "Barrel Layer-values from identifier", 10, 0., 10.0);
    h.PhiIdB = new TH1F ("Phi-idBarrel", "Barrel Phi-values from identifier", 100, 0., 100.0);
    h.EtaIdB = new TH1F ("Eta-idBarrel", "Barrel Eta-values from identifier", 40, -20., 20.0);
    h.SideIdB = new TH1F ("Side-idBarrel", "Barrel Side-values from identifier", 5, 0., 5);
    h.RowIdB = new TH1F ("Row-idBarrel", "Barrel Row-values from identifier", 10, 0., 10.0);
    h.RowIdBSS = new TH1F ("Row-idBarrelSS", "Barrel Row-values from identifier, SS sensors", 10, 0., 10.0);
    h.RowIdBLS = new TH1F ("Row-idBarrelLS", "Barrel Row-values from identifier, LS sensors", 10, 0., 10.0);
    h.StripIdB = new TH1F ("Strip-idBarrel", "Barrel Strip-values from identifier", 2000, 0., 2000.0);
    h.RowIdCMOS = new TH1F ("Row-id", "Row-values from identifier", 2010, -10., 2000.0);
    h.StripIdCMOS = new TH1F ("Strip-id", "Strip-values from identifier", 2000, 0., 2000.0);

    h.LayerIdEC = new TH1F ("Layer-idEC", "EC Layer-values from identifier", 10, 0., 10.0);
    h.PhiIdEC = new TH1F ("Phi-idEC", "EC Phi-values from identifier", 100, 0., 100.0);
    h.EtaIdEC = new TH1F ("Eta-idEC", "EC Eta-values from identifier", 30, -15., 15.0);
    h.SideIdEC = new TH1F ("Side-idEC", "EC Side-values from identifier", 5, 0., 5);
    h.RowIdEC = new TH1F ("Row-idEC", "EC Row-values from identifier", 10, 0., 10.0);
    h.StripIdEC = new TH1F ("Strip-idEC", "EC Strip-values from identifier", 3000, 0., 3000.0);

    h.ClusterWidth = new TH1F ("Strip-cluster-width", "Strip Cluster Widths", 20, 0., 20.0);
    h.ClusterWidthCMOS = new TH1F ("CMOS-phi-cluster-width", "CMOS Cluster Width", 20, 0., 20.0);
    h.ClusterWidthB = new TH1F ("Strip-cluster-width-B", "Barrel Strip Cluster Widths", 20, 0., 20.0);
    h.ClusterWidthEC = new TH1F ("Strip-cluster-width-EC", "EC Cluster Widths", 20, 0., 20.0);

    h.LocalSSYX = new TH2F ("SSYvsX", "Local hit-strip coords Y vs X", 101, -50.5, 50.5, 101, -50.5, 50.5);
    h.LocalSSZX = new TH2F ("SSZvsX", "Local hit-strip coords Z vs X", 101, -50.5, 50.5, 21, -1.05, 1.05);
    h.LocalSSYZ = new TH2F ("SSYvsZ", "Local hit-strip coords Y vs Z", 21, -1.05, 1.05, 101, -50.5, 50.5);

    h.LocalLSYX = new TH2F ("LSYvsX", "Local hit-strip coords Y vs X", 101, -50.5, 50.5, 101, -50.5, 50.5);
    h.LocalLSZX = new TH2F ("LSZvsX", "Local hit-strip coords Z vs X", 101, -50.5, 50.5, 21, -1.05, 1.05);
    h.LocalLSYZ = new TH2F ("LSYvsZ", "Local hit-strip coords Y vs Z", 21, -1.05, 1.05, 101, -50.5, 50.5);

    h.LocalCMOSYX = new TH2F ("CMOS_YvsX", "Local hit-strip coords Y vs X", 101, -50.5, 50.5, 101, -50.5, 50.5);
    h.LocalCMOSZX = new TH2F ("CMOS_ZvsX", "Local hit-strip coords Z vs X", 101, -50.5, 50.5, 21, -1.05, 1.05);
    h.LocalCMOSYZ = new TH2F ("CMOS_YvsZ", "Local hit-strip coords Y vs Z", 21, -1.05, 1.05, 101, -50.5, 50.5);

    h.LocalECYX = new TH2F ("ECYvsX", "Local hit-strip coords Y vs X", 650, 350., 1000., 151, -75.5, 75.5);
    h.LocalECZX = new TH2F ("ECZvsX", "Local hit-strip coords Z vs X", 650, 350., 1000., 21, -1.05, 1.05);
    h.LocalECYZ = new TH2F ("ECYvsZ", "Local hit-strip coords Y vs Z", 21, -1.05, 1.05, 151, -75.5, 75.5);

    h.RvsLayIdBarrel = new TH2F ("RvsLayB", "Radius vs layer id, barrel", 10, 0., 10., 110, 0., 1100.);
    h.BRowvsLay = new TH2F ("BRowvsLay", "Row ID vs Layer id", 10, 0., 10., 100, 0., 100.);

    h.DistFromTrack = new TH1F ("DistFromTrack", "Distance of hits from truth track", 100, 0.0, 100.);
    h.NCloseHits = new TH2F ("NCloseHits", "N close hits vs. eta", 200, 0.9, 1.3, 30, 0.0, 30.0);
    h.TrackEtaPhi = new TH2F ("TrackEtaPhi", "Number of tracks at eta (y) and phi-modulo-12 (x)", 
                              50, 0., circleOver12, 100, 0.9, 1.2);
    h.NHitsEtaPhi = new TH2F ("NHitsEtaPhi", "Number of hits at eta (y) and phi-modulo-12 (x)", 
                              50, 0., circleOver12, 100, 0.9, 1.2);

    h.VertexZ = new TH1F ("VertexZ", "Vertex z distribution", 40, -200., 200.);
 
    return 1;
}
