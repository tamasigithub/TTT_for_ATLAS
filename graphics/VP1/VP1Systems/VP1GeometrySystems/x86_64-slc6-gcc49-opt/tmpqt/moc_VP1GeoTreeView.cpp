/****************************************************************************
** Meta object code from reading C++ file 'VP1GeoTreeView.h'
**
** Created: Mon Jan 28 15:21:31 2019
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../VP1GeometrySystems/VP1GeoTreeView.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'VP1GeoTreeView.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_VP1GeoTreeView[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      16,   15,   15,   15, 0x0a,
      44,   15,   15,   15, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_VP1GeoTreeView[] = {
    "VP1GeoTreeView\0\0updateAllNonHiddenIndices()\0"
    "scheduleUpdateOfAllNonHiddenIndices()\0"
};

void VP1GeoTreeView::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        VP1GeoTreeView *_t = static_cast<VP1GeoTreeView *>(_o);
        switch (_id) {
        case 0: _t->updateAllNonHiddenIndices(); break;
        case 1: _t->scheduleUpdateOfAllNonHiddenIndices(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData VP1GeoTreeView::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject VP1GeoTreeView::staticMetaObject = {
    { &QTreeView::staticMetaObject, qt_meta_stringdata_VP1GeoTreeView,
      qt_meta_data_VP1GeoTreeView, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &VP1GeoTreeView::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *VP1GeoTreeView::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *VP1GeoTreeView::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_VP1GeoTreeView))
        return static_cast<void*>(const_cast< VP1GeoTreeView*>(this));
    return QTreeView::qt_metacast(_clname);
}

int VP1GeoTreeView::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QTreeView::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
