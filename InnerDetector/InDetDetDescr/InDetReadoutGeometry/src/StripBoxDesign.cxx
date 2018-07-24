#include "InDetReadoutGeometry/StripBoxDesign.h"
#include <stdexcept>
#include <cmath>
#include "Identifier/Identifier.h"
#include "TrkSurfaces/RectangleBounds.h"
#include <iostream>

using namespace std;

namespace InDetDD {
StripBoxDesign::StripBoxDesign(const SiDetectorDesign::Axis stripDirection,
                               const SiDetectorDesign::Axis thicknessDirection,
                               const double thickness,
                               const int readoutSide,
                               const InDetDD::CarrierType carrier,
                               const int nRows,
                               const int nStrips,
                               const double pitch,
                               const double length) : 
    SCT_ModuleSideDesign(thickness, true, true, true, 1, nRows * nStrips, nRows * nStrips, 0, false, carrier,
                         readoutSide, stripDirection, thicknessDirection) {
    if (nRows <= 0) {
        throw std::runtime_error(
                  "ERROR: StripBoxDesign called with non-positive number of rows");
    }

    m_nRows = nRows;
    m_nStrips = nStrips;
    m_pitch = pitch;
    m_length = length;

    double width = m_nStrips * m_pitch;
    double fullLength = m_nRows * m_length;
    m_bounds = new Trk::RectangleBounds(width / 2.0, fullLength / 2.0);
}

StripBoxDesign::~StripBoxDesign() {
    delete m_bounds;
}

void StripBoxDesign::getStripRow(SiCellId cellId, int *strip, int *row) const {
    if (!cellId.isValid()) {
        std::cerr << "StripBoxDesign::getStripRow called with invalid cellId\n";
        *strip = -1;
        *row = -2;
        return;
    }
    int strip1D = cellId.phiIndex();
    *row = strip1D / m_nStrips;
    *strip = strip1D % m_nStrips;
    return;
}

int StripBoxDesign::strip1Dim(int strip, int row) const {
    return m_nStrips * row + strip;
}

void StripBoxDesign::neighboursOfCell(const SiCellId &cellId,
                                      std::vector<SiCellId> &neighbours) const {


    neighbours.clear();

    if (!cellId.isValid()) {
        return;
    }

    int strip, row;
    getStripRow(cellId, &strip, &row);
    int stripM = strip - 1;
    int stripP = strip + 1;

    if (stripM >= 0) {
        neighbours.push_back(stripM);
    }
    if (stripP < m_nStrips) {
        neighbours.push_back(stripP);
    }

    return;
}

const Trk::SurfaceBounds &StripBoxDesign::bounds() const {
//    Return smallest rectangle that fully encompasses the active area.

    return *m_bounds;
}

SiCellId StripBoxDesign::cellIdOfPosition(SiLocalPosition const &pos) const {
//
//    Find the row
//
    int strip = (int) floor(pos.xPhi() / m_pitch) + m_nStrips / 2;
    if (strip < 0 || strip >= m_nStrips) {
        return SiCellId(); // return an invalid id
    }

    int row = (int) floor(pos.xEta() / m_length) + m_nRows / 2; 
    if (row < 0 || row >= m_nRows) {
        return SiCellId(); // return an invalid id
    }
    int strip1D = strip1Dim(strip, row);
    /*
    if (strip1D >= (1 << 15)) { // SiCellId reserves 16 bits for phi, most sig bit is for sign, so 2^15 - 1 is max
        return SiCellId(); // Invalid
    }
    */

    return SiCellId(strip1D, 0);
}

SiLocalPosition StripBoxDesign::localPositionOfCell(SiCellId const &cellId) const {

    int row, strip;
    getStripRow(cellId, &strip, &row);
    double eta = ((double) row - (double) m_nRows / 2. + 0.5) * m_length;
    double phi = ((double) strip - (double) m_nStrips / 2. + 0.5) * m_pitch;

    return SiLocalPosition(eta, phi, 0.0);
}

SiLocalPosition StripBoxDesign::localPositionOfCluster(SiCellId const &cellId,
                                                       int clusterSize) const {

    SiLocalPosition pos = localPositionOfCell(cellId);

    if (clusterSize > 1) {
        double shift = (clusterSize - 1) * m_pitch / 2.;
        pos.xPhi(pos.xPhi() + shift); // get then set xPhi
    }

    return pos;
}

/// Give end points of the strip that covers the given position
std::pair<SiLocalPosition, SiLocalPosition> StripBoxDesign::endsOfStrip(SiLocalPosition const &pos) const {

  
    int strip, row;
    closestStripRowOfPosition(pos, strip, row);

    double etaStart = (row - m_nRows / 2.) * m_length;
    double etaEnd = etaStart + m_length;

    double phi = (strip - m_nStrips / 2. + 0.5) * m_pitch;

    SiLocalPosition end1(etaStart, phi, 0.0);
    SiLocalPosition end2(etaEnd, phi, 0.0);

    return pair<SiLocalPosition, SiLocalPosition>(end1, end2);
}



void StripBoxDesign::closestStripRowOfPosition(SiLocalPosition const &pos, int & strip, int & row) const {
      	    	        
    strip = (int) floor(pos.xPhi() / m_pitch) + m_nStrips / 2;
    if (strip < 0 )  strip = 0;
    if (strip >= m_nStrips) strip = (m_nStrips -1);
  	 
    row = (int) floor(pos.xEta() / m_length) + m_nRows / 2;
    if (row < 0) row = 0;
    if (row >= m_nRows) row = (m_nRows -1);
}
  	  



bool StripBoxDesign::inActiveArea(SiLocalPosition const &pos,
                                  bool /*checkBondGap*/) const {
    int strip = (int) floor(pos.xPhi() / m_pitch) + m_nStrips / 2;
    if (strip < 0 || strip >= m_nStrips) return false;
  	 
    int row = (int) floor(pos.xEta() / m_length) + m_nRows / 2;
    if (row < 0 || row >= m_nRows) return false;
    return true;
}

// Used in surfaceChargesGenerator
double StripBoxDesign::scaledDistanceToNearestDiode(SiLocalPosition const &pos) const {
    int strip = (int) floor(pos.xPhi() / m_pitch) + m_nStrips / 2;
    if (strip < 0) strip = 0;
    if (strip >= m_nStrips) strip = m_nStrips - 1;
    double stripPhi = (strip - m_nStrips / 2 + 0.5) * m_pitch;
    return fabs(pos.xPhi() - stripPhi) / m_pitch;
}

/// Return strip width, centre, length etc. Hard to find if this is used or not.
SiDiodesParameters StripBoxDesign::parameters(SiCellId const & /*cellId*/) const {
    throw std::runtime_error("Call to StripBoxDesign::parameters; not yet implemented");
}

// Used in VP1 graphics. DEPRECATED.
SiLocalPosition StripBoxDesign::positionFromStrip(SiCellId const &cellId) const {
//    throw std::runtime_error("Deprecated positionFromStrip called.");
    return localPositionOfCell(cellId);
}

// DEPRECATED but pure virtual in base class; which row?? - assume row 0.
SiLocalPosition StripBoxDesign::positionFromStrip(const int stripNumber) const {
    return localPositionOfCell(SiCellId(stripNumber, 0));
}

/// DEPRECATED: only used in a stupid example (2014)
///Check if cell is in range. Returns the original cellId if it is in range, otherwise it
// returns an invalid id.
SiCellId StripBoxDesign::cellIdInRange(const SiCellId &cellId) const {

    if (!cellId.isValid()) {
        return SiCellId(); // Invalid
    }
    int strip, row;
    getStripRow(cellId, &strip, &row);
    if (strip < 0 || row < 0 || row >= m_nRows || strip >= m_nStrips) {
        return SiCellId(); // Invalid
    }
    return cellId;
}

double StripBoxDesign::length() const {
    return m_length*m_nRows;
}

double StripBoxDesign::width() const {
    return m_pitch * m_nStrips;
}

double StripBoxDesign::minWidth() const {
    return width();
}

double StripBoxDesign::maxWidth() const {
    return width();
}

double StripBoxDesign::etaPitch() const {
    return m_length;
}

HepGeom::Vector3D<double> StripBoxDesign::phiMeasureSegment(const SiLocalPosition & /*position*/)
const {
    throw std::runtime_error("Call to phiMeasureSegment, DEPRECATED, not implemented.");
}

/// DEPRECATED: Unused (2014)
void StripBoxDesign::distanceToDetectorEdge(SiLocalPosition const & pos,
                                            double & etaDist,
                                            double & phiDist) const {
    
 // As the calculation is symmetric around 0,0 we only have to test it for one side.
  double xEta = abs(pos.xEta()); //assuming centered around 0?!?
   double xPhi = abs(pos.xPhi());
 
   double xEtaEdge = 0.5 * length();
   double xPhiEdge = 0.5 * width();
 
   // Distance to top/bottom
   etaDist = xEtaEdge - xEta;
   
   // Distance to right/left edge
   phiDist = xPhiEdge - xPhi;


}

} // namespace InDetDD
