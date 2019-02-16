#include <iostream>
#include "TROOT.h"
#include "TFile.h"
#include "TH1D.h"
#include "TCanvas.h"
#include "TTree.h"
#include "TGraph.h"
#include "TMultiGraph.h"
#include "TLegend.h"
#include "TGraphErrors.h"
#include "TPostScript.h"
#include <fstream>
#include <string>
#include <math.h>
const char* out_path = "/eos/user/t/tkar/www/TTT/plots/resolution"; 
int write_topdf(const char* output_file_name = "June6ResoVseta_VarPt_SingleMuon")
{

	char out_file_open[1023];
        sprintf(out_file_open,"%s/%s.pdf(",out_path,output_file_name);
        char out_file_[1023];
        sprintf(out_file_,"%s/%s.pdf",out_path,output_file_name);
        char out_file_close[1023];
        sprintf(out_file_close,"%s/%s.pdf)",out_path,output_file_name);
	
	TFile* f = TFile::Open("June6Reso2GeVMu.root");
	//TFile* f = TFile::Open("June6Reso2GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h_dp 	= (TH1D*)f->Get("h_sigmadp");
	TH1D* h_invpt 	= (TH1D*)f->Get("h_sigma_invPt");
	TH1D* h_phi	= (TH1D*)f->Get("h_sigma_phi");
	TH1D* h_theta	= (TH1D*)f->Get("h_sigma_theta");
	TH1D* h_eta	= (TH1D*)f->Get("h_sigma_eta");
	TH1D* h_z0	= (TH1D*)f->Get("h_sigma_z0");
	TH1D* h_dca	= (TH1D*)f->Get("h_sigma_dca");

	TFile* f0 = TFile::Open("June6Reso5GeVMu.root");
	//TFile* f0 = TFile::Open("June6Reso5GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h0_dp 	= (TH1D*)f0->Get("h_sigmadp");
	TH1D* h0_invpt 	= (TH1D*)f0->Get("h_sigma_invPt");
	TH1D* h0_phi	= (TH1D*)f0->Get("h_sigma_phi");
	TH1D* h0_theta	= (TH1D*)f0->Get("h_sigma_theta");
	TH1D* h0_eta	= (TH1D*)f0->Get("h_sigma_eta");
	TH1D* h0_z0	= (TH1D*)f0->Get("h_sigma_z0");
	TH1D* h0_dca	= (TH1D*)f0->Get("h_sigma_dca");

	TFile* f1 = TFile::Open("June6Reso10GeVMu.root");
	//TFile* f1 = TFile::Open("June6Reso10GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h1_dp 	= (TH1D*)f1->Get("h_sigmadp");
	TH1D* h1_invpt 	= (TH1D*)f1->Get("h_sigma_invPt");
	TH1D* h1_phi	= (TH1D*)f1->Get("h_sigma_phi");
	TH1D* h1_theta	= (TH1D*)f1->Get("h_sigma_theta");
	TH1D* h1_eta	= (TH1D*)f1->Get("h_sigma_eta");
	TH1D* h1_z0	= (TH1D*)f1->Get("h_sigma_z0");
	TH1D* h1_dca	= (TH1D*)f1->Get("h_sigma_dca");

	TFile* f2 = TFile::Open("June6Reso20GeVMu.root");
	//TFile* f2 = TFile::Open("June6Reso20GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h2_dp 	= (TH1D*)f2->Get("h_sigmadp");
	TH1D* h2_invpt 	= (TH1D*)f2->Get("h_sigma_invPt");
	TH1D* h2_phi	= (TH1D*)f2->Get("h_sigma_phi");
	TH1D* h2_theta	= (TH1D*)f2->Get("h_sigma_theta");
	TH1D* h2_eta	= (TH1D*)f2->Get("h_sigma_eta");
	TH1D* h2_z0	= (TH1D*)f2->Get("h_sigma_z0");
	TH1D* h2_dca	= (TH1D*)f2->Get("h_sigma_dca");

	TFile* f3 = TFile::Open("June6Reso30GeVMu.root");
	//TFile* f3 = TFile::Open("June6Reso30GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h3_dp 	= (TH1D*)f3->Get("h_sigmadp");
	TH1D* h3_invpt 	= (TH1D*)f3->Get("h_sigma_invPt");
	TH1D* h3_phi	= (TH1D*)f3->Get("h_sigma_phi");
	TH1D* h3_theta	= (TH1D*)f3->Get("h_sigma_theta");
	TH1D* h3_eta	= (TH1D*)f3->Get("h_sigma_eta");
	TH1D* h3_z0	= (TH1D*)f3->Get("h_sigma_z0");
	TH1D* h3_dca	= (TH1D*)f3->Get("h_sigma_dca");

	TFile* f4 = TFile::Open("June6Reso40GeVMu.root");
	//TFile* f4 = TFile::Open("June6Reso40GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h4_dp 	= (TH1D*)f4->Get("h_sigmadp");
	TH1D* h4_invpt 	= (TH1D*)f4->Get("h_sigma_invPt");
	TH1D* h4_phi	= (TH1D*)f4->Get("h_sigma_phi");
	TH1D* h4_theta	= (TH1D*)f4->Get("h_sigma_theta");
	TH1D* h4_eta	= (TH1D*)f4->Get("h_sigma_eta");
	TH1D* h4_z0	= (TH1D*)f4->Get("h_sigma_z0");
	TH1D* h4_dca	= (TH1D*)f4->Get("h_sigma_dca");

	TFile* f5 = TFile::Open("June6Reso50GeVMu.root");
	//TFile* f5 = TFile::Open("June6Reso50GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h5_dp 	= (TH1D*)f5->Get("h_sigmadp");
	TH1D* h5_invpt 	= (TH1D*)f5->Get("h_sigma_invPt");
	TH1D* h5_phi	= (TH1D*)f5->Get("h_sigma_phi");
	TH1D* h5_theta	= (TH1D*)f5->Get("h_sigma_theta");
	TH1D* h5_eta	= (TH1D*)f5->Get("h_sigma_eta");
	TH1D* h5_z0	= (TH1D*)f5->Get("h_sigma_z0");
	TH1D* h5_dca	= (TH1D*)f5->Get("h_sigma_dca");

	TFile* f6 = TFile::Open("June6Reso60GeVMu.root");
	//TFile* f6 = TFile::Open("June6Reso60GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h6_dp 	= (TH1D*)f6->Get("h_sigmadp");
	TH1D* h6_invpt 	= (TH1D*)f6->Get("h_sigma_invPt");
	TH1D* h6_phi	= (TH1D*)f6->Get("h_sigma_phi");
	TH1D* h6_theta	= (TH1D*)f6->Get("h_sigma_theta");
	TH1D* h6_eta	= (TH1D*)f6->Get("h_sigma_eta");
	TH1D* h6_z0	= (TH1D*)f6->Get("h_sigma_z0");
	TH1D* h6_dca	= (TH1D*)f6->Get("h_sigma_dca");

	TFile* f7 = TFile::Open("June6Reso70GeVMu.root");
	//TFile* f7 = TFile::Open("June6Reso70GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h7_dp 	= (TH1D*)f7->Get("h_sigmadp");
	TH1D* h7_invpt 	= (TH1D*)f7->Get("h_sigma_invPt");
	TH1D* h7_phi	= (TH1D*)f7->Get("h_sigma_phi");
	TH1D* h7_theta	= (TH1D*)f7->Get("h_sigma_theta");
	TH1D* h7_eta	= (TH1D*)f7->Get("h_sigma_eta");
	TH1D* h7_z0	= (TH1D*)f7->Get("h_sigma_z0");
	TH1D* h7_dca	= (TH1D*)f7->Get("h_sigma_dca");

	TFile* f8 = TFile::Open("June6Reso80GeVMu.root");
	//TFile* f8 = TFile::Open("June6Reso80GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h8_dp 	= (TH1D*)f8->Get("h_sigmadp");
	TH1D* h8_invpt 	= (TH1D*)f8->Get("h_sigma_invPt");
	TH1D* h8_phi	= (TH1D*)f8->Get("h_sigma_phi");
	TH1D* h8_theta	= (TH1D*)f8->Get("h_sigma_theta");
	TH1D* h8_eta	= (TH1D*)f8->Get("h_sigma_eta");
	TH1D* h8_z0	= (TH1D*)f8->Get("h_sigma_z0");
	TH1D* h8_dca	= (TH1D*)f8->Get("h_sigma_dca");

	TFile* f9 = TFile::Open("June6Reso90GeVMu.root");
	//TFile* f9 = TFile::Open("June6Reso90GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h9_dp 	= (TH1D*)f9->Get("h_sigmadp");
	TH1D* h9_invpt 	= (TH1D*)f9->Get("h_sigma_invPt");
	TH1D* h9_phi	= (TH1D*)f9->Get("h_sigma_phi");
	TH1D* h9_theta	= (TH1D*)f9->Get("h_sigma_theta");
	TH1D* h9_eta	= (TH1D*)f9->Get("h_sigma_eta");
	TH1D* h9_z0	= (TH1D*)f9->Get("h_sigma_z0");
	TH1D* h9_dca	= (TH1D*)f9->Get("h_sigma_dca");

	TFile* f10 = TFile::Open("June6Reso100GeVMu.root");
	//TFile* f10 = TFile::Open("June6Reso100GeVPi.root");
	//gStyle->SetOptStat(0);
	TH1D* h10_dp 	= (TH1D*)f10->Get("h_sigmadp");
	TH1D* h10_invpt	= (TH1D*)f10->Get("h_sigma_invPt");
	TH1D* h10_phi	= (TH1D*)f10->Get("h_sigma_phi");
	TH1D* h10_theta	= (TH1D*)f10->Get("h_sigma_theta");
	TH1D* h10_eta	= (TH1D*)f10->Get("h_sigma_eta");
	TH1D* h10_z0	= (TH1D*)f10->Get("h_sigma_z0");
	TH1D* h10_dca	= (TH1D*)f10->Get("h_sigma_dca");
	
	h_dp->SetStats(0);
	h0_dp->SetStats(0);
	h1_dp->SetStats(0);
	h2_dp->SetStats(0);
	h3_dp->SetStats(0);
	h4_dp->SetStats(0);
	h5_dp->SetStats(0);	
	h6_dp->SetStats(0);
	h7_dp->SetStats(0);
	h8_dp->SetStats(0);
	h9_dp->SetStats(0);
	h10_dp->SetStats(0);
	
	h_invpt->SetStats(0);
        h0_invpt->SetStats(0);
        h1_invpt->SetStats(0);
        h2_invpt->SetStats(0);
        h3_invpt->SetStats(0);
        h4_invpt->SetStats(0);
        h5_invpt->SetStats(0);
        h6_invpt->SetStats(0);
        h7_invpt->SetStats(0);
        h8_invpt->SetStats(0);
        h9_invpt->SetStats(0);
        h10_invpt->SetStats(0);
	
	h_phi->SetStats(0);
        h0_phi->SetStats(0);
        h1_phi->SetStats(0);
        h2_phi->SetStats(0);
        h3_phi->SetStats(0);
        h4_phi->SetStats(0);
        h5_phi->SetStats(0);
        h6_phi->SetStats(0);
        h7_phi->SetStats(0);
        h8_phi->SetStats(0);
        h9_phi->SetStats(0);
        h10_phi->SetStats(0);

	h_theta->SetStats(0);
        h0_theta->SetStats(0);
        h1_theta->SetStats(0);
        h2_theta->SetStats(0);
        h3_theta->SetStats(0);
        h4_theta->SetStats(0);
        h5_theta->SetStats(0);
        h6_theta->SetStats(0);
        h7_theta->SetStats(0);
        h8_theta->SetStats(0);
        h9_theta->SetStats(0);
        h10_theta->SetStats(0);
	
	h_eta->SetStats(0);
        h0_eta->SetStats(0);
        h1_eta->SetStats(0);
        h2_eta->SetStats(0);
        h3_eta->SetStats(0);
        h4_eta->SetStats(0);
        h5_eta->SetStats(0);
        h6_eta->SetStats(0);
        h7_eta->SetStats(0);
        h8_eta->SetStats(0);
        h9_eta->SetStats(0);
        h10_eta->SetStats(0);

	h_z0->SetStats(0);
        h0_z0->SetStats(0);
        h1_z0->SetStats(0);
        h2_z0->SetStats(0);
        h3_z0->SetStats(0);
        h4_z0->SetStats(0);
        h5_z0->SetStats(0);
        h6_z0->SetStats(0);
        h7_z0->SetStats(0);
        h8_z0->SetStats(0);
        h9_z0->SetStats(0);
        h10_z0->SetStats(0);

	h_dca->SetStats(0);
        h0_dca->SetStats(0);
        h1_dca->SetStats(0);
        h2_dca->SetStats(0);
        h3_dca->SetStats(0);
        h4_dca->SetStats(0);
        h5_dca->SetStats(0);
        h6_dca->SetStats(0);
        h7_dca->SetStats(0);
        h8_dca->SetStats(0);
        h9_dca->SetStats(0);
        h10_dca->SetStats(0);

	// SET Markercolour
	h_dp->SetMarkerColor(kViolet+1);
	h_invpt->SetMarkerColor(kViolet+1);
	h_phi->SetMarkerColor(kViolet+1);
	h_theta->SetMarkerColor(kViolet+1);
	h_eta->SetMarkerColor(kViolet+1);
	h_z0->SetMarkerColor(kViolet+1);
	h_dca->SetMarkerColor(kViolet+1);

	h0_dp->SetMarkerColor(kCyan+2);
        h0_invpt->SetMarkerColor(kCyan+2);
        h0_phi->SetMarkerColor(kCyan+2);
        h0_theta->SetMarkerColor(kCyan+2);
        h0_eta->SetMarkerColor(kCyan+2);
        h0_z0->SetMarkerColor(kCyan+2);
        h0_dca->SetMarkerColor(kCyan+2);
	
	h1_dp->SetMarkerColor(kRed-7);
        h1_invpt->SetMarkerColor(kRed-7);
        h1_phi->SetMarkerColor(kRed-7);
        h1_theta->SetMarkerColor(kRed-7);
        h1_eta->SetMarkerColor(kRed-7);
        h1_z0->SetMarkerColor(kRed-7);
        h1_dca->SetMarkerColor(kRed-7);
	
	h2_dp->SetMarkerColor(kBlue+1);
        h2_invpt->SetMarkerColor(kBlue+1);
        h2_phi->SetMarkerColor(kBlue+1);
        h2_theta->SetMarkerColor(kBlue+1);
        h2_eta->SetMarkerColor(kBlue+1);
        h2_z0->SetMarkerColor(kBlue+1);
        h2_dca->SetMarkerColor(kBlue+1);

	h3_dp->SetMarkerColor(kGreen-4);
        h3_invpt->SetMarkerColor(kGreen-4);
        h3_phi->SetMarkerColor(kGreen-4);
        h3_theta->SetMarkerColor(kGreen-4);
        h3_eta->SetMarkerColor(kGreen-4);
        h3_z0->SetMarkerColor(kGreen-4);
        h3_dca->SetMarkerColor(kGreen-4);

	h4_dp->SetMarkerColor(kYellow);
        h4_invpt->SetMarkerColor(kYellow);
        h4_phi->SetMarkerColor(kYellow);
        h4_theta->SetMarkerColor(kYellow);
        h4_eta->SetMarkerColor(kYellow);
        h4_z0->SetMarkerColor(kYellow);
        h4_dca->SetMarkerColor(kYellow);

	h5_dp->SetMarkerColor(kOrange-2);
        h5_invpt->SetMarkerColor(kOrange-2);
        h5_phi->SetMarkerColor(kOrange-2);
        h5_theta->SetMarkerColor(kOrange-2);
        h5_eta->SetMarkerColor(kOrange-2);
        h5_z0->SetMarkerColor(kOrange-2);
        h5_dca->SetMarkerColor(kOrange-2);

	h6_dp->SetMarkerColor(kRed+1);
        h6_invpt->SetMarkerColor(kRed+1);
        h6_phi->SetMarkerColor(kRed+1);
        h6_theta->SetMarkerColor(kRed+1);
        h6_eta->SetMarkerColor(kRed+1);
        h6_z0->SetMarkerColor(kRed+1);
        h6_dca->SetMarkerColor(kRed+1);

	h7_dp->SetMarkerColor(kAzure+8);
        h7_invpt->SetMarkerColor(kAzure+8);
        h7_phi->SetMarkerColor(kAzure+8);
        h7_theta->SetMarkerColor(kAzure+8);
        h7_eta->SetMarkerColor(kAzure+8);
        h7_z0->SetMarkerColor(kAzure+8);
        h7_dca->SetMarkerColor(kAzure+8);

	h8_dp->SetMarkerColor(kMagenta-4);
        h8_invpt->SetMarkerColor(kMagenta-4);
        h8_phi->SetMarkerColor(kMagenta-4);
        h8_theta->SetMarkerColor(kMagenta-4);
        h8_eta->SetMarkerColor(kMagenta-4);
        h8_z0->SetMarkerColor(kMagenta-4);
        h8_dca->SetMarkerColor(kMagenta-4);

	h9_dp->SetMarkerColor(kGreen+3);
        h9_invpt->SetMarkerColor(kGreen+3);
        h9_phi->SetMarkerColor(kGreen+3);
        h9_theta->SetMarkerColor(kGreen+3);
        h9_eta->SetMarkerColor(kGreen+3);
        h9_z0->SetMarkerColor(kGreen+3);
        h9_dca->SetMarkerColor(kGreen+3);

	h10_dp->SetMarkerColor(kBlack);
        h10_invpt->SetMarkerColor(kBlack);
        h10_phi->SetMarkerColor(kBlack);
        h10_theta->SetMarkerColor(kBlack);
        h10_eta->SetMarkerColor(kBlack);
        h10_z0->SetMarkerColor(kBlack);
        h10_dca->SetMarkerColor(kBlack);

	//Marker Size	
	h_dp->SetMarkerSize(1.8);
	h_invpt->SetMarkerSize(1.8);
	h_phi->SetMarkerSize(1.8);
	h_theta->SetMarkerSize(1.8);
	h_eta->SetMarkerSize(1.8);
	h_z0->SetMarkerSize(1.8);
	h_dca->SetMarkerSize(1.8);

	h0_dp->SetMarkerSize(1.8);
        h0_invpt->SetMarkerSize(1.8);
        h0_phi->SetMarkerSize(1.8);
        h0_theta->SetMarkerSize(1.8);
        h0_eta->SetMarkerSize(1.8);
        h0_z0->SetMarkerSize(1.8);
        h0_dca->SetMarkerSize(1.8);
	
	h1_dp->SetMarkerSize(1.8);
        h1_invpt->SetMarkerSize(1.8);
        h1_phi->SetMarkerSize(1.8);
        h1_theta->SetMarkerSize(1.8);
        h1_eta->SetMarkerSize(1.8);
        h1_z0->SetMarkerSize(1.8);
        h1_dca->SetMarkerSize(1.8);
	
	h2_dp->SetMarkerSize(1.8);
        h2_invpt->SetMarkerSize(1.8);
        h2_phi->SetMarkerSize(1.8);
        h2_theta->SetMarkerSize(1.8);
        h2_eta->SetMarkerSize(1.8);
        h2_z0->SetMarkerSize(1.8);
        h2_dca->SetMarkerSize(1.8);

	h3_dp->SetMarkerSize(1.8);
        h3_invpt->SetMarkerSize(1.8);
        h3_phi->SetMarkerSize(1.8);
        h3_theta->SetMarkerSize(1.8);
        h3_eta->SetMarkerSize(1.8);
        h3_z0->SetMarkerSize(1.8);
        h3_dca->SetMarkerSize(1.8);

	h4_dp->SetMarkerSize(1.8);
        h4_invpt->SetMarkerSize(1.8);
        h4_phi->SetMarkerSize(1.8);
        h4_theta->SetMarkerSize(1.8);
        h4_eta->SetMarkerSize(1.8);
        h4_z0->SetMarkerSize(1.8);
        h4_dca->SetMarkerSize(1.8);

	h5_dp->SetMarkerSize(1.8);
        h5_invpt->SetMarkerSize(1.8);
        h5_phi->SetMarkerSize(1.8);
        h5_theta->SetMarkerSize(1.8);
        h5_eta->SetMarkerSize(1.8);
        h5_z0->SetMarkerSize(1.8);
        h5_dca->SetMarkerSize(1.8);

	h6_dp->SetMarkerSize(1.8);
        h6_invpt->SetMarkerSize(1.8);
        h6_phi->SetMarkerSize(1.8);
        h6_theta->SetMarkerSize(1.8);
        h6_eta->SetMarkerSize(1.8);
        h6_z0->SetMarkerSize(1.8);
        h6_dca->SetMarkerSize(1.8);

	h7_dp->SetMarkerSize(1.8);
        h7_invpt->SetMarkerSize(1.8);
        h7_phi->SetMarkerSize(1.8);
        h7_theta->SetMarkerSize(1.8);
        h7_eta->SetMarkerSize(1.8);
        h7_z0->SetMarkerSize(1.8);
        h7_dca->SetMarkerSize(1.8);

	h8_dp->SetMarkerSize(1.8);
        h8_invpt->SetMarkerSize(1.8);
        h8_phi->SetMarkerSize(1.8);
        h8_theta->SetMarkerSize(1.8);
        h8_eta->SetMarkerSize(1.8);
        h8_z0->SetMarkerSize(1.8);
        h8_dca->SetMarkerSize(1.8);

	h9_dp->SetMarkerSize(1.8);
        h9_invpt->SetMarkerSize(1.8);
        h9_phi->SetMarkerSize(1.8);
        h9_theta->SetMarkerSize(1.8);
        h9_eta->SetMarkerSize(1.8);
        h9_z0->SetMarkerSize(1.8);
        h9_dca->SetMarkerSize(1.8);

	h10_dp->SetMarkerSize(1.8);
        h10_invpt->SetMarkerSize(1.8);
        h10_phi->SetMarkerSize(1.8);
        h10_theta->SetMarkerSize(1.8);
        h10_eta->SetMarkerSize(1.8);
        h10_z0->SetMarkerSize(1.8);
        h10_dca->SetMarkerSize(1.8);


/*	h_dp->SetTitle("P_{t}= 2GeV/c");
	h_invpt->SetTitle("P_{t}= 2GeV/c");
	h_phi->SetTitle("P_{t}= 2GeV/c");
	h_theta->SetTitle("P_{t}= 2GeV/c");
	h_eta->SetTitle("P_{t}= 2GeV/c");
	h_z0->SetTitle("P_{t}= 2GeV/c");
	h_dca->SetTitle("P_{t}= 2GeV/c");

	h0_dp->SetTitle("P_{t}= 5GeV/c");
        h0_invpt->SetTitle("P_{t}= 5GeV/c");
        h0_phi->SetTitle("P_{t}= 5GeV/c");
        h0_theta->SetTitle("P_{t}= 5GeV/c");
        h0_eta->SetTitle("P_{t}= 5GeV/c");
        h0_z0->SetTitle("P_{t}= 5GeV/c");
        h0_dca->SetTitle("P_{t}= 5GeV/c");
	
	h1_dp->SetTitle("P_{t}= 10GeV/c");
        h1_invpt->SetTitle("P_{t}= 10GeV/c");
        h1_phi->SetTitle("P_{t}= 10GeV/c");
        h1_theta->SetTitle("P_{t}= 10GeV/c");
        h1_eta->SetTitle("P_{t}= 10GeV/c");
        h1_z0->SetTitle("P_{t}= 10GeV/c");
        h1_dca->SetTitle("P_{t}= 10GeV/c");
	
	h2_dp->SetTitle("P_{t}= 20GeV/c");
        h2_invpt->SetTitle("P_{t}= 20GeV/c");
        h2_phi->SetTitle("P_{t}= 20GeV/c");
        h2_theta->SetTitle("P_{t}= 20GeV/c");
        h2_eta->SetTitle("P_{t}= 20GeV/c");
        h2_z0->SetTitle("P_{t}= 20GeV/c");
        h2_dca->SetTitle("P_{t}= 20GeV/c");

	h3_dp->SetTitle("P_{t}= 30GeV/c");
        h3_invpt->SetTitle("P_{t}= 30GeV/c");
        h3_phi->SetTitle("P_{t}= 30GeV/c");
        h3_theta->SetTitle("P_{t}= 30GeV/c");
        h3_eta->SetTitle("P_{t}= 30GeV/c");
        h3_z0->SetTitle("P_{t}= 30GeV/c");
        h3_dca->SetTitle("P_{t}= 30GeV/c");

	h4_dp->SetTitle("P_{t}= 40GeV/c");
        h4_invpt->SetTitle("P_{t}= 40GeV/c");
        h4_phi->SetTitle("P_{t}= 40GeV/c");
        h4_theta->SetTitle("P_{t}= 40GeV/c");
        h4_eta->SetTitle("P_{t}= 40GeV/c");
        h4_z0->SetTitle("P_{t}= 40GeV/c");
        h4_dca->SetTitle("P_{t}= 40GeV/c");

	h5_dp->SetTitle("P_{t}= 50GeV/c");
        h5_invpt->SetTitle("P_{t}= 50GeV/c");
        h5_phi->SetTitle("P_{t}= 50GeV/c");
        h5_theta->SetTitle("P_{t}= 50GeV/c");
        h5_eta->SetTitle("P_{t}= 50GeV/c");
        h5_z0->SetTitle("P_{t}= 50GeV/c");
        h5_dca->SetTitle("P_{t}= 50GeV/c");

	h6_dp->SetTitle("P_{t}= 60GeV/c");
        h6_invpt->SetTitle("P_{t}= 60GeV/c");
        h6_phi->SetTitle("P_{t}= 60GeV/c");
        h6_theta->SetTitle("P_{t}= 60GeV/c");
        h6_eta->SetTitle("P_{t}= 60GeV/c");
        h6_z0->SetTitle("P_{t}= 60GeV/c");
        h6_dca->SetTitle("P_{t}= 60GeV/c");

	h7_dp->SetTitle("P_{t}= 70GeV/c");
        h7_invpt->SetTitle("P_{t}= 70GeV/c");
        h7_phi->SetTitle("P_{t}= 70GeV/c");
        h7_theta->SetTitle("P_{t}= 70GeV/c");
        h7_eta->SetTitle("P_{t}= 70GeV/c");
        h7_z0->SetTitle("P_{t}= 70GeV/c");
        h7_dca->SetTitle("P_{t}= 70GeV/c");

	h8_dp->SetTitle("P_{t}= 80GeV/c");
        h8_invpt->SetTitle("P_{t}= 80GeV/c");
        h8_phi->SetTitle("P_{t}= 80GeV/c");
        h8_theta->SetTitle("P_{t}= 80GeV/c");
        h8_eta->SetTitle("P_{t}= 80GeV/c");
        h8_z0->SetTitle("P_{t}= 80GeV/c");
        h8_dca->SetTitle("P_{t}= 80GeV/c");

	h9_dp->SetTitle("P_{t}= 90GeV/c");
        h9_invpt->SetTitle("P_{t}= 90GeV/c");
        h9_phi->SetTitle("P_{t}= 90GeV/c");
        h9_theta->SetTitle("P_{t}= 90GeV/c");
        h9_eta->SetTitle("P_{t}= 90GeV/c");
        h9_z0->SetTitle("P_{t}= 90GeV/c");
        h9_dca->SetTitle("P_{t}= 90GeV/c");

	h10_dp->SetTitle("P_{t}= 100GeV/c");
        h10_invpt->SetTitle("P_{t}= 100GeV/c");
        h10_phi->SetTitle("P_{t}= 100GeV/c");
        h10_theta->SetTitle("P_{t}= 100GeV/c");
        h10_eta->SetTitle("P_{t}= 100GeV/c");
        h10_z0->SetTitle("P_{t}= 100GeV/c");
        h10_dca->SetTitle("P_{t}= 100GeV/c");

*/

	TCanvas * C = new TCanvas();
	gStyle->SetOptStat(0);
	h_dp->Draw();
	C->Print(out_file_open, "pdf");
	h0_dp->Draw();
	C->Print(out_file_,"pdf");
	h1_dp->Draw();
	C->Print(out_file_,"pdf");
	h2_dp->Draw();
	C->Print(out_file_,"pdf");
	h3_dp->Draw();
	C->Print(out_file_,"pdf");
	h4_dp->Draw();
	C->Print(out_file_,"pdf");
	h5_dp->Draw();
	C->Print(out_file_,"pdf");
	h6_dp->Draw();
	C->Print(out_file_,"pdf");
	h7_dp->Draw();
	C->Print(out_file_,"pdf");
	h8_dp->Draw();
	C->Print(out_file_,"pdf");
	h9_dp->Draw();
	C->Print(out_file_,"pdf");
	h10_dp->Draw();
	C->Print(out_file_,"pdf");
	
	h_invpt->Draw();
	C->Print(out_file_, "pdf");
	h0_invpt->Draw();
	C->Print(out_file_,"pdf");
	h1_invpt->Draw();
	C->Print(out_file_,"pdf");
	h2_invpt->Draw();
	C->Print(out_file_,"pdf");
	h3_invpt->Draw();
	C->Print(out_file_,"pdf");
	h4_invpt->Draw();
	C->Print(out_file_,"pdf");
	h5_invpt->Draw();
	C->Print(out_file_,"pdf");
	h6_invpt->Draw();
	C->Print(out_file_,"pdf");
	h7_invpt->Draw();
	C->Print(out_file_,"pdf");
	h8_invpt->Draw();
	C->Print(out_file_,"pdf");
	h9_invpt->Draw();
	C->Print(out_file_,"pdf");
	h10_invpt->Draw();
	C->Print(out_file_,"pdf");

	h_phi->Draw();
	C->Print(out_file_, "pdf");
	h0_phi->Draw();
	C->Print(out_file_,"pdf");
	h1_phi->Draw();
	C->Print(out_file_,"pdf");
	h2_phi->Draw();
	C->Print(out_file_,"pdf");
	h3_phi->Draw();
	C->Print(out_file_,"pdf");
	h4_phi->Draw();
	C->Print(out_file_,"pdf");
	h5_phi->Draw();
	C->Print(out_file_,"pdf");
	h6_phi->Draw();
	C->Print(out_file_,"pdf");
	h7_phi->Draw();
	C->Print(out_file_,"pdf");
	h8_phi->Draw();
	C->Print(out_file_,"pdf");
	h9_phi->Draw();
	C->Print(out_file_,"pdf");
	h10_phi->Draw();
	C->Print(out_file_,"pdf");

	h_theta->Draw();
	C->Print(out_file_, "pdf");
	h0_theta->Draw();
	C->Print(out_file_,"pdf");
	h1_theta->Draw();
	C->Print(out_file_,"pdf");
	h2_theta->Draw();
	C->Print(out_file_,"pdf");
	h3_theta->Draw();
	C->Print(out_file_,"pdf");
	h4_theta->Draw();
	C->Print(out_file_,"pdf");
	h5_theta->Draw();
	C->Print(out_file_,"pdf");
	h6_theta->Draw();
	C->Print(out_file_,"pdf");
	h7_theta->Draw();
	C->Print(out_file_,"pdf");
	h8_theta->Draw();
	C->Print(out_file_,"pdf");
	h9_theta->Draw();
	C->Print(out_file_,"pdf");
	h10_theta->Draw();
	C->Print(out_file_,"pdf");

	h_eta->Draw();
	C->Print(out_file_, "pdf");
	h0_eta->Draw();
	C->Print(out_file_,"pdf");
	h1_eta->Draw();
	C->Print(out_file_,"pdf");
	h2_eta->Draw();
	C->Print(out_file_,"pdf");
	h3_eta->Draw();
	C->Print(out_file_,"pdf");
	h4_eta->Draw();
	C->Print(out_file_,"pdf");
	h5_eta->Draw();
	C->Print(out_file_,"pdf");
	h6_eta->Draw();
	C->Print(out_file_,"pdf");
	h7_eta->Draw();
	C->Print(out_file_,"pdf");
	h8_eta->Draw();
	C->Print(out_file_,"pdf");
	h9_eta->Draw();
	C->Print(out_file_,"pdf");
	h10_eta->Draw();
	C->Print(out_file_,"pdf");

	h_z0->Draw();
	C->Print(out_file_, "pdf");
	h0_z0->Draw();
	C->Print(out_file_,"pdf");
	h1_z0->Draw();
	C->Print(out_file_,"pdf");
	h2_z0->Draw();
	C->Print(out_file_,"pdf");
	h3_z0->Draw();
	C->Print(out_file_,"pdf");
	h4_z0->Draw();
	C->Print(out_file_,"pdf");
	h5_z0->Draw();
	C->Print(out_file_,"pdf");
	h6_z0->Draw();
	C->Print(out_file_,"pdf");
	h7_z0->Draw();
	C->Print(out_file_,"pdf");
	h8_z0->Draw();
	C->Print(out_file_,"pdf");
	h9_z0->Draw();
	C->Print(out_file_,"pdf");
	h10_z0->Draw();
	C->Print(out_file_,"pdf");

	h_dca->Draw();
	C->Print(out_file_, "pdf");
	h0_dca->Draw();
	C->Print(out_file_,"pdf");
	h1_dca->Draw();
	C->Print(out_file_,"pdf");
	h2_dca->Draw();
	C->Print(out_file_,"pdf");
	h3_dca->Draw();
	C->Print(out_file_,"pdf");
	h4_dca->Draw();
	C->Print(out_file_,"pdf");
	h5_dca->Draw();
	C->Print(out_file_,"pdf");
	h6_dca->Draw();
	C->Print(out_file_,"pdf");
	h7_dca->Draw();
	C->Print(out_file_,"pdf");
	h8_dca->Draw();
	C->Print(out_file_,"pdf");
	h9_dca->Draw();
	C->Print(out_file_,"pdf");
	h10_dca->Draw();
	C->Print(out_file_,"pdf");


	//plot same
	
	Double_t x1= 0.905,y1= 0.4, x2 = 0.995, y2 = 0.9;
	
	h_dp->GetYaxis()->SetRangeUser(0,0.25);
	h_dp->Draw();
	h0_dp->Draw("same");
	h1_dp->Draw("same");
	h2_dp->Draw("same");
	h3_dp->Draw("same");
	h4_dp->Draw("same");
	h5_dp->Draw("same");
	h6_dp->Draw("same");
	h7_dp->Draw("same");
	h8_dp->Draw("same");
	h9_dp->Draw("same");
	h10_dp->Draw("same");
	TLegend *leg1=new TLegend(x1,y1,x2,y2,"P_{t}");
        leg1->AddEntry(h_dp,"2 GeV/c");
        leg1->AddEntry(h0_dp,"5 GeV/c");
        leg1->AddEntry(h1_dp,"10 GeV/c");
        leg1->AddEntry(h2_dp,"20 GeV/c");
        leg1->AddEntry(h3_dp,"30 GeV/c");
        leg1->AddEntry(h4_dp,"40 GeV/c");
        leg1->AddEntry(h5_dp,"50 GeV/c");
        leg1->AddEntry(h6_dp,"60 GeV/c");
        leg1->AddEntry(h7_dp,"70 GeV/c");
        leg1->AddEntry(h8_dp,"80 GeV/c");
        leg1->AddEntry(h9_dp,"90 GeV/c");
        leg1->AddEntry(h10_dp,"100 GeV/c");
        leg1->Draw();
	C->Print(out_file_,"pdf");
	
	h_invpt->GetYaxis()->SetRangeUser(0,1e-5);
	h_invpt->Draw();
	h0_invpt->Draw("same");
	h1_invpt->Draw("same");
	h2_invpt->Draw("same");
	h3_invpt->Draw("same");
	h4_invpt->Draw("same");
	h5_invpt->Draw("same");
	h6_invpt->Draw("same");
	h7_invpt->Draw("same");
	h8_invpt->Draw("same");
	h9_invpt->Draw("same");
	h10_invpt->Draw("same");
	TLegend *leg2=new TLegend(x1,y1,x2,y2,"P_{t}");
	leg2->AddEntry(h_invpt,"2 GeV/c");
	leg2->AddEntry(h0_invpt,"5 GeV/c");
	leg2->AddEntry(h1_invpt,"10 GeV/c");
	leg2->AddEntry(h2_invpt,"20 GeV/c");
	leg2->AddEntry(h3_invpt,"30 GeV/c");
	leg2->AddEntry(h4_invpt,"40 GeV/c");
	leg2->AddEntry(h5_invpt,"50 GeV/c");
	leg2->AddEntry(h6_invpt,"60 GeV/c");
	leg2->AddEntry(h7_invpt,"70 GeV/c");	
	leg2->AddEntry(h8_invpt,"80 GeV/c");	
	leg2->AddEntry(h9_invpt,"90 GeV/c");
	leg2->AddEntry(h10_invpt,"100 GeV/c");
	leg2->Draw();
	C->Print(out_file_,"pdf");

	h_phi->GetYaxis()->SetRangeUser(0,0.007);
	h_phi->Draw();
	h0_phi->Draw("same");
	h1_phi->Draw("same");
	h2_phi->Draw("same");
	h3_phi->Draw("same");
	h4_phi->Draw("same");
	h5_phi->Draw("same");
	h6_phi->Draw("same");
	h7_phi->Draw("same");
	h8_phi->Draw("same");
	h9_phi->Draw("same");
	h10_phi->Draw("same");
	TLegend *leg3=new TLegend(x1,y1,x2,y2,"P_{t}");
        leg3->AddEntry(h_phi,"2 GeV/c");
        leg3->AddEntry(h0_phi,"5 GeV/c");
        leg3->AddEntry(h1_phi,"10 GeV/c");
        leg3->AddEntry(h2_phi,"20 GeV/c");
        leg3->AddEntry(h3_phi,"30 GeV/c");
        leg3->AddEntry(h4_phi,"40 GeV/c");
        leg3->AddEntry(h5_phi,"50 GeV/c");
        leg3->AddEntry(h6_phi,"60 GeV/c");
        leg3->AddEntry(h7_phi,"70 GeV/c");
        leg3->AddEntry(h8_phi,"80 GeV/c");
        leg3->AddEntry(h9_phi,"90 GeV/c");
        leg3->AddEntry(h10_phi,"100 GeV/c");
        leg3->Draw();
	C->Print(out_file_,"pdf");
	
	h_theta->GetYaxis()->SetRangeUser(0,0.003);
	h_theta->Draw();
	h0_theta->Draw("same");
	h1_theta->Draw("same");
	h2_theta->Draw("same");
	h3_theta->Draw("same");
	h4_theta->Draw("same");
	h5_theta->Draw("same");
	h6_theta->Draw("same");
	h7_theta->Draw("same");
	h8_theta->Draw("same");
	h9_theta->Draw("same");
	h10_theta->Draw("same");
	TLegend *leg4=new TLegend(x1,y1,x2,y2,"P_{t}");
        leg4->AddEntry(h_theta,"2 GeV/c");
        leg4->AddEntry(h0_theta,"5 GeV/c");
        leg4->AddEntry(h1_theta,"10 GeV/c");
        leg4->AddEntry(h2_theta,"20 GeV/c");
        leg4->AddEntry(h3_theta,"30 GeV/c");
        leg4->AddEntry(h4_theta,"40 GeV/c");
        leg4->AddEntry(h5_theta,"50 GeV/c");
        leg4->AddEntry(h6_theta,"60 GeV/c");
        leg4->AddEntry(h7_theta,"70 GeV/c");
        leg4->AddEntry(h8_theta,"80 GeV/c");
        leg4->AddEntry(h9_theta,"90 GeV/c");
        leg4->AddEntry(h10_theta,"100 GeV/c");
        leg4->Draw();
	C->Print(out_file_,"pdf");
	
	h_eta->GetYaxis()->SetRangeUser(0,0.004);
	h_eta->Draw();
	h0_eta->Draw("same");
	h1_eta->Draw("same");
	h2_eta->Draw("same");
	h3_eta->Draw("same");
	h4_eta->Draw("same");
	h5_eta->Draw("same");
	h6_eta->Draw("same");
	h7_eta->Draw("same");
	h8_eta->Draw("same");
	h9_eta->Draw("same");
	h10_eta->Draw("same");
	TLegend *leg5=new TLegend(x1,y1,x2,y2,"P_{t}");
        leg5->AddEntry(h_eta,"2 GeV/c");
        leg5->AddEntry(h0_eta,"5 GeV/c");
        leg5->AddEntry(h1_eta,"10 GeV/c");
        leg5->AddEntry(h2_eta,"20 GeV/c");
        leg5->AddEntry(h3_eta,"30 GeV/c");
        leg5->AddEntry(h4_eta,"40 GeV/c");
        leg5->AddEntry(h5_eta,"50 GeV/c");
        leg5->AddEntry(h6_eta,"60 GeV/c");
        leg5->AddEntry(h7_eta,"70 GeV/c");
        leg5->AddEntry(h8_eta,"80 GeV/c");
        leg5->AddEntry(h9_eta,"90 GeV/c");
        leg5->AddEntry(h10_eta,"100 GeV/c");
        leg5->Draw();
	C->Print(out_file_,"pdf");
	
	h_z0->GetYaxis()->SetRangeUser(0,3.4);
	h_z0->Draw();
	h0_z0->Draw("same");
	h1_z0->Draw("same");
	h2_z0->Draw("same");
	h3_z0->Draw("same");
	h4_z0->Draw("same");
	h5_z0->Draw("same");
	h6_z0->Draw("same");
	h7_z0->Draw("same");
	h8_z0->Draw("same");
	h9_z0->Draw("same");
	h10_z0->Draw("same");
	TLegend *leg6=new TLegend(x1,y1,x2,y2,"P_{t}");
        leg6->AddEntry(h_z0,"2 GeV/c");
        leg6->AddEntry(h0_z0,"5 GeV/c");
        leg6->AddEntry(h1_z0,"10 GeV/c");
        leg6->AddEntry(h2_z0,"20 GeV/c");
        leg6->AddEntry(h3_z0,"30 GeV/c");
        leg6->AddEntry(h4_z0,"40 GeV/c");
        leg6->AddEntry(h5_z0,"50 GeV/c");
        leg6->AddEntry(h6_z0,"60 GeV/c");
        leg6->AddEntry(h7_z0,"70 GeV/c");
        leg6->AddEntry(h8_z0,"80 GeV/c");
        leg6->AddEntry(h9_z0,"90 GeV/c");
        leg6->AddEntry(h10_z0,"100 GeV/c");
        leg6->Draw();
	C->Print(out_file_,"pdf");
	
	h_dca->GetYaxis()->SetRangeUser(0,0.008);
	h_dca->Draw();
	h0_dca->Draw("same");
	h1_dca->Draw("same");
	h2_dca->Draw("same");
	h3_dca->Draw("same");
	h4_dca->Draw("same");
	h5_dca->Draw("same");
	h6_dca->Draw("same");
	h7_dca->Draw("same");
	h8_dca->Draw("same");
	h9_dca->Draw("same");
	h10_dca->Draw("same");
	TLegend *leg7=new TLegend(x1,y1,x2,y2,"P_{t}");
        leg7->AddEntry(h_dca,"2 GeV/c");
        leg7->AddEntry(h0_dca,"5 GeV/c");
        leg7->AddEntry(h1_dca,"10 GeV/c");
        leg7->AddEntry(h2_dca,"20 GeV/c");
        leg7->AddEntry(h3_dca,"30 GeV/c");
        leg7->AddEntry(h4_dca,"40 GeV/c");
        leg7->AddEntry(h5_dca,"50 GeV/c");
        leg7->AddEntry(h6_dca,"60 GeV/c");
        leg7->AddEntry(h7_dca,"70 GeV/c");
        leg7->AddEntry(h8_dca,"80 GeV/c");
        leg7->AddEntry(h9_dca,"90 GeV/c");
        leg7->AddEntry(h10_dca,"100 GeV/c");
        leg7->Draw();
	C->Print(out_file_close,"pdf");
return 0;
}
