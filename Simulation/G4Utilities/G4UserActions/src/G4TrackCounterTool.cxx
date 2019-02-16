#include "CxxUtils/make_unique.h"
#include "G4UserActions/G4TrackCounterTool.h"

namespace G4UA
{

  //---------------------------------------------------------------------------
  // Constructor
  //---------------------------------------------------------------------------
  G4TrackCounterTool::
  G4TrackCounterTool(const std::string& type, const std::string& name,
                     const IInterface* parent)
    : ActionToolBaseReport<G4TrackCounter>(type, name, parent)
  {}

  //---------------------------------------------------------------------------
  // Initialize - temporarily here for debugging
  //---------------------------------------------------------------------------
  StatusCode G4TrackCounterTool::initialize()
  {
    ATH_MSG_INFO("initialize");
    return StatusCode::SUCCESS;
  }

  //---------------------------------------------------------------------------
  // Merge results from all threads
  //---------------------------------------------------------------------------
  StatusCode G4TrackCounterTool::finalize()
  {
    ATH_MSG_INFO("finalize");

    mergeReports();

    // Report the totals
    ATH_MSG_INFO("nEvents          " << m_report.nEvents);
    ATH_MSG_INFO("nPrimaryTracks   " << m_report.nPrimaryTracks);
    ATH_MSG_INFO("nSecondaryTracks " << m_report.nSecondaryTracks);
    ATH_MSG_INFO("n50MeVTracks     " << m_report.n50MeVTracks);

    return StatusCode::SUCCESS;
  }

  //---------------------------------------------------------------------------
  // Create the action on request
  //---------------------------------------------------------------------------
  std::unique_ptr<G4TrackCounter>
  G4TrackCounterTool::makeAction()
  {
    ATH_MSG_DEBUG("makeAction");
    auto action = CxxUtils::make_unique<G4TrackCounter>();
    return std::move(action);
  }

  //---------------------------------------------------------------------------
  // Query interface
  //---------------------------------------------------------------------------
  StatusCode G4TrackCounterTool::queryInterface(const InterfaceID& riid,
                                                void** ppvIf)
  {
    if(riid == IBeginEventActionTool::interfaceID()) {
      *ppvIf = (IBeginEventActionTool*) this;
      addRef();
      return StatusCode::SUCCESS;
    }
    if(riid == IPreTrackingActionTool::interfaceID()) {
      *ppvIf = (IPreTrackingActionTool*) this;
      addRef();
      return StatusCode::SUCCESS;
    }
    return ActionToolBase<G4TrackCounter>::queryInterface(riid, ppvIf);
  }

}
