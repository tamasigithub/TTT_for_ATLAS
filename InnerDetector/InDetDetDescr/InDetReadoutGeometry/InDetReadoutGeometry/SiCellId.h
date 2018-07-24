///////////////////////////////////////////////////////////////////
// SiCellId.h
///////////////////////////////////////////////////////////////////
// (c) ATLAS Detector software
///////////////////////////////////////////////////////////////////

#ifndef INDETREADOUTGEOMETRY_SICELLID_H
#define INDETREADOUTGEOMETRY_SICELLID_H

#include <iostream>

namespace InDetDD {

  /**  @class SiCellId
    
    Identifier for the strip or pixel cell.
    Just the strip number for SCT or phi_index, eta_index for pixel.
    Packs the numbers in an int.
    Supports negative indices and is initialized in an invalid state 
    when using the default constructor.

    @author Grant Gorfine 
  */


  class SiCellId {

  ///////////////////////////////////////////////////////////////////
  // Public methods:
  ///////////////////////////////////////////////////////////////////
    public:

  /// Constructor. Set in invalid state. 
  SiCellId(); 
  /// Construct with strip number. 
  SiCellId(int strip);
  /// Construct with phi, eta index. 
  SiCellId(int phiIndex, int etaIndex);

  ///////////////////////////////////////////////////////////////////
  // Const methods:
  ///////////////////////////////////////////////////////////////////

  // Get the indices
  // NB. phiIndex() and strip() are equivalent.
  /// Get eta index.
  int etaIndex() const;
  /// Get phi index. Equivalent to strip().
  int phiIndex() const;
  /// Get strip number. Equivalent to phiIndex().
  int strip() const;

  /// Test if its in a valid state
  bool isValid() const;

  /// Test equality.
  bool operator==(const SiCellId & other) const;
  /// Test inequality.
  bool operator!=(const SiCellId & other) const;
  
  /// Operator for sorting
  bool operator<(const SiCellId & other) const;

  unsigned long long word() const { return m_word; } 
  
private:
  unsigned long long  m_word;

  // Masks and shift values.
  // bits 0 - 23  : phi_index
  // bits 24 - 38 : eta_index
  // bit  39      : valid flag
  // #pragma enumsalwaysint off
  // #pragma longlong_enums on
  
  //enum MaskAndShiftConstants {
  long long PHI_MASK  = 0x00ffffff; 
  long long PHI_NEG   = 0x00800000; //  (PHI_MASK >> 1 + 1)
  long long ETA_MASK  = 0x00007fff;
  long long ETA_SHIFT = 24;
  long long ETA_NEG   = 0x4000000000; // ((ETA_MASK >> 1 + 1) << ETA_SHIFT) 
  long long VALID     = 0x8000000000;
  //};

};

std::ostream & operator << (std::ostream & os, const SiCellId & cellId);

///////////////////////////////////////////////////////////////////
// Inline methods:
///////////////////////////////////////////////////////////////////
inline SiCellId::SiCellId()
{
  // set in invalid state
  // This sets the invalid bit plus set phi and eta index to there most negative value
  m_word = VALID | ETA_NEG | PHI_NEG ;
}

inline SiCellId::SiCellId(int phi, int eta)
{
  long long phiIndex(phi)	;
  long long etaIndex(eta)      ;

  // The negative check is not really necessary if negative numbers are represented as twos complement but
  // I don't think that assumption is guaranteed to be portable.
  if (phiIndex < 0) phiIndex = PHI_MASK + phiIndex + 1; // For negative number store as two's complement
  if (etaIndex < 0) etaIndex = ETA_MASK + etaIndex + 1;
  m_word = (phiIndex  & PHI_MASK) | ((etaIndex & ETA_MASK) << ETA_SHIFT);
}

inline SiCellId::SiCellId(int st)
{
  long long strip(st)				;
  if (strip < 0) strip = PHI_MASK + strip + 1	;
  m_word = strip & PHI_MASK;
}

inline int SiCellId::etaIndex() const
{
  if (m_word & ETA_NEG) { // Negative index
    return ((m_word >> ETA_SHIFT) & ETA_MASK) - ETA_MASK - 1;
  } 
  return (m_word >> ETA_SHIFT) & ETA_MASK;
}

inline int SiCellId::phiIndex() const
{
  if (m_word & PHI_NEG) { // Negative index
    return (m_word & PHI_MASK) - PHI_MASK - 1;
  } 
  return (m_word & PHI_MASK);

}

inline int SiCellId::strip() const
{
  return phiIndex();
}

inline bool SiCellId::isValid() const
{
  return !(m_word & VALID);
}

inline bool SiCellId::operator==(const SiCellId & other) const
{
  return (m_word == other.m_word);
} 

inline bool SiCellId::operator!=(const SiCellId & other) const
{
  return (m_word != other.m_word);
} 

inline bool SiCellId::operator<(const SiCellId & other) const
{
  return (m_word < other.m_word);
} 


} // namespace InDetDD


#endif // INDETREADOUTGEOMETRY_SICELLID_H
