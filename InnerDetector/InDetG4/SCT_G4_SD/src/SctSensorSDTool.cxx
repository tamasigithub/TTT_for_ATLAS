// SCT Sensitive Detector Tool.
//

// class header
#include "SctSensorSDTool.h"

// package includes
#include "SctSensorSD.h"
#include "SctSensorGmxSD.h"

// STL includes
#include <exception>

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

SctSensorSDTool::SctSensorSDTool(const std::string& type, const std::string& name, const IInterface* parent)
  : SensitiveDetectorBase( type , name , parent ),m_isGmxSensor(false)
{
  declareInterface<ISensitiveDetector>(this);
  declareProperty("GmxSensor",m_isGmxSensor);
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4VSensitiveDetector* SctSensorSDTool::makeSD()
{
  ATH_MSG_DEBUG( "Initializing SD" );
  if(m_isGmxSensor)
    {
      ATH_MSG_DEBUG( "OK, calling SctSensorGmxSD for simulation ") ;  
      return new SctSensorGmxSD(name(), m_outputCollectionNames[0]);
    }
  else
    {
            
      ATH_MSG_DEBUG( "OK, calling SctSensorSD for simulation ");

      return new SctSensorSD(name(), m_outputCollectionNames[0]);
    }
}

