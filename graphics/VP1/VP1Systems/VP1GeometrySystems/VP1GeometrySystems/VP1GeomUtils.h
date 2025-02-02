#ifndef VP1GEOMUTILS_H
#define VP1GEOMUTILS_H

class GeoMaterial;
class GeoElement;
#include <QStringList>

class VP1GeomUtils {
public:

  static QStringList geoMaterialToStringList(const GeoMaterial*);
  static QStringList geoElementToStringList(const GeoElement*);

private:
  VP1GeomUtils() {}
  ~VP1GeomUtils() {}
};

#endif
