#ifndef G4UserActions_PhotonKiller_H
#define G4UserActions_PhotonKiller_H

#include "G4AtlasInterfaces/ISteppingAction.h"
#include "G4AtlasInterfaces/IPreTrackingAction.h"

namespace G4UA
{

  /// @brief NEEDS DOCUMENTATION
  class PhotonKiller : public ISteppingAction, public IPreTrackingAction
  {
    public:
      PhotonKiller();
      virtual void processStep(const G4Step*) override;
      virtual void preTracking(const G4Track*) override;
    private:
      G4Track* m_lastTrack;
      int m_count;
      float m_energy;
  }; // class PhotonKiller

} // namespace G4UA

#endif
