#include "InDetReadoutGeometry/SiCellId.h"

namespace InDetDD{
	std::ostream & operator << (std::ostream & os, const SiCellId & cellId)
	{
		if (cellId.isValid()){
			return os << "[" << cellId.phiIndex() << "." << cellId.etaIndex() << "]";
		} else {
			return os << "[INVALID]";
		}
	}
}// namespace InDetDD

