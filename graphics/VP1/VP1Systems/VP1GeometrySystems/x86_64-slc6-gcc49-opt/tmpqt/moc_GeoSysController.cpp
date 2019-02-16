/****************************************************************************
** Meta object code from reading C++ file 'GeoSysController.h'
**
** Created: Mon Jan 28 15:21:26 2019
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../VP1GeometrySystems/GeoSysController.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'GeoSysController.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_GeoSysController[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      27,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      14,       // signalCount

 // signals: signature, parameters, type, tag, flags
      18,   17,   17,   17, 0x05,
      45,   17,   17,   17, 0x05,
     121,   17,   17,   17, 0x05,
     153,   17,   17,   17, 0x05,
     172,   17,   17,   17, 0x05,
     206,   17,   17,   17, 0x05,
     243,  237,   17,   17, 0x05,
     295,   17,   17,   17, 0x05,
     342,  340,   17,   17, 0x05,
     389,   17,   17,   17, 0x05,
     425,  340,   17,   17, 0x05,
     489,   17,   17,   17, 0x05,
     525,  340,   17,   17, 0x05,
     559,   17,   17,   17, 0x05,

 // slots: signature, parameters, type, tag, flags
     590,   17,   17,   17, 0x08,
     620,   17,   17,   17, 0x08,
     662,   17,   17,   17, 0x08,
     698,   17,   17,   17, 0x08,
     716,   17,   17,   17, 0x08,
     741,   17,   17,   17, 0x08,
     766,   17,   17,   17, 0x08,
     802,   17,   17,   17, 0x08,
     830,   17,   17,   17, 0x08,
     870,   17,   17,   17, 0x08,
     907,   17,   17,   17, 0x08,
     930,   17,   17,   17, 0x08,
     954,   17,   17,   17, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_GeoSysController[] = {
    "GeoSysController\0\0transparencyChanged(float)\0"
    "muonChamberAdaptionStyleChanged(VP1GeoFlags::MuonChamberAdaptionStyleF"
    "lags)\0"
    "showVolumeOutLinesChanged(bool)\0"
    "labelsChanged(int)\0labelPosOffsetChanged(QList<int>)\0"
    "adaptMuonChambersToEventData()\0,,,,,\0"
    "autoAdaptPixelsOrSCT(bool,bool,bool,bool,bool,bool)\0"
    "resetSubSystems(VP1GeoFlags::SubSystemFlags)\0"
    ",\0autoExpandByVolumeOrMaterialName(bool,QString)\0"
    "actionOnAllNonStandardVolumes(bool)\0"
    "volumeStateChangeRequested(VolumeHandle*,VP1GeoFlags::VOLSTATE)\0"
    "volumeResetRequested(VolumeHandle*)\0"
    "saveMaterialsToFile(QString,bool)\0"
    "loadMaterialsFromFile(QString)\0"
    "possibleChange_transparency()\0"
    "possibleChange_muonChamberAdaptionStyle()\0"
    "possibleChange_showVolumeOutLines()\0"
    "updatePickStyle()\0saveMaterialsRequested()\0"
    "loadMaterialsRequested()\0"
    "emit_adaptMuonChambersToEventData()\0"
    "emit_autoAdaptPixelsOrSCT()\0"
    "emit_autoExpandByVolumeOrMaterialName()\0"
    "emit_actionOnAllNonStandardVolumes()\0"
    "emit_resetSubSystems()\0possibleChange_labels()\0"
    "possibleChange_labelPosOffset()\0"
};

void GeoSysController::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        GeoSysController *_t = static_cast<GeoSysController *>(_o);
        switch (_id) {
        case 0: _t->transparencyChanged((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 1: _t->muonChamberAdaptionStyleChanged((*reinterpret_cast< VP1GeoFlags::MuonChamberAdaptionStyleFlags(*)>(_a[1]))); break;
        case 2: _t->showVolumeOutLinesChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->labelsChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->labelPosOffsetChanged((*reinterpret_cast< QList<int>(*)>(_a[1]))); break;
        case 5: _t->adaptMuonChambersToEventData(); break;
        case 6: _t->autoAdaptPixelsOrSCT((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2])),(*reinterpret_cast< bool(*)>(_a[3])),(*reinterpret_cast< bool(*)>(_a[4])),(*reinterpret_cast< bool(*)>(_a[5])),(*reinterpret_cast< bool(*)>(_a[6]))); break;
        case 7: _t->resetSubSystems((*reinterpret_cast< VP1GeoFlags::SubSystemFlags(*)>(_a[1]))); break;
        case 8: _t->autoExpandByVolumeOrMaterialName((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 9: _t->actionOnAllNonStandardVolumes((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 10: _t->volumeStateChangeRequested((*reinterpret_cast< VolumeHandle*(*)>(_a[1])),(*reinterpret_cast< VP1GeoFlags::VOLSTATE(*)>(_a[2]))); break;
        case 11: _t->volumeResetRequested((*reinterpret_cast< VolumeHandle*(*)>(_a[1]))); break;
        case 12: _t->saveMaterialsToFile((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 13: _t->loadMaterialsFromFile((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 14: _t->possibleChange_transparency(); break;
        case 15: _t->possibleChange_muonChamberAdaptionStyle(); break;
        case 16: _t->possibleChange_showVolumeOutLines(); break;
        case 17: _t->updatePickStyle(); break;
        case 18: _t->saveMaterialsRequested(); break;
        case 19: _t->loadMaterialsRequested(); break;
        case 20: _t->emit_adaptMuonChambersToEventData(); break;
        case 21: _t->emit_autoAdaptPixelsOrSCT(); break;
        case 22: _t->emit_autoExpandByVolumeOrMaterialName(); break;
        case 23: _t->emit_actionOnAllNonStandardVolumes(); break;
        case 24: _t->emit_resetSubSystems(); break;
        case 25: _t->possibleChange_labels(); break;
        case 26: _t->possibleChange_labelPosOffset(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData GeoSysController::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject GeoSysController::staticMetaObject = {
    { &VP1Controller::staticMetaObject, qt_meta_stringdata_GeoSysController,
      qt_meta_data_GeoSysController, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &GeoSysController::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *GeoSysController::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *GeoSysController::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_GeoSysController))
        return static_cast<void*>(const_cast< GeoSysController*>(this));
    return VP1Controller::qt_metacast(_clname);
}

int GeoSysController::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = VP1Controller::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 27)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 27;
    }
    return _id;
}

// SIGNAL 0
void GeoSysController::transparencyChanged(float _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void GeoSysController::muonChamberAdaptionStyleChanged(VP1GeoFlags::MuonChamberAdaptionStyleFlags _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void GeoSysController::showVolumeOutLinesChanged(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void GeoSysController::labelsChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void GeoSysController::labelPosOffsetChanged(QList<int> _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void GeoSysController::adaptMuonChambersToEventData()
{
    QMetaObject::activate(this, &staticMetaObject, 5, 0);
}

// SIGNAL 6
void GeoSysController::autoAdaptPixelsOrSCT(bool _t1, bool _t2, bool _t3, bool _t4, bool _t5, bool _t6)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)), const_cast<void*>(reinterpret_cast<const void*>(&_t5)), const_cast<void*>(reinterpret_cast<const void*>(&_t6)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void GeoSysController::resetSubSystems(VP1GeoFlags::SubSystemFlags _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void GeoSysController::autoExpandByVolumeOrMaterialName(bool _t1, QString _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void GeoSysController::actionOnAllNonStandardVolumes(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}

// SIGNAL 10
void GeoSysController::volumeStateChangeRequested(VolumeHandle * _t1, VP1GeoFlags::VOLSTATE _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 10, _a);
}

// SIGNAL 11
void GeoSysController::volumeResetRequested(VolumeHandle * _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 11, _a);
}

// SIGNAL 12
void GeoSysController::saveMaterialsToFile(QString _t1, bool _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 12, _a);
}

// SIGNAL 13
void GeoSysController::loadMaterialsFromFile(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 13, _a);
}
QT_END_MOC_NAMESPACE
