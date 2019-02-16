#include <iostream>
#include <string>
#include <stdlib.h>
#include <unistd.h>

#include "stripDig.h"

using namespace std;

int main(int argc, char *argv[]) {
Data d;
Histograms h;
Results r;
//
//    Deal with command line parameters
//
    int nEvents = 0;
    bool drawEvents = false;

    int opt;
    while ((opt = getopt(argc, argv, "n:d")) != -1) {
        switch (opt) {
        case 'n':
            nEvents = atoi(optarg);
            break;
        case 'd':
            drawEvents = true;
            break;
        default: 
            cerr << argv[0] << ": Unrecognised option.\n";
            exit(EXIT_FAILURE);
        }
    }

    if (argc <= optind) { // Filename missing
        cerr << "stripDig usage: stripDig [-n #events] [-d] <filename> [<outputdir>]" <<
                "...where <filename> is athena root file of digitised hits. -d says draw event display. \n";
        exit(EXIT_FAILURE);
    }

    const string rootFileName(argv[optind]);

    string histDir(".");
    if (argc > optind + 1) {
        histDir = argv[optind + 1];
    } 

//
//    Set up the root file and tree
//
cout << "Open root file...\n";
    TTree *rootTree = prepareRootTree(rootFileName, d);
cout << "...OK\n";
//
//    Book hists
//
cout << "bookHists\n";
    bookHists(h);
//
//    Fill hists
//
cout << "Analyse\n";
    analyse(*rootTree, d, nEvents, h, r, drawEvents, histDir);
//
//    Make pdf outputs
//
cout << "Make pixel pdfs\n";
    drawPixels(h, histDir, r);
cout << "Make strip pdfs\n";
    drawStrips(h, histDir, r);
//
//
//
    exit(EXIT_SUCCESS);
}
