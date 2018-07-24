/********************************************************************************
** Form generated from reading UI file 'settings_misc_form.ui'
**
** Created: Thu May 17 17:51:09 2018
**      by: Qt User Interface Compiler version 4.8.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SETTINGS_MISC_FORM_H
#define UI_SETTINGS_MISC_FORM_H

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
#include <QtGui/QLineEdit>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QToolButton>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_GeoSysSettingsMiscForm
{
public:
    QVBoxLayout *verticalLayout_2;
    QGroupBox *groupBox_pixelactivemodules;
    QHBoxLayout *horizontalLayout_3;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *_2;
    QCheckBox *checkBox_pixelmod_barrel;
    QCheckBox *checkBox_pixelmod_endcapA;
    QCheckBox *checkBox_pixelmod_endcapC;
    QToolButton *toolButton_pixelmod_adapt;
    QToolButton *toolButton_pixelmod_reset;
    QSpacerItem *horizontalSpacer;
    QHBoxLayout *horizontalLayout_2;
    QLabel *label_bcmmods;
    QCheckBox *checkBox_bcmMod_Aside;
    QCheckBox *checkBox_bcmMod_Cside;
    QSpacerItem *horizontalSpacer_2;
    QSpacerItem *spacerItem;
    QGroupBox *groupBox_sctactivemodules;
    QHBoxLayout *_3;
    QHBoxLayout *_4;
    QCheckBox *checkBox_sctmod_barrel;
    QCheckBox *checkBox_sctmod_endcapA;
    QCheckBox *checkBox_sctmod_endcapC;
    QToolButton *toolButton_sctmod_adapt;
    QToolButton *toolButton_sctmod_reset;
    QSpacerItem *spacerItem1;
    QGroupBox *groupBox;
    QGridLayout *_5;
    QLabel *label_7;
    QLineEdit *lineEdit_expand_vols_matname;
    QPushButton *pushButton_expand_vols_matname;
    QLabel *label_8;
    QLineEdit *lineEdit_expand_vols_volname;
    QPushButton *pushButton_expand_vols_volname;
    QLabel *label;
    QHBoxLayout *horizontalLayout;
    QPushButton *pushButton_nonStandardShapes_Iconify;
    QPushButton *pushButton_nonStandardShapes_Expand;
    QHBoxLayout *_10;
    QSpacerItem *spacerItem2;
    QPushButton *pushButton_close;

    void setupUi(QWidget *GeoSysSettingsMiscForm)
    {
        if (GeoSysSettingsMiscForm->objectName().isEmpty())
            GeoSysSettingsMiscForm->setObjectName(QString::fromUtf8("GeoSysSettingsMiscForm"));
        GeoSysSettingsMiscForm->resize(319, 360);
        verticalLayout_2 = new QVBoxLayout(GeoSysSettingsMiscForm);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        groupBox_pixelactivemodules = new QGroupBox(GeoSysSettingsMiscForm);
        groupBox_pixelactivemodules->setObjectName(QString::fromUtf8("groupBox_pixelactivemodules"));
        horizontalLayout_3 = new QHBoxLayout(groupBox_pixelactivemodules);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        _2 = new QHBoxLayout();
        _2->setObjectName(QString::fromUtf8("_2"));
        checkBox_pixelmod_barrel = new QCheckBox(groupBox_pixelactivemodules);
        checkBox_pixelmod_barrel->setObjectName(QString::fromUtf8("checkBox_pixelmod_barrel"));
        checkBox_pixelmod_barrel->setChecked(true);

        _2->addWidget(checkBox_pixelmod_barrel);

        checkBox_pixelmod_endcapA = new QCheckBox(groupBox_pixelactivemodules);
        checkBox_pixelmod_endcapA->setObjectName(QString::fromUtf8("checkBox_pixelmod_endcapA"));
        checkBox_pixelmod_endcapA->setChecked(true);

        _2->addWidget(checkBox_pixelmod_endcapA);

        checkBox_pixelmod_endcapC = new QCheckBox(groupBox_pixelactivemodules);
        checkBox_pixelmod_endcapC->setObjectName(QString::fromUtf8("checkBox_pixelmod_endcapC"));
        checkBox_pixelmod_endcapC->setChecked(true);

        _2->addWidget(checkBox_pixelmod_endcapC);

        toolButton_pixelmod_adapt = new QToolButton(groupBox_pixelactivemodules);
        toolButton_pixelmod_adapt->setObjectName(QString::fromUtf8("toolButton_pixelmod_adapt"));

        _2->addWidget(toolButton_pixelmod_adapt);

        toolButton_pixelmod_reset = new QToolButton(groupBox_pixelactivemodules);
        toolButton_pixelmod_reset->setObjectName(QString::fromUtf8("toolButton_pixelmod_reset"));

        _2->addWidget(toolButton_pixelmod_reset);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _2->addItem(horizontalSpacer);


        verticalLayout->addLayout(_2);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        label_bcmmods = new QLabel(groupBox_pixelactivemodules);
        label_bcmmods->setObjectName(QString::fromUtf8("label_bcmmods"));

        horizontalLayout_2->addWidget(label_bcmmods);

        checkBox_bcmMod_Aside = new QCheckBox(groupBox_pixelactivemodules);
        checkBox_bcmMod_Aside->setObjectName(QString::fromUtf8("checkBox_bcmMod_Aside"));

        horizontalLayout_2->addWidget(checkBox_bcmMod_Aside);

        checkBox_bcmMod_Cside = new QCheckBox(groupBox_pixelactivemodules);
        checkBox_bcmMod_Cside->setObjectName(QString::fromUtf8("checkBox_bcmMod_Cside"));

        horizontalLayout_2->addWidget(checkBox_bcmMod_Cside);

        horizontalSpacer_2 = new QSpacerItem(40, 1, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_2);


        verticalLayout->addLayout(horizontalLayout_2);


        horizontalLayout_3->addLayout(verticalLayout);

        spacerItem = new QSpacerItem(1, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(spacerItem);


        verticalLayout_2->addWidget(groupBox_pixelactivemodules);

        groupBox_sctactivemodules = new QGroupBox(GeoSysSettingsMiscForm);
        groupBox_sctactivemodules->setObjectName(QString::fromUtf8("groupBox_sctactivemodules"));
        _3 = new QHBoxLayout(groupBox_sctactivemodules);
        _3->setContentsMargins(4, 4, 4, 4);
        _3->setObjectName(QString::fromUtf8("_3"));
        _4 = new QHBoxLayout();
        _4->setObjectName(QString::fromUtf8("_4"));
        checkBox_sctmod_barrel = new QCheckBox(groupBox_sctactivemodules);
        checkBox_sctmod_barrel->setObjectName(QString::fromUtf8("checkBox_sctmod_barrel"));
        checkBox_sctmod_barrel->setChecked(true);

        _4->addWidget(checkBox_sctmod_barrel);

        checkBox_sctmod_endcapA = new QCheckBox(groupBox_sctactivemodules);
        checkBox_sctmod_endcapA->setObjectName(QString::fromUtf8("checkBox_sctmod_endcapA"));
        checkBox_sctmod_endcapA->setChecked(true);

        _4->addWidget(checkBox_sctmod_endcapA);

        checkBox_sctmod_endcapC = new QCheckBox(groupBox_sctactivemodules);
        checkBox_sctmod_endcapC->setObjectName(QString::fromUtf8("checkBox_sctmod_endcapC"));
        checkBox_sctmod_endcapC->setChecked(true);

        _4->addWidget(checkBox_sctmod_endcapC);

        toolButton_sctmod_adapt = new QToolButton(groupBox_sctactivemodules);
        toolButton_sctmod_adapt->setObjectName(QString::fromUtf8("toolButton_sctmod_adapt"));

        _4->addWidget(toolButton_sctmod_adapt);

        toolButton_sctmod_reset = new QToolButton(groupBox_sctactivemodules);
        toolButton_sctmod_reset->setObjectName(QString::fromUtf8("toolButton_sctmod_reset"));

        _4->addWidget(toolButton_sctmod_reset);


        _3->addLayout(_4);

        spacerItem1 = new QSpacerItem(1, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _3->addItem(spacerItem1);


        verticalLayout_2->addWidget(groupBox_sctactivemodules);

        groupBox = new QGroupBox(GeoSysSettingsMiscForm);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        _5 = new QGridLayout(groupBox);
        _5->setContentsMargins(4, 4, 4, 4);
        _5->setObjectName(QString::fromUtf8("_5"));
        _5->setHorizontalSpacing(2);
        label_7 = new QLabel(groupBox);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        _5->addWidget(label_7, 0, 0, 1, 2);

        lineEdit_expand_vols_matname = new QLineEdit(groupBox);
        lineEdit_expand_vols_matname->setObjectName(QString::fromUtf8("lineEdit_expand_vols_matname"));
        lineEdit_expand_vols_matname->setMinimumSize(QSize(50, 0));

        _5->addWidget(lineEdit_expand_vols_matname, 0, 2, 1, 1);

        pushButton_expand_vols_matname = new QPushButton(groupBox);
        pushButton_expand_vols_matname->setObjectName(QString::fromUtf8("pushButton_expand_vols_matname"));

        _5->addWidget(pushButton_expand_vols_matname, 0, 3, 1, 1);

        label_8 = new QLabel(groupBox);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        _5->addWidget(label_8, 1, 0, 1, 1);

        lineEdit_expand_vols_volname = new QLineEdit(groupBox);
        lineEdit_expand_vols_volname->setObjectName(QString::fromUtf8("lineEdit_expand_vols_volname"));

        _5->addWidget(lineEdit_expand_vols_volname, 1, 1, 1, 2);

        pushButton_expand_vols_volname = new QPushButton(groupBox);
        pushButton_expand_vols_volname->setObjectName(QString::fromUtf8("pushButton_expand_vols_volname"));

        _5->addWidget(pushButton_expand_vols_volname, 1, 3, 1, 1);

        label = new QLabel(groupBox);
        label->setObjectName(QString::fromUtf8("label"));

        _5->addWidget(label, 2, 0, 1, 1);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        pushButton_nonStandardShapes_Iconify = new QPushButton(groupBox);
        pushButton_nonStandardShapes_Iconify->setObjectName(QString::fromUtf8("pushButton_nonStandardShapes_Iconify"));

        horizontalLayout->addWidget(pushButton_nonStandardShapes_Iconify);

        pushButton_nonStandardShapes_Expand = new QPushButton(groupBox);
        pushButton_nonStandardShapes_Expand->setObjectName(QString::fromUtf8("pushButton_nonStandardShapes_Expand"));

        horizontalLayout->addWidget(pushButton_nonStandardShapes_Expand);


        _5->addLayout(horizontalLayout, 2, 2, 1, 2);


        verticalLayout_2->addWidget(groupBox);

        _10 = new QHBoxLayout();
        _10->setObjectName(QString::fromUtf8("_10"));
        spacerItem2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _10->addItem(spacerItem2);

        pushButton_close = new QPushButton(GeoSysSettingsMiscForm);
        pushButton_close->setObjectName(QString::fromUtf8("pushButton_close"));

        _10->addWidget(pushButton_close);


        verticalLayout_2->addLayout(_10);


        retranslateUi(GeoSysSettingsMiscForm);

        QMetaObject::connectSlotsByName(GeoSysSettingsMiscForm);
    } // setupUi

    void retranslateUi(QWidget *GeoSysSettingsMiscForm)
    {
        GeoSysSettingsMiscForm->setWindowTitle(QApplication::translate("GeoSysSettingsMiscForm", "Form", 0, QApplication::UnicodeUTF8));
        groupBox_pixelactivemodules->setTitle(QApplication::translate("GeoSysSettingsMiscForm", "Pixel active modules", 0, QApplication::UnicodeUTF8));
        checkBox_pixelmod_barrel->setText(QApplication::translate("GeoSysSettingsMiscForm", "Brl", 0, QApplication::UnicodeUTF8));
        checkBox_pixelmod_endcapA->setText(QApplication::translate("GeoSysSettingsMiscForm", "ecA", 0, QApplication::UnicodeUTF8));
        checkBox_pixelmod_endcapC->setText(QApplication::translate("GeoSysSettingsMiscForm", "ecC", 0, QApplication::UnicodeUTF8));
        toolButton_pixelmod_adapt->setText(QApplication::translate("GeoSysSettingsMiscForm", "Adapt", 0, QApplication::UnicodeUTF8));
        toolButton_pixelmod_reset->setText(QApplication::translate("GeoSysSettingsMiscForm", "Reset", 0, QApplication::UnicodeUTF8));
        label_bcmmods->setText(QApplication::translate("GeoSysSettingsMiscForm", "Also show BCM mods:", 0, QApplication::UnicodeUTF8));
        checkBox_bcmMod_Aside->setText(QApplication::translate("GeoSysSettingsMiscForm", "A side", 0, QApplication::UnicodeUTF8));
        checkBox_bcmMod_Cside->setText(QApplication::translate("GeoSysSettingsMiscForm", "C side", 0, QApplication::UnicodeUTF8));
        groupBox_sctactivemodules->setTitle(QApplication::translate("GeoSysSettingsMiscForm", "SCT active modules", 0, QApplication::UnicodeUTF8));
        checkBox_sctmod_barrel->setText(QApplication::translate("GeoSysSettingsMiscForm", "Brl", 0, QApplication::UnicodeUTF8));
        checkBox_sctmod_endcapA->setText(QApplication::translate("GeoSysSettingsMiscForm", "ecA", 0, QApplication::UnicodeUTF8));
        checkBox_sctmod_endcapC->setText(QApplication::translate("GeoSysSettingsMiscForm", "ecC", 0, QApplication::UnicodeUTF8));
        toolButton_sctmod_adapt->setText(QApplication::translate("GeoSysSettingsMiscForm", "Adapt", 0, QApplication::UnicodeUTF8));
        toolButton_sctmod_reset->setText(QApplication::translate("GeoSysSettingsMiscForm", "Reset", 0, QApplication::UnicodeUTF8));
        groupBox->setTitle(QApplication::translate("GeoSysSettingsMiscForm", "Actions on visible volumes", 0, QApplication::UnicodeUTF8));
        label_7->setText(QApplication::translate("GeoSysSettingsMiscForm", "Vols. with mat:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        lineEdit_expand_vols_matname->setToolTip(QApplication::translate("GeoSysSettingsMiscForm", "<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Matching is case-sensitive and wildcards are allowed.</p></body></html>", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        lineEdit_expand_vols_matname->setText(QApplication::translate("GeoSysSettingsMiscForm", "Air", 0, QApplication::UnicodeUTF8));
        pushButton_expand_vols_matname->setText(QApplication::translate("GeoSysSettingsMiscForm", "Expand", 0, QApplication::UnicodeUTF8));
        label_8->setText(QApplication::translate("GeoSysSettingsMiscForm", "Vols. named:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        lineEdit_expand_vols_volname->setToolTip(QApplication::translate("GeoSysSettingsMiscForm", "<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Sans Serif'; font-size:9pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Matching is case-insensitive and wildcards are allowed.</p></body></html>", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        lineEdit_expand_vols_volname->setText(QString());
        pushButton_expand_vols_volname->setText(QApplication::translate("GeoSysSettingsMiscForm", "Expand", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        label->setToolTip(QApplication::translate("GeoSysSettingsMiscForm", "Actions on all shapes with 3D representations that are not standard VRML. Useful if you intend to dump the scene to a portable file.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        label->setText(QApplication::translate("GeoSysSettingsMiscForm", "Non-standard shapes:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_nonStandardShapes_Iconify->setToolTip(QApplication::translate("GeoSysSettingsMiscForm", "Actions on all shapes with 3D representations that are not standard VRML. Useful if you intend to dump the scene to a portable file.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_nonStandardShapes_Iconify->setText(QApplication::translate("GeoSysSettingsMiscForm", "Iconify", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_nonStandardShapes_Expand->setToolTip(QApplication::translate("GeoSysSettingsMiscForm", "Actions on all shapes with 3D representations that are not standard VRML. Useful if you intend to dump the scene to a portable file.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_nonStandardShapes_Expand->setText(QApplication::translate("GeoSysSettingsMiscForm", "Expand", 0, QApplication::UnicodeUTF8));
        pushButton_close->setText(QApplication::translate("GeoSysSettingsMiscForm", "&Close", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class GeoSysSettingsMiscForm: public Ui_GeoSysSettingsMiscForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTINGS_MISC_FORM_H
