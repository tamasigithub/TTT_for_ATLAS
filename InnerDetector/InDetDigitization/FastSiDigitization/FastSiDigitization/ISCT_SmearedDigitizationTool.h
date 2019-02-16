#ifndef SIDIGITIZATION_ISCTSMEAREDDIGITIZATIONTOOL_H
#define SIDIGITIZATION_ISCTSMEAREDDIGITIZATIONTOOL_H

#include "GaudiKernel/IAlgTool.h"
#include "GaudiKernel/StatusCode.h"

static const InterfaceID IID_ISCT_SmearedDigitizationTool ("ISCT_SmearedDigitizationTool",1,0);

class ISCT_SmearedDigitizationTool : virtual public IAlgTool
{

   public:

     static const InterfaceID& interfaceID();

     ///alternative interface which uses the PileUpMergeSvc to obtain all
     ///the required SubEvents.
     virtual StatusCode processAllSubEvents() = 0;

};

inline const InterfaceID& ISCT_SmearedDigitizationTool::interfaceID()
{
  return IID_ISCT_SmearedDigitizationTool;
}

#endif // SIDIGITIZATION_ISCTSMEAREDDIGITIZATIONTOOL_H
