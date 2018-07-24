/****************************************************************************
** Meta object code from reading C++ file 'VP1GeometrySystem.h'
**
** Created: Thu May 17 17:52:16 2018
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../VP1GeometrySystems/VP1GeometrySystem.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'VP1GeometrySystem.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_VP1GeometrySystem[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      23,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      19,   18,   18,   18, 0x05,
      69,   57,   18,   18, 0x05,
     104,   18,   18,   18, 0x25,

 // slots: signature, parameters, type, tag, flags
     135,   18,   18,   18, 0x0a,
     207,  197,   18,   18, 0x0a,
     247,   18,   18,   18, 0x0a,
     278,  276,   18,   18, 0x0a,
     336,   18,   18,   18, 0x09,
     354,   18,   18,   18, 0x09,
     375,   18,   18,   18, 0x09,
     406,   18,   18,   18, 0x09,
     438,   18,   18,   18, 0x09,
     484,  478,   18,   18, 0x09,
     536,   18,   18,   18, 0x09,
     581,  276,   18,   18, 0x09,
     628,   18,   18,   18, 0x09,
     664,  276,   18,   18, 0x09,
     728,   18,   18,   18, 0x09,
     764,   18,   18,   18, 0x09,
     792,  276,   18,   18, 0x09,
     826,   18,   18,   18, 0x09,
     857,   18,   18,   18, 0x09,
     872,   18,   18,   18, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_VP1GeometrySystem[] = {
    "VP1GeometrySystem\0\0"
    "appropriateMDTProjectionsChanged(int)\0"
    ",copyNumber\0plotSpectrum(QStack<QString>&,int)\0"
    "plotSpectrum(QStack<QString>&)\0"
    "reiconizeToShowSpecificMuonChambers(std::set<GeoPVConstLink>)\0"
    "chamberPV\0orientViewToMuonChamber(GeoPVConstLink)\0"
    "setCurvedSurfaceRealism(int)\0,\0"
    "muonChamberT0sChanged(std::map<GeoPVConstLink,float>,int)\0"
    "checkboxChanged()\0updateTransparency()\0"
    "adaptMuonChambersToEventData()\0"
    "adaptMuonChambersStyleChanged()\0"
    "emit_appropriateMDTProjectionsChanged()\0"
    ",,,,,\0autoAdaptPixelsOrSCT(bool,bool,bool,bool,bool,bool)\0"
    "resetSubSystems(VP1GeoFlags::SubSystemFlags)\0"
    "autoExpandByVolumeOrMaterialName(bool,QString)\0"
    "actionOnAllNonStandardVolumes(bool)\0"
    "volumeStateChangeRequested(VolumeHandle*,VP1GeoFlags::VOLSTATE)\0"
    "volumeResetRequested(VolumeHandle*)\0"
    "setShowVolumeOutLines(bool)\0"
    "saveMaterialsToFile(QString,bool)\0"
    "loadMaterialsFromFile(QString)\0"
    "setLabels(int)\0setLabelPosOffsets(QList<int>)\0"
};

void VP1GeometrySystem::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        VP1GeometrySystem *_t = static_cast<VP1GeometrySystem *>(_o);
        switch (_id) {
        case 0: _t->appropriateMDTProjectionsChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->plotSpectrum((*reinterpret_cast< QStack<QString>(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 2: _t->plotSpectrum((*reinterpret_cast< QStack<QString>(*)>(_a[1]))); break;
        case 3: _t->reiconizeToShowSpecificMuonChambers((*reinterpret_cast< const std::set<GeoPVConstLink>(*)>(_a[1]))); break;
        case 4: _t->orientViewToMuonChamber((*reinterpret_cast< const GeoPVConstLink(*)>(_a[1]))); break;
        case 5: _t->setCurvedSurfaceRealism((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->muonChamberT0sChanged((*reinterpret_cast< const std::map<GeoPVConstLink,float>(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 7: _t->checkboxChanged(); break;
        case 8: _t->updateTransparency(); break;
        case 9: _t->adaptMuonChambersToEventData(); break;
        case 10: _t->adaptMuonChambersStyleChanged(); break;
        case 11: _t->emit_appropriateMDTProjectionsChanged(); break;
        case 12: _t->autoAdaptPixelsOrSCT((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2])),(*reinterpret_cast< bool(*)>(_a[3])),(*reinterpret_cast< bool(*)>(_a[4])),(*reinterpret_cast< bool(*)>(_a[5])),(*reinterpret_cast< bool(*)>(_a[6]))); break;
        case 13: _t->resetSubSystems((*reinterpret_cast< VP1GeoFlags::SubSystemFlags(*)>(_a[1]))); break;
        case 14: _t->autoExpandByVolumeOrMaterialName((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 15: _t->actionOnAllNonStandardVolumes((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 16: _t->volumeStateChangeRequested((*reinterpret_cast< VolumeHandle*(*)>(_a[1])),(*reinterpret_cast< VP1GeoFlags::VOLSTATE(*)>(_a[2]))); break;
        case 17: _t->volumeResetRequested((*reinterpret_cast< VolumeHandle*(*)>(_a[1]))); break;
        case 18: _t->setShowVolumeOutLines((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 19: _t->saveMaterialsToFile((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 20: _t->loadMaterialsFromFile((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 21: _t->setLabels((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 22: _t->setLabelPosOffsets((*reinterpret_cast< QList<int>(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData VP1GeometrySystem::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject VP1GeometrySystem::staticMetaObject = {
    { &IVP13DSystemSimple::staticMetaObject, qt_meta_stringdata_VP1GeometrySystem,
      qt_meta_data_VP1GeometrySystem, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &VP1GeometrySystem::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *VP1GeometrySystem::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *VP1GeometrySystem::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_VP1GeometrySystem))
        return static_cast<void*>(const_cast< VP1GeometrySystem*>(this));
    return IVP13DSystemSimple::qt_metacast(_clname);
}

int VP1GeometrySystem::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = IVP13DSystemSimple::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 23)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 23;
    }
    return _id;
}

// SIGNAL 0
void VP1GeometrySystem::appropriateMDTProjectionsChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void VP1GeometrySystem::plotSpectrum(QStack<QString> & _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
