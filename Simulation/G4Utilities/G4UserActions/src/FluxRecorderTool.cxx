#include "CxxUtils/make_unique.h"
#include "G4UserActions/FluxRecorderTool.h"

namespace G4UA{ 

  FluxRecorderTool::FluxRecorderTool(const std::string& type, const std::string& name,const IInterface* parent):
    ActionToolBase<FluxRecorder>(type, name, parent){
  }
  std::unique_ptr<FluxRecorder>  FluxRecorderTool::makeAction(){
    ATH_MSG_DEBUG("makeAction");
    auto action = CxxUtils::make_unique<FluxRecorder>();
    return std::move(action);
  }
  StatusCode FluxRecorderTool::queryInterface(const InterfaceID& riid, void** ppvIf){
    
    if(riid == IBeginRunActionTool::interfaceID()) {
      *ppvIf = (IBeginRunActionTool*) this;
      addRef();
      return StatusCode::SUCCESS;
    }
    if(riid == IEndRunActionTool::interfaceID()) {
      *ppvIf = (IEndRunActionTool*) this;
      addRef();
      return StatusCode::SUCCESS;
    }
    if(riid == IEndEventActionTool::interfaceID()) {
      *ppvIf = (IEndEventActionTool*) this;
      addRef();
      return StatusCode::SUCCESS;
    }
    if(riid == ISteppingActionTool::interfaceID()) {
      *ppvIf = (ISteppingActionTool*) this;
      addRef();
      return StatusCode::SUCCESS;
    }
    return ActionToolBase<FluxRecorder>::queryInterface(riid, ppvIf);
  }
  
} // namespace G4UA 
