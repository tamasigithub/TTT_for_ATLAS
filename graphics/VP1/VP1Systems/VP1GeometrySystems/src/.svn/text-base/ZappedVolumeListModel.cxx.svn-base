#include "VP1GeometrySystems/ZappedVolumeListModel.h"

//____________________________________________________________________
ZappedVolumeListModel::ZappedVolumeListModel(QObject * parent)
  : QAbstractListModel(parent)
{
}

//____________________________________________________________________
ZappedVolumeListModel::~ZappedVolumeListModel()
{
}

//____________________________________________________________________
void ZappedVolumeListModel::activated(const QModelIndex& index)
{
  m_zappedhandles.at(index.row())->setState(VP1GeoFlags::CONTRACTED);
}
