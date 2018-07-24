/********************************************************************************
** Form generated from reading UI file 'settings_muonchamber_form.ui'
**
** Created: Thu May 17 17:51:09 2018
**      by: Qt User Interface Compiler version 4.8.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SETTINGS_MUONCHAMBER_FORM_H
#define UI_SETTINGS_MUONCHAMBER_FORM_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QGridLayout>
#include <QtGui/QGroupBox>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_GeoSysSettingsMuonChamberForm
{
public:
    QVBoxLayout *verticalLayout_2;
    QGroupBox *groupBox_muonchamberconfig;
    QVBoxLayout *verticalLayout;
    QGridLayout *_3;
    QPushButton *pushButton_muonadapt_resetToAllChambers;
    QPushButton *pushButton_muonadapt_adapttoevtdata;
    QCheckBox *checkBox_muonadapt_autoadapt;
    QLabel *label_4;
    QHBoxLayout *_4;
    QSpacerItem *spacerItem;
    QVBoxLayout *_5;
    QCheckBox *checkBox_muonadapt_openmdtchambers;
    QHBoxLayout *_6;
    QSpacerItem *spacerItem1;
    QVBoxLayout *_7;
    QCheckBox *checkBox_muonadapt_hidetubes;
    QCheckBox *checkBox_muonadapt_hiderpcvolumes;
    QCheckBox *checkBox_muonadapt_opencscchambers;
    QCheckBox *checkBox_muonadapt_opentgcchambers;
    QHBoxLayout *_8;
    QSpacerItem *spacerItem2;
    QPushButton *pushButton_close;

    void setupUi(QWidget *GeoSysSettingsMuonChamberForm)
    {
        if (GeoSysSettingsMuonChamberForm->objectName().isEmpty())
            GeoSysSettingsMuonChamberForm->setObjectName(QString::fromUtf8("GeoSysSettingsMuonChamberForm"));
        GeoSysSettingsMuonChamberForm->resize(201, 281);
        verticalLayout_2 = new QVBoxLayout(GeoSysSettingsMuonChamberForm);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        groupBox_muonchamberconfig = new QGroupBox(GeoSysSettingsMuonChamberForm);
        groupBox_muonchamberconfig->setObjectName(QString::fromUtf8("groupBox_muonchamberconfig"));
        verticalLayout = new QVBoxLayout(groupBox_muonchamberconfig);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        _3 = new QGridLayout();
        _3->setObjectName(QString::fromUtf8("_3"));
        _3->setHorizontalSpacing(2);
        _3->setVerticalSpacing(4);
        pushButton_muonadapt_resetToAllChambers = new QPushButton(groupBox_muonchamberconfig);
        pushButton_muonadapt_resetToAllChambers->setObjectName(QString::fromUtf8("pushButton_muonadapt_resetToAllChambers"));

        _3->addWidget(pushButton_muonadapt_resetToAllChambers, 0, 0, 1, 2);

        pushButton_muonadapt_adapttoevtdata = new QPushButton(groupBox_muonchamberconfig);
        pushButton_muonadapt_adapttoevtdata->setObjectName(QString::fromUtf8("pushButton_muonadapt_adapttoevtdata"));

        _3->addWidget(pushButton_muonadapt_adapttoevtdata, 1, 0, 1, 1);

        checkBox_muonadapt_autoadapt = new QCheckBox(groupBox_muonchamberconfig);
        checkBox_muonadapt_autoadapt->setObjectName(QString::fromUtf8("checkBox_muonadapt_autoadapt"));

        _3->addWidget(checkBox_muonadapt_autoadapt, 1, 1, 1, 1);


        verticalLayout->addLayout(_3);

        label_4 = new QLabel(groupBox_muonchamberconfig);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        verticalLayout->addWidget(label_4);

        _4 = new QHBoxLayout();
        _4->setSpacing(0);
        _4->setObjectName(QString::fromUtf8("_4"));
        spacerItem = new QSpacerItem(5, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _4->addItem(spacerItem);

        _5 = new QVBoxLayout();
        _5->setSpacing(0);
        _5->setObjectName(QString::fromUtf8("_5"));
        checkBox_muonadapt_openmdtchambers = new QCheckBox(groupBox_muonchamberconfig);
        checkBox_muonadapt_openmdtchambers->setObjectName(QString::fromUtf8("checkBox_muonadapt_openmdtchambers"));
        checkBox_muonadapt_openmdtchambers->setChecked(true);

        _5->addWidget(checkBox_muonadapt_openmdtchambers);

        _6 = new QHBoxLayout();
        _6->setSpacing(0);
        _6->setObjectName(QString::fromUtf8("_6"));
        spacerItem1 = new QSpacerItem(10, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _6->addItem(spacerItem1);

        _7 = new QVBoxLayout();
        _7->setSpacing(0);
        _7->setObjectName(QString::fromUtf8("_7"));
        checkBox_muonadapt_hidetubes = new QCheckBox(groupBox_muonchamberconfig);
        checkBox_muonadapt_hidetubes->setObjectName(QString::fromUtf8("checkBox_muonadapt_hidetubes"));
        checkBox_muonadapt_hidetubes->setChecked(true);

        _7->addWidget(checkBox_muonadapt_hidetubes);

        checkBox_muonadapt_hiderpcvolumes = new QCheckBox(groupBox_muonchamberconfig);
        checkBox_muonadapt_hiderpcvolumes->setObjectName(QString::fromUtf8("checkBox_muonadapt_hiderpcvolumes"));
        checkBox_muonadapt_hiderpcvolumes->setChecked(true);

        _7->addWidget(checkBox_muonadapt_hiderpcvolumes);


        _6->addLayout(_7);


        _5->addLayout(_6);

        checkBox_muonadapt_opencscchambers = new QCheckBox(groupBox_muonchamberconfig);
        checkBox_muonadapt_opencscchambers->setObjectName(QString::fromUtf8("checkBox_muonadapt_opencscchambers"));

        _5->addWidget(checkBox_muonadapt_opencscchambers);

        checkBox_muonadapt_opentgcchambers = new QCheckBox(groupBox_muonchamberconfig);
        checkBox_muonadapt_opentgcchambers->setObjectName(QString::fromUtf8("checkBox_muonadapt_opentgcchambers"));

        _5->addWidget(checkBox_muonadapt_opentgcchambers);


        _4->addLayout(_5);


        verticalLayout->addLayout(_4);


        verticalLayout_2->addWidget(groupBox_muonchamberconfig);

        _8 = new QHBoxLayout();
        _8->setObjectName(QString::fromUtf8("_8"));
        spacerItem2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _8->addItem(spacerItem2);

        pushButton_close = new QPushButton(GeoSysSettingsMuonChamberForm);
        pushButton_close->setObjectName(QString::fromUtf8("pushButton_close"));

        _8->addWidget(pushButton_close);


        verticalLayout_2->addLayout(_8);


        retranslateUi(GeoSysSettingsMuonChamberForm);

        QMetaObject::connectSlotsByName(GeoSysSettingsMuonChamberForm);
    } // setupUi

    void retranslateUi(QWidget *GeoSysSettingsMuonChamberForm)
    {
        GeoSysSettingsMuonChamberForm->setWindowTitle(QApplication::translate("GeoSysSettingsMuonChamberForm", "Form", 0, QApplication::UnicodeUTF8));
        groupBox_muonchamberconfig->setTitle(QApplication::translate("GeoSysSettingsMuonChamberForm", "Muon Chamber Configuration", 0, QApplication::UnicodeUTF8));
        pushButton_muonadapt_resetToAllChambers->setText(QApplication::translate("GeoSysSettingsMuonChamberForm", "Reset to all chambers", 0, QApplication::UnicodeUTF8));
        pushButton_muonadapt_adapttoevtdata->setText(QApplication::translate("GeoSysSettingsMuonChamberForm", "Adapt to event data", 0, QApplication::UnicodeUTF8));
        checkBox_muonadapt_autoadapt->setText(QApplication::translate("GeoSysSettingsMuonChamberForm", "Auto", 0, QApplication::UnicodeUTF8));
        label_4->setText(QApplication::translate("GeoSysSettingsMuonChamberForm", "Adaption options:", 0, QApplication::UnicodeUTF8));
        checkBox_muonadapt_openmdtchambers->setText(QApplication::translate("GeoSysSettingsMuonChamberForm", "Open MDT chambers", 0, QApplication::UnicodeUTF8));
        checkBox_muonadapt_hidetubes->setText(QApplication::translate("GeoSysSettingsMuonChamberForm", "Hide tubes", 0, QApplication::UnicodeUTF8));
        checkBox_muonadapt_hiderpcvolumes->setText(QApplication::translate("GeoSysSettingsMuonChamberForm", "Hide RPC volumes", 0, QApplication::UnicodeUTF8));
        checkBox_muonadapt_opencscchambers->setText(QApplication::translate("GeoSysSettingsMuonChamberForm", "Open CSC chambers", 0, QApplication::UnicodeUTF8));
        checkBox_muonadapt_opentgcchambers->setText(QApplication::translate("GeoSysSettingsMuonChamberForm", "Open TGC chambers", 0, QApplication::UnicodeUTF8));
        pushButton_close->setText(QApplication::translate("GeoSysSettingsMuonChamberForm", "&Close", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class GeoSysSettingsMuonChamberForm: public Ui_GeoSysSettingsMuonChamberForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTINGS_MUONCHAMBER_FORM_H
