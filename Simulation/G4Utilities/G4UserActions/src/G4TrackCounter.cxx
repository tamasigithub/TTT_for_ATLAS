#include "G4UserActions/G4TrackCounter.h"
#include "MCTruth/TrackHelper.h"
#include <iostream>


#include "G4ios.hh"

namespace G4UA
{

  //---------------------------------------------------------------------------
  // merge results
  //---------------------------------------------------------------------------

  void G4TrackCounter::Report::merge(const G4TrackCounter::Report& rep){

    nEvents+=rep.nEvents;
    nTotalTracks+=rep.nTotalTracks;
    nPrimaryTracks+=rep.nPrimaryTracks;
    nSecondaryTracks+=rep.nSecondaryTracks;
    n50MeVTracks+=rep.n50MeVTracks;
  }

  //---------------------------------------------------------------------------
  // Increment event counter
  //---------------------------------------------------------------------------
  void G4TrackCounter::beginOfEvent(const G4Event* /*event*/)
  {
    //G4cout << "G4TrackCounter@" << this << "::beginOfEvent" << G4endl;
    m_report.nEvents++;
  }

  //---------------------------------------------------------------------------
  // Increment track counters
  //---------------------------------------------------------------------------
  void G4TrackCounter::preTracking(const G4Track* track)
  {
    //G4cout << "G4TrackCounter@" << this << "::preTracking" << G4endl;
    m_report.nTotalTracks++;
    TrackHelper helper(track);

    // Primary tracks
    if(helper.IsPrimary() || helper.IsRegeneratedPrimary())
      m_report.nPrimaryTracks++;

    // Secondary tracks
    if(helper.IsRegisteredSecondary())
      m_report.nSecondaryTracks++;

    // 50 MeV tracks
    const double minE = 50.;
    if(track->GetKineticEnergy() > minE)
      m_report.n50MeVTracks++;
  }

} // namespace G4UA
