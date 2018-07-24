/********************************************************************************
** Form generated from reading UI file 'settings_interactions_form.ui'
**
** Created: Thu May 17 17:51:09 2018
**      by: Qt User Interface Compiler version 4.8.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SETTINGS_INTERACTIONS_FORM_H
#define UI_SETTINGS_INTERACTIONS_FORM_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QGridLayout>
#include <QtGui/QGroupBox>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_GeoSysSettingsInteractionsForm
{
public:
    QVBoxLayout *verticalLayout;
    QHBoxLayout *_3;
    QCheckBox *checkBox_geomselectable;
    QSpacerItem *spacerItem;
    QGroupBox *groupBox_printOnSelection;
    QGridLayout *blabla_2;
    QCheckBox *checkBox_print_shape;
    QCheckBox *checkBox_print_material;
    QCheckBox *checkBox_print_transform;
    QCheckBox *checkBox_print_mass;
    QCheckBox *checkBox_print_copyno;
    QCheckBox *checkBox_print_tree;
    QCheckBox *checkBox_print_muonstationinfo;
    QGroupBox *groupBox_automaticViewReorientations;
    QVBoxLayout *vboxLayout;
    QCheckBox *checkBox_zoomToVolumes;
    QCheckBox *checkBox_AutomaticMuonChamberEndViews;
    QHBoxLayout *_4;
    QSpacerItem *spacerItem1;
    QPushButton *pushButton_close;

    void setupUi(QWidget *GeoSysSettingsInteractionsForm)
    {
        if (GeoSysSettingsInteractionsForm->objectName().isEmpty())
            GeoSysSettingsInteractionsForm->setObjectName(QString::fromUtf8("GeoSysSettingsInteractionsForm"));
        GeoSysSettingsInteractionsForm->resize(240, 298);
        verticalLayout = new QVBoxLayout(GeoSysSettingsInteractionsForm);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        _3 = new QHBoxLayout();
        _3->setObjectName(QString::fromUtf8("_3"));
        checkBox_geomselectable = new QCheckBox(GeoSysSettingsInteractionsForm);
        checkBox_geomselectable->setObjectName(QString::fromUtf8("checkBox_geomselectable"));
        checkBox_geomselectable->setChecked(true);

        _3->addWidget(checkBox_geomselectable);

        spacerItem = new QSpacerItem(16, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _3->addItem(spacerItem);


        verticalLayout->addLayout(_3);

        groupBox_printOnSelection = new QGroupBox(GeoSysSettingsInteractionsForm);
        groupBox_printOnSelection->setObjectName(QString::fromUtf8("groupBox_printOnSelection"));
        blabla_2 = new QGridLayout(groupBox_printOnSelection);
        blabla_2->setObjectName(QString::fromUtf8("blabla_2"));
        checkBox_print_shape = new QCheckBox(groupBox_printOnSelection);
        checkBox_print_shape->setObjectName(QString::fromUtf8("checkBox_print_shape"));

        blabla_2->addWidget(checkBox_print_shape, 0, 0, 1, 1);

        checkBox_print_material = new QCheckBox(groupBox_printOnSelection);
        checkBox_print_material->setObjectName(QString::fromUtf8("checkBox_print_material"));
        checkBox_print_material->setChecked(true);

        blabla_2->addWidget(checkBox_print_material, 0, 1, 1, 1);

        checkBox_print_transform = new QCheckBox(groupBox_printOnSelection);
        checkBox_print_transform->setObjectName(QString::fromUtf8("checkBox_print_transform"));

        blabla_2->addWidget(checkBox_print_transform, 1, 0, 1, 1);

        checkBox_print_mass = new QCheckBox(groupBox_printOnSelection);
        checkBox_print_mass->setObjectName(QString::fromUtf8("checkBox_print_mass"));

        blabla_2->addWidget(checkBox_print_mass, 1, 1, 1, 1);

        checkBox_print_copyno = new QCheckBox(groupBox_printOnSelection);
        checkBox_print_copyno->setObjectName(QString::fromUtf8("checkBox_print_copyno"));

        blabla_2->addWidget(checkBox_print_copyno, 2, 0, 1, 1);

        checkBox_print_tree = new QCheckBox(groupBox_printOnSelection);
        checkBox_print_tree->setObjectName(QString::fromUtf8("checkBox_print_tree"));

        blabla_2->addWidget(checkBox_print_tree, 2, 1, 1, 1);

        checkBox_print_muonstationinfo = new QCheckBox(groupBox_printOnSelection);
        checkBox_print_muonstationinfo->setObjectName(QString::fromUtf8("checkBox_print_muonstationinfo"));
        checkBox_print_muonstationinfo->setChecked(true);

        blabla_2->addWidget(checkBox_print_muonstationinfo, 3, 0, 1, 2);


        verticalLayout->addWidget(groupBox_printOnSelection);

        groupBox_automaticViewReorientations = new QGroupBox(GeoSysSettingsInteractionsForm);
        groupBox_automaticViewReorientations->setObjectName(QString::fromUtf8("groupBox_automaticViewReorientations"));
        vboxLayout = new QVBoxLayout(groupBox_automaticViewReorientations);
        vboxLayout->setObjectName(QString::fromUtf8("vboxLayout"));
        checkBox_zoomToVolumes = new QCheckBox(groupBox_automaticViewReorientations);
        checkBox_zoomToVolumes->setObjectName(QString::fromUtf8("checkBox_zoomToVolumes"));

        vboxLayout->addWidget(checkBox_zoomToVolumes);

        checkBox_AutomaticMuonChamberEndViews = new QCheckBox(groupBox_automaticViewReorientations);
        checkBox_AutomaticMuonChamberEndViews->setObjectName(QString::fromUtf8("checkBox_AutomaticMuonChamberEndViews"));

        vboxLayout->addWidget(checkBox_AutomaticMuonChamberEndViews);


        verticalLayout->addWidget(groupBox_automaticViewReorientations);

        _4 = new QHBoxLayout();
        _4->setObjectName(QString::fromUtf8("_4"));
        spacerItem1 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _4->addItem(spacerItem1);

        pushButton_close = new QPushButton(GeoSysSettingsInteractionsForm);
        pushButton_close->setObjectName(QString::fromUtf8("pushButton_close"));

        _4->addWidget(pushButton_close);


        verticalLayout->addLayout(_4);


        retranslateUi(GeoSysSettingsInteractionsForm);

        QMetaObject::connectSlotsByName(GeoSysSettingsInteractionsForm);
    } // setupUi

    void retranslateUi(QWidget *GeoSysSettingsInteractionsForm)
    {
        GeoSysSettingsInteractionsForm->setWindowTitle(QApplication::translate("GeoSysSettingsInteractionsForm", "Form", 0, QApplication::UnicodeUTF8));
        checkBox_geomselectable->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "Geometry is selectable", 0, QApplication::UnicodeUTF8));
        groupBox_printOnSelection->setTitle(QApplication::translate("GeoSysSettingsInteractionsForm", "Print on Selection", 0, QApplication::UnicodeUTF8));
        checkBox_print_shape->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "Shape", 0, QApplication::UnicodeUTF8));
        checkBox_print_material->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "Material", 0, QApplication::UnicodeUTF8));
        checkBox_print_transform->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "Transform", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        checkBox_print_mass->setToolTip(QApplication::translate("GeoSysSettingsInteractionsForm", "<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">In the case where either the selected volume or one its daugthers (or daughters daughters, etc.), is defined as a boolean volume, this might not give an entirely accurate result.</p></body></html>", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        checkBox_print_mass->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "Mass (unreliable)", 0, QApplication::UnicodeUTF8));
        checkBox_print_copyno->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "Copy No", 0, QApplication::UnicodeUTF8));
        checkBox_print_tree->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "Tree", 0, QApplication::UnicodeUTF8));
        checkBox_print_muonstationinfo->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "Muon station info", 0, QApplication::UnicodeUTF8));
        groupBox_automaticViewReorientations->setTitle(QApplication::translate("GeoSysSettingsInteractionsForm", "Automatic view reorientations", 0, QApplication::UnicodeUTF8));
        checkBox_zoomToVolumes->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "Zoom to volumes", 0, QApplication::UnicodeUTF8));
        checkBox_AutomaticMuonChamberEndViews->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "Muon Chamber End Views", 0, QApplication::UnicodeUTF8));
        pushButton_close->setText(QApplication::translate("GeoSysSettingsInteractionsForm", "&Close", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class GeoSysSettingsInteractionsForm: public Ui_GeoSysSettingsInteractionsForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTINGS_INTERACTIONS_FORM_H
