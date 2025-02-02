#include "CxxUtils/make_unique.h"
#include "G4UserActions/LooperKillerTool.h"

namespace G4UA
{

  //---------------------------------------------------------------------------
  // Constructor
  //---------------------------------------------------------------------------
  LooperKillerTool::LooperKillerTool(const std::string& type, const std::string& name,
                                 const IInterface* parent)
    : ActionToolBaseReport<LooperKiller>(type, name, parent)
  {
    declareProperty("MaxSteps", m_config.MaxSteps);
    declareProperty("PrintSteps",m_config.PrintSteps);
    declareProperty("VerboseLevel", m_config.VerboseLevel);
    declareProperty("AbortEvent", m_config.AbortEvent);
    declareProperty("SetError", m_config.SetError);
  }
  
  //---------------------------------------------------------------------------
  // Initialize - temporarily here for debugging
  //---------------------------------------------------------------------------
  StatusCode LooperKillerTool::initialize()
  {
    ATH_MSG_DEBUG("initialize");
    return StatusCode::SUCCESS;
  }

  StatusCode LooperKillerTool::finalize()
  {
    ATH_MSG_DEBUG("finalize");

    mergeReports();

    ATH_MSG_INFO( "******* Report from "<< name()<< " *******");
    ATH_MSG_INFO(" Set to kill tracks over " << m_config.MaxSteps << " steps");
    ATH_MSG_INFO(" and give " << m_config.PrintSteps << " steps of verbose output");
    ATH_MSG_INFO(" We killed " << m_report.killed_tracks << " tracks this run.");
    ATH_MSG_INFO(" Was set to " << (m_config.AbortEvent?"":"not ") << "abort events and "); 
    ATH_MSG_INFO( (m_config.SetError?"":"not ") << "set an error state." );
    
    return StatusCode::SUCCESS;
  }


  //---------------------------------------------------------------------------
  // Create the action on request
  //---------------------------------------------------------------------------
  std::unique_ptr<LooperKiller>
  LooperKillerTool::makeAction()
  {
    ATH_MSG_DEBUG("makeAction");
    auto action = CxxUtils::make_unique<LooperKiller>(m_config);
    return std::move(action);
  }

  //---------------------------------------------------------------------------
  // Query interface
  //---------------------------------------------------------------------------
  StatusCode LooperKillerTool::queryInterface(const InterfaceID& riid, void** ppvIf)
  {
    if(riid == ISteppingActionTool::interfaceID()) {
      *ppvIf = (ISteppingActionTool*) this;
      addRef();
      return StatusCode::SUCCESS;
    }

    return ActionToolBase<LooperKiller>::queryInterface(riid, ppvIf);
  }

}
