#ifndef InDetPixel0LayoutRZ_C
#define InDetPixel0LayoutRZ_C

double InDetPixel0LayoutRZ(bool createCanvas=true) {
    TLine* l;
    TBox* b;
    // Pixel layer 0 area if splitted
    double area_Pixel0 = 0;

    if(createCanvas) {
      TCanvas* crz = new TCanvas("InDetLayoutRZ","InDet Layout (r,z)", 1200,600);
      crz->Divide(1,1);
      crz->cd(1);
      gPad->SetGridx();
      gPad->SetGridy();
      TH2F *hrz = new TH2F("InDetLayoutRZ","InDet Layout (r,z)",32,0.,3200., 40,0.,400.);
      hrz->SetStats(0);
      hrz->GetYaxis()->SetTitle("R [mm]");
      hrz->GetXaxis()->SetTitle("z [mm]");
      hrz->Draw("h");

      TLatex latex;
      latex.SetTextSize(0.03);
      TLine line1;
      double zMax = 3200;
      double rMax = 1100;
      // draw eta lines - Zvertex =0
      line1.SetLineStyle(2);
      line1.SetLineColor(kGray);
      for (int ieta=2;ieta<48;ieta+=2){
        double eta = ieta/10.;
        double angle = 2*atan(exp(-eta));
        double r = zMax*tan(angle);
        double z = zMax;
        if(r>rMax) {
          r = rMax;
          z = rMax/tan(angle);
        }
        if(ieta%10==0) line1.SetLineWidth(2);
        else line1.SetLineWidth(1);
        line1.DrawLine(0.,0.,z,r);
      }
      TBox box1;
      box1.SetFillColor(kRed);
      // draw beampipe
      box1.DrawBox(0,32.1,zMax,37.4);
      // draw IST
      if(zMax>3200.0) zMax = 3000.0;
      box1.DrawBox(0,133.0,zMax,139.0);
      // draw PST
      box1.DrawBox(0,341.0,zMax,361.75);
      latex.SetTextColor(kMagenta+2);
      latex.DrawText(500,300,"Pixel barrel");
      latex.SetTextColor(kMagenta);
      latex.DrawText(2650,50,"Pixel endcap");
    }

    // R,Z representation of surface, no thickness
    // ---------------------- Pixel_Barrel number of surfaces found: 2928
    l = new TLine(37.9015,39,77.9015,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 535
    l = new TLine(78.5025,39,118.503,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 536
    l = new TLine(119.104,39,159.104,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 537
    l = new TLine(159.705,39,199.705,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 538
    l = new TLine(200.306,39,240.306,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 539
    l = new TLine(255.523,36.0642,250.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 540
    l = new TLine(278.723,36.0642,273.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 541
    l = new TLine(303.523,36.0642,298.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 542
    l = new TLine(332.623,36.0642,327.653,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 543
    l = new TLine(366.823,36.0642,361.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 544
    l = new TLine(407.023,36.0642,402.053,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 545
    l = new TLine(454.223,36.0642,449.253,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 546
    l = new TLine(509.723,36.0642,504.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 547
    l = new TLine(574.923,36.0642,569.953,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 548
    l = new TLine(640.423,36.0642,635.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 549
    l = new TLine(705.823,36.0642,700.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 550
    l = new TLine(768.823,36.0642,763.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 551
    l = new TLine(838.423,36.0642,833.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 552
    l = new TLine(915.823,36.0642,910.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 553
    l = new TLine(1001.62,36.0642,996.653,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 554
    l = new TLine(1097.02,36.0642,1092.05,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 555
    l = new TLine(37.9015,39,77.9015,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 579
    l = new TLine(78.5025,39,118.503,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 580
    l = new TLine(119.104,39,159.104,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 581
    l = new TLine(159.705,39,199.705,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 582
    l = new TLine(200.306,39,240.306,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 583
    l = new TLine(255.523,36.0642,250.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 584
    l = new TLine(278.723,36.0642,273.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 585
    l = new TLine(303.523,36.0642,298.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 586
    l = new TLine(332.623,36.0642,327.653,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 587
    l = new TLine(366.823,36.0642,361.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 588
    l = new TLine(407.023,36.0642,402.053,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 589
    l = new TLine(454.223,36.0642,449.253,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 590
    l = new TLine(509.723,36.0642,504.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 591
    l = new TLine(574.923,36.0642,569.953,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 592
    l = new TLine(640.423,36.0642,635.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 593
    l = new TLine(705.823,36.0642,700.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 594
    l = new TLine(768.823,36.0642,763.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 595
    l = new TLine(838.423,36.0642,833.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 596
    l = new TLine(915.823,36.0642,910.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 597
    l = new TLine(1001.62,36.0642,996.653,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 598
    l = new TLine(1097.02,36.0642,1092.05,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 599
    l = new TLine(3.3005,39,43.3005,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 622
    l = new TLine(43.9015,39,83.9015,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 623
    l = new TLine(84.5025,39,124.503,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 624
    l = new TLine(125.104,39,165.104,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 625
    l = new TLine(165.705,39,205.705,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 626
    l = new TLine(206.306,39,246.306,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 627
    l = new TLine(261.523,36.0642,256.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 628
    l = new TLine(284.723,36.0642,279.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 629
    l = new TLine(309.523,36.0642,304.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 630
    l = new TLine(338.623,36.0642,333.653,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 631
    l = new TLine(372.823,36.0642,367.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 632
    l = new TLine(413.023,36.0642,408.053,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 633
    l = new TLine(460.223,36.0642,455.253,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 634
    l = new TLine(515.723,36.0642,510.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 635
    l = new TLine(580.923,36.0642,575.953,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 636
    l = new TLine(646.423,36.0642,641.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 637
    l = new TLine(711.823,36.0642,706.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 638
    l = new TLine(774.823,36.0642,769.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 639
    l = new TLine(844.423,36.0642,839.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 640
    l = new TLine(921.823,36.0642,916.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 641
    l = new TLine(1007.62,36.0642,1002.65,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 642
    l = new TLine(1103.02,36.0642,1098.05,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 643
    l = new TLine(3.3005,39,43.3005,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 666
    l = new TLine(43.9015,39,83.9015,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 667
    l = new TLine(84.5025,39,124.503,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 668
    l = new TLine(125.104,39,165.104,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 669
    l = new TLine(165.705,39,205.705,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 670
    l = new TLine(206.306,39,246.306,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 671
    l = new TLine(261.523,36.0642,256.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 672
    l = new TLine(284.723,36.0642,279.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 673
    l = new TLine(309.523,36.0642,304.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 674
    l = new TLine(338.623,36.0642,333.653,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 675
    l = new TLine(372.823,36.0642,367.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 676
    l = new TLine(413.023,36.0642,408.053,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 677
    l = new TLine(460.223,36.0642,455.253,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 678
    l = new TLine(515.723,36.0642,510.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 679
    l = new TLine(580.923,36.0642,575.953,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 680
    l = new TLine(646.423,36.0642,641.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 681
    l = new TLine(711.823,36.0642,706.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 682
    l = new TLine(774.823,36.0642,769.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 683
    l = new TLine(844.423,36.0642,839.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 684
    l = new TLine(921.823,36.0642,916.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 685
    l = new TLine(1007.62,36.0642,1002.65,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 686
    l = new TLine(1103.02,36.0642,1098.05,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 687
    l = new TLine(37.9015,39,77.9015,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 711
    l = new TLine(78.5025,39,118.503,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 712
    l = new TLine(119.104,39,159.104,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 713
    l = new TLine(159.705,39,199.705,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 714
    l = new TLine(200.306,39,240.306,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 715
    l = new TLine(255.523,36.0642,250.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 716
    l = new TLine(278.723,36.0642,273.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 717
    l = new TLine(303.523,36.0642,298.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 718
    l = new TLine(332.623,36.0642,327.653,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 719
    l = new TLine(366.823,36.0642,361.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 720
    l = new TLine(407.023,36.0642,402.053,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 721
    l = new TLine(454.223,36.0642,449.253,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 722
    l = new TLine(509.723,36.0642,504.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 723
    l = new TLine(574.923,36.0642,569.953,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 724
    l = new TLine(640.423,36.0642,635.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 725
    l = new TLine(705.823,36.0642,700.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 726
    l = new TLine(768.823,36.0642,763.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 727
    l = new TLine(838.423,36.0642,833.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 728
    l = new TLine(915.823,36.0642,910.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 729
    l = new TLine(1001.62,36.0642,996.653,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 730
    l = new TLine(1097.02,36.0642,1092.05,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 731
    l = new TLine(37.9015,39,77.9015,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 755
    l = new TLine(78.5025,39,118.503,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 756
    l = new TLine(119.104,39,159.104,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 757
    l = new TLine(159.705,39,199.705,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 758
    l = new TLine(200.306,39,240.306,39); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 759
    l = new TLine(255.523,36.0642,250.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 760
    l = new TLine(278.723,36.0642,273.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 761
    l = new TLine(303.523,36.0642,298.553,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 762
    l = new TLine(332.623,36.0642,327.653,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 763
    l = new TLine(366.823,36.0642,361.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 764
    l = new TLine(407.023,36.0642,402.053,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 765
    l = new TLine(454.223,36.0642,449.253,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 766
    l = new TLine(509.723,36.0642,504.753,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 767
    l = new TLine(574.923,36.0642,569.953,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 768
    l = new TLine(640.423,36.0642,635.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 769
    l = new TLine(705.823,36.0642,700.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 770
    l = new TLine(768.823,36.0642,763.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 771
    l = new TLine(838.423,36.0642,833.453,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 772
    l = new TLine(915.823,36.0642,910.853,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 773
    l = new TLine(1001.62,36.0642,996.653,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 774
    l = new TLine(1097.02,36.0642,1092.05,54.61); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 775
    l = new TLine(37.9015,99,77.9015,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2023
    l = new TLine(78.5025,99,118.503,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2024
    l = new TLine(119.104,99,159.104,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2025
    l = new TLine(159.705,99,199.705,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2026
    l = new TLine(200.306,99,240.306,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2027
    l = new TLine(260.542,81.7033,250.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2028
    l = new TLine(310.542,81.7033,300.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2029
    l = new TLine(363.242,81.7033,353.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2030
    l = new TLine(418.342,81.7033,408.403,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2031
    l = new TLine(475.742,81.7033,465.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2032
    l = new TLine(536.742,81.7033,526.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2033
    l = new TLine(601.242,81.7033,591.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2034
    l = new TLine(669.242,81.7033,659.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2035
    l = new TLine(740.542,81.7033,730.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2036
    l = new TLine(815.142,81.7033,805.203,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2037
    l = new TLine(898.542,81.7033,888.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2038
    l = new TLine(991.942,81.7033,982.003,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2039
    l = new TLine(1096.54,81.7033,1086.6,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2040
    l = new TLine(37.9015,99,77.9015,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2061
    l = new TLine(78.5025,99,118.503,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2062
    l = new TLine(119.104,99,159.104,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2063
    l = new TLine(159.705,99,199.705,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2064
    l = new TLine(200.306,99,240.306,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2065
    l = new TLine(260.542,81.7033,250.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2066
    l = new TLine(310.542,81.7033,300.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2067
    l = new TLine(363.242,81.7033,353.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2068
    l = new TLine(418.342,81.7033,408.403,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2069
    l = new TLine(475.742,81.7033,465.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2070
    l = new TLine(536.742,81.7033,526.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2071
    l = new TLine(601.242,81.7033,591.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2072
    l = new TLine(669.242,81.7033,659.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2073
    l = new TLine(740.542,81.7033,730.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2074
    l = new TLine(815.142,81.7033,805.203,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2075
    l = new TLine(898.542,81.7033,888.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2076
    l = new TLine(991.942,81.7033,982.003,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2077
    l = new TLine(1096.54,81.7033,1086.6,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2078
    l = new TLine(3.3005,99,43.3005,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2098
    l = new TLine(43.9015,99,83.9015,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2099
    l = new TLine(84.5025,99,124.503,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2100
    l = new TLine(125.104,99,165.104,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2101
    l = new TLine(165.705,99,205.705,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2102
    l = new TLine(206.306,99,246.306,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2103
    l = new TLine(266.542,81.7033,256.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2104
    l = new TLine(316.542,81.7033,306.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2105
    l = new TLine(369.242,81.7033,359.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2106
    l = new TLine(424.342,81.7033,414.403,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2107
    l = new TLine(481.742,81.7033,471.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2108
    l = new TLine(542.742,81.7033,532.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2109
    l = new TLine(607.242,81.7033,597.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2110
    l = new TLine(675.242,81.7033,665.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2111
    l = new TLine(746.542,81.7033,736.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2112
    l = new TLine(821.142,81.7033,811.203,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2113
    l = new TLine(904.542,81.7033,894.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2114
    l = new TLine(997.942,81.7033,988.003,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2115
    l = new TLine(1102.54,81.7033,1092.6,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2116
    l = new TLine(3.3005,99,43.3005,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2136
    l = new TLine(43.9015,99,83.9015,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2137
    l = new TLine(84.5025,99,124.503,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2138
    l = new TLine(125.104,99,165.104,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2139
    l = new TLine(165.705,99,205.705,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2140
    l = new TLine(206.306,99,246.306,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2141
    l = new TLine(266.542,81.7033,256.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2142
    l = new TLine(316.542,81.7033,306.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2143
    l = new TLine(369.242,81.7033,359.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2144
    l = new TLine(424.342,81.7033,414.403,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2145
    l = new TLine(481.742,81.7033,471.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2146
    l = new TLine(542.742,81.7033,532.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2147
    l = new TLine(607.242,81.7033,597.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2148
    l = new TLine(675.242,81.7033,665.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2149
    l = new TLine(746.542,81.7033,736.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2150
    l = new TLine(821.142,81.7033,811.203,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2151
    l = new TLine(904.542,81.7033,894.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2152
    l = new TLine(997.942,81.7033,988.003,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2153
    l = new TLine(1102.54,81.7033,1092.6,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2154
    l = new TLine(37.9015,99,77.9015,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2175
    l = new TLine(78.5025,99,118.503,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2176
    l = new TLine(119.104,99,159.104,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2177
    l = new TLine(159.705,99,199.705,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2178
    l = new TLine(200.306,99,240.306,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2179
    l = new TLine(260.542,81.7033,250.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2180
    l = new TLine(310.542,81.7033,300.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2181
    l = new TLine(363.242,81.7033,353.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2182
    l = new TLine(418.342,81.7033,408.403,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2183
    l = new TLine(475.742,81.7033,465.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2184
    l = new TLine(536.742,81.7033,526.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2185
    l = new TLine(601.242,81.7033,591.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2186
    l = new TLine(669.242,81.7033,659.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2187
    l = new TLine(740.542,81.7033,730.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2188
    l = new TLine(815.142,81.7033,805.203,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2189
    l = new TLine(898.542,81.7033,888.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2190
    l = new TLine(991.942,81.7033,982.003,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2191
    l = new TLine(1096.54,81.7033,1086.6,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2192
    l = new TLine(37.9015,99,77.9015,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2213
    l = new TLine(78.5025,99,118.503,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2214
    l = new TLine(119.104,99,159.104,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2215
    l = new TLine(159.705,99,199.705,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2216
    l = new TLine(200.306,99,240.306,99); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2217
    l = new TLine(260.542,81.7033,250.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2218
    l = new TLine(310.542,81.7033,300.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2219
    l = new TLine(363.242,81.7033,353.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2220
    l = new TLine(418.342,81.7033,408.403,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2221
    l = new TLine(475.742,81.7033,465.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2222
    l = new TLine(536.742,81.7033,526.803,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2223
    l = new TLine(601.242,81.7033,591.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2224
    l = new TLine(669.242,81.7033,659.303,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2225
    l = new TLine(740.542,81.7033,730.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2226
    l = new TLine(815.142,81.7033,805.203,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2227
    l = new TLine(898.542,81.7033,888.603,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2228
    l = new TLine(991.942,81.7033,982.003,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2229
    l = new TLine(1096.54,81.7033,1086.6,118.795); l->SetLineColor(kMagenta+2); l->SetLineWidth(4); l->Draw("same"); // surface 2230
    double area_Pixel_Barrel = 3.02285;
    std::cout <<  "Pixel0 Silicon area = " << area_Pixel_Barrel << " m2 for Pixel_Barrel with 2928 surfaces " << std::endl;
    // ---------------------- Pixel_Endcap_neg number of surfaces found: 306
    double area_Pixel_Endcap_neg = 0.470016;
    std::cout <<  "Pixel0 Silicon area = " << area_Pixel_Endcap_neg << " m2 for Pixel_Endcap_neg with 306 surfaces " << std::endl;
    // ---------------------- Pixel_Endcap_pos number of surfaces found: 306
    l = new TLine(1213,78.2,1213,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3244
    l = new TLine(1219,78.2,1219,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3245
    l = new TLine(1240,50.2,1240,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3263
    l = new TLine(1246,50.2,1246,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3264
    l = new TLine(1240,50.2,1240,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3265
    l = new TLine(1355.8,78.2,1355.8,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3282
    l = new TLine(1361.8,78.2,1361.8,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3283
    l = new TLine(1422,50.2,1422,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3301
    l = new TLine(1428,50.2,1428,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3302
    l = new TLine(1422,50.2,1422,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3303
    l = new TLine(1517.9,78.2,1517.9,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3320
    l = new TLine(1523.9,78.2,1523.9,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3321
    l = new TLine(1648,50.2,1648,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3339
    l = new TLine(1654,50.2,1654,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3340
    l = new TLine(1648,50.2,1648,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3341
    l = new TLine(1701.7,78.2,1701.7,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3358
    l = new TLine(1707.7,78.2,1707.7,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3359
    l = new TLine(1915,50.2,1915,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3377
    l = new TLine(1921,50.2,1921,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3378
    l = new TLine(1915,50.2,1915,90.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3379
    l = new TLine(1964,78.2,1964,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3396
    l = new TLine(1970,78.2,1970,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3397
    l = new TLine(2105.2,78.2,2105.2,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3418
    l = new TLine(2111.2,78.2,2111.2,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3419
    l = new TLine(2257.4,78.2,2257.4,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3440
    l = new TLine(2263.4,78.2,2263.4,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3441
    l = new TLine(2421.4,78.2,2421.4,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3462
    l = new TLine(2427.4,78.2,2427.4,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3463
    l = new TLine(2598.2,78.2,2598.2,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3484
    l = new TLine(2604.2,78.2,2604.2,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3485
    l = new TLine(2788.8,78.2,2788.8,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3506
    l = new TLine(2794.8,78.2,2794.8,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3507
    l = new TLine(2994,78.2,2994,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3528
    l = new TLine(3000,78.2,3000,118.2); l->SetLineColor(kMagenta-2+2); l->SetLineWidth(4); l->Draw("same"); // surface 3529
    double area_Pixel_Endcap_pos = 0.470016;
    std::cout <<  "Pixel0 Silicon area = " << area_Pixel_Endcap_pos << " m2 for Pixel_Endcap_pos with 306 surfaces " << std::endl;
    double area_Pixel_Endcap = area_Pixel_Endcap_neg + area_Pixel_Endcap_pos;
    std::cout <<  "Pixel0 Silicon area = " << area_Pixel_Endcap << " m2 for Pixel_Endcap" << std::endl;
    if(area_Pixel0!=0) std::cout <<  "Pixel0 Silicon area = " << 3.96288 << " + " << area_Pixel0 << " = " << 3.96288 + area_Pixel0 << " m2" << std::endl;
    else               std::cout <<  "Pixel0 Silicon area = " << 3.96288 << " m2" << std::endl;
    return 3.96288 + area_Pixel0;
}

#endif 
