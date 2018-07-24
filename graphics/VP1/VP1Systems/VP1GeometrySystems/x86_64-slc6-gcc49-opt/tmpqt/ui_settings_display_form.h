/********************************************************************************
** Form generated from reading UI file 'settings_display_form.ui'
**
** Created: Thu May 17 17:51:09 2018
**      by: Qt User Interface Compiler version 4.8.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SETTINGS_DISPLAY_FORM_H
#define UI_SETTINGS_DISPLAY_FORM_H

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
#include <QtGui/QSlider>
#include <QtGui/QSpacerItem>
#include <QtGui/QSpinBox>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>
#include "VP1Base/PhiSectionWidget.h"
#include "VP1Base/VP1DrawOptionsWidget.h"
#include "VP1Base/VP1MaterialButton.h"

QT_BEGIN_NAMESPACE

class Ui_GeoSysSettingsDisplayForm
{
public:
    QVBoxLayout *verticalLayout_2;
    QGroupBox *groupBox;
    QHBoxLayout *horizontalLayout_2;
    PhiSectionWidget *phisectionwidget;
    QSpacerItem *horizontalSpacer;
    QGroupBox *groupBox_5;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout;
    QLabel *label;
    QSpinBox *spinBox_transp;
    QCheckBox *checkBox_showVolumeOutLines;
    VP1DrawOptionsWidget *widget_drawOptions;
    QGroupBox *groupBox_colouring;
    QGridLayout *gridLayout;
    QHBoxLayout *_8;
    QLabel *label_13;
    VP1MaterialButton *matButton_lastSel;
    QPushButton *pushButton_saveChangedMaterials;
    QPushButton *pushButton_loadMaterials;
    QGroupBox *groupBox_labels;
    QHBoxLayout *horizontalLayout_3;
    QVBoxLayout *verticalLayout_3;
    QCheckBox *checkBox_labels_names;
    QCheckBox *checkBox_labels_mooret0s;
    QCheckBox *checkBox_labels_mboyt0s;
    QCheckBox *checkBox_labels_hits;
    QSpacerItem *verticalSpacer;
    QGroupBox *groupBox_2;
    QGridLayout *gridLayout_3;
    QLabel *label_11;
    QSlider *horizontalSlider_labels_yOffset;
    QSlider *horizontalSlider_labels_zOffset;
    QLabel *label_9;
    QSlider *horizontalSlider_labels_xOffset;
    QLabel *label_3;
    QHBoxLayout *_4;
    QSpacerItem *spacerItem;
    QPushButton *pushButton_close;

    void setupUi(QWidget *GeoSysSettingsDisplayForm)
    {
        if (GeoSysSettingsDisplayForm->objectName().isEmpty())
            GeoSysSettingsDisplayForm->setObjectName(QString::fromUtf8("GeoSysSettingsDisplayForm"));
        GeoSysSettingsDisplayForm->resize(397, 562);
        verticalLayout_2 = new QVBoxLayout(GeoSysSettingsDisplayForm);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        groupBox = new QGroupBox(GeoSysSettingsDisplayForm);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        horizontalLayout_2 = new QHBoxLayout(groupBox);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        phisectionwidget = new PhiSectionWidget(groupBox);
        phisectionwidget->setObjectName(QString::fromUtf8("phisectionwidget"));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(phisectionwidget->sizePolicy().hasHeightForWidth());
        phisectionwidget->setSizePolicy(sizePolicy);
        phisectionwidget->setMaximumSize(QSize(60, 60));

        horizontalLayout_2->addWidget(phisectionwidget);

        horizontalSpacer = new QSpacerItem(70, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);


        verticalLayout_2->addWidget(groupBox);

        groupBox_5 = new QGroupBox(GeoSysSettingsDisplayForm);
        groupBox_5->setObjectName(QString::fromUtf8("groupBox_5"));
        verticalLayout = new QVBoxLayout(groupBox_5);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        label = new QLabel(groupBox_5);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout->addWidget(label);

        spinBox_transp = new QSpinBox(groupBox_5);
        spinBox_transp->setObjectName(QString::fromUtf8("spinBox_transp"));
        spinBox_transp->setAlignment(Qt::AlignRight|Qt::AlignTrailing|Qt::AlignVCenter);
        spinBox_transp->setMaximum(100);
        spinBox_transp->setSingleStep(5);

        horizontalLayout->addWidget(spinBox_transp);


        verticalLayout->addLayout(horizontalLayout);

        checkBox_showVolumeOutLines = new QCheckBox(groupBox_5);
        checkBox_showVolumeOutLines->setObjectName(QString::fromUtf8("checkBox_showVolumeOutLines"));

        verticalLayout->addWidget(checkBox_showVolumeOutLines);

        widget_drawOptions = new VP1DrawOptionsWidget(groupBox_5);
        widget_drawOptions->setObjectName(QString::fromUtf8("widget_drawOptions"));

        verticalLayout->addWidget(widget_drawOptions);


        verticalLayout_2->addWidget(groupBox_5);

        groupBox_colouring = new QGroupBox(GeoSysSettingsDisplayForm);
        groupBox_colouring->setObjectName(QString::fromUtf8("groupBox_colouring"));
        gridLayout = new QGridLayout(groupBox_colouring);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        _8 = new QHBoxLayout();
        _8->setObjectName(QString::fromUtf8("_8"));
        label_13 = new QLabel(groupBox_colouring);
        label_13->setObjectName(QString::fromUtf8("label_13"));

        _8->addWidget(label_13);

        matButton_lastSel = new VP1MaterialButton(groupBox_colouring);
        matButton_lastSel->setObjectName(QString::fromUtf8("matButton_lastSel"));

        _8->addWidget(matButton_lastSel);


        gridLayout->addLayout(_8, 0, 0, 1, 2);

        pushButton_saveChangedMaterials = new QPushButton(groupBox_colouring);
        pushButton_saveChangedMaterials->setObjectName(QString::fromUtf8("pushButton_saveChangedMaterials"));

        gridLayout->addWidget(pushButton_saveChangedMaterials, 1, 0, 1, 1);

        pushButton_loadMaterials = new QPushButton(groupBox_colouring);
        pushButton_loadMaterials->setObjectName(QString::fromUtf8("pushButton_loadMaterials"));

        gridLayout->addWidget(pushButton_loadMaterials, 1, 1, 1, 1);


        verticalLayout_2->addWidget(groupBox_colouring);

        groupBox_labels = new QGroupBox(GeoSysSettingsDisplayForm);
        groupBox_labels->setObjectName(QString::fromUtf8("groupBox_labels"));
        groupBox_labels->setEnabled(true);
        groupBox_labels->setCheckable(true);
        groupBox_labels->setChecked(false);
        horizontalLayout_3 = new QHBoxLayout(groupBox_labels);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        checkBox_labels_names = new QCheckBox(groupBox_labels);
        checkBox_labels_names->setObjectName(QString::fromUtf8("checkBox_labels_names"));
        checkBox_labels_names->setEnabled(false);

        verticalLayout_3->addWidget(checkBox_labels_names);

        checkBox_labels_mooret0s = new QCheckBox(groupBox_labels);
        checkBox_labels_mooret0s->setObjectName(QString::fromUtf8("checkBox_labels_mooret0s"));
        checkBox_labels_mooret0s->setEnabled(false);

        verticalLayout_3->addWidget(checkBox_labels_mooret0s);

        checkBox_labels_mboyt0s = new QCheckBox(groupBox_labels);
        checkBox_labels_mboyt0s->setObjectName(QString::fromUtf8("checkBox_labels_mboyt0s"));
        checkBox_labels_mboyt0s->setEnabled(false);

        verticalLayout_3->addWidget(checkBox_labels_mboyt0s);

        checkBox_labels_hits = new QCheckBox(groupBox_labels);
        checkBox_labels_hits->setObjectName(QString::fromUtf8("checkBox_labels_hits"));
        checkBox_labels_hits->setEnabled(false);

        verticalLayout_3->addWidget(checkBox_labels_hits);

        verticalSpacer = new QSpacerItem(20, 17, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_3->addItem(verticalSpacer);


        horizontalLayout_3->addLayout(verticalLayout_3);

        groupBox_2 = new QGroupBox(groupBox_labels);
        groupBox_2->setObjectName(QString::fromUtf8("groupBox_2"));
        QSizePolicy sizePolicy1(QSizePolicy::Minimum, QSizePolicy::Preferred);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(groupBox_2->sizePolicy().hasHeightForWidth());
        groupBox_2->setSizePolicy(sizePolicy1);
        groupBox_2->setMinimumSize(QSize(150, 0));
        groupBox_2->setFlat(false);
        gridLayout_3 = new QGridLayout(groupBox_2);
        gridLayout_3->setObjectName(QString::fromUtf8("gridLayout_3"));
        gridLayout_3->setHorizontalSpacing(-1);
        gridLayout_3->setVerticalSpacing(0);
        gridLayout_3->setContentsMargins(-1, -1, -1, 7);
        label_11 = new QLabel(groupBox_2);
        label_11->setObjectName(QString::fromUtf8("label_11"));

        gridLayout_3->addWidget(label_11, 0, 0, 1, 1);

        horizontalSlider_labels_yOffset = new QSlider(groupBox_2);
        horizontalSlider_labels_yOffset->setObjectName(QString::fromUtf8("horizontalSlider_labels_yOffset"));
        QSizePolicy sizePolicy2(QSizePolicy::Expanding, QSizePolicy::Minimum);
        sizePolicy2.setHorizontalStretch(0);
        sizePolicy2.setVerticalStretch(0);
        sizePolicy2.setHeightForWidth(horizontalSlider_labels_yOffset->sizePolicy().hasHeightForWidth());
        horizontalSlider_labels_yOffset->setSizePolicy(sizePolicy2);
        horizontalSlider_labels_yOffset->setMaximumSize(QSize(16777215, 32));
        horizontalSlider_labels_yOffset->setMinimum(-100);
        horizontalSlider_labels_yOffset->setMaximum(100);
        horizontalSlider_labels_yOffset->setTracking(true);
        horizontalSlider_labels_yOffset->setOrientation(Qt::Horizontal);
        horizontalSlider_labels_yOffset->setInvertedAppearance(false);
        horizontalSlider_labels_yOffset->setTickPosition(QSlider::TicksAbove);
        horizontalSlider_labels_yOffset->setTickInterval(25);

        gridLayout_3->addWidget(horizontalSlider_labels_yOffset, 1, 1, 1, 1);

        horizontalSlider_labels_zOffset = new QSlider(groupBox_2);
        horizontalSlider_labels_zOffset->setObjectName(QString::fromUtf8("horizontalSlider_labels_zOffset"));
        sizePolicy2.setHeightForWidth(horizontalSlider_labels_zOffset->sizePolicy().hasHeightForWidth());
        horizontalSlider_labels_zOffset->setSizePolicy(sizePolicy2);
        horizontalSlider_labels_zOffset->setMaximumSize(QSize(16777215, 32));
        horizontalSlider_labels_zOffset->setMinimum(-100);
        horizontalSlider_labels_zOffset->setMaximum(100);
        horizontalSlider_labels_zOffset->setTracking(true);
        horizontalSlider_labels_zOffset->setOrientation(Qt::Horizontal);
        horizontalSlider_labels_zOffset->setInvertedAppearance(false);
        horizontalSlider_labels_zOffset->setTickPosition(QSlider::TicksAbove);
        horizontalSlider_labels_zOffset->setTickInterval(25);

        gridLayout_3->addWidget(horizontalSlider_labels_zOffset, 2, 1, 1, 1);

        label_9 = new QLabel(groupBox_2);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        gridLayout_3->addWidget(label_9, 2, 0, 1, 1);

        horizontalSlider_labels_xOffset = new QSlider(groupBox_2);
        horizontalSlider_labels_xOffset->setObjectName(QString::fromUtf8("horizontalSlider_labels_xOffset"));
        sizePolicy2.setHeightForWidth(horizontalSlider_labels_xOffset->sizePolicy().hasHeightForWidth());
        horizontalSlider_labels_xOffset->setSizePolicy(sizePolicy2);
        horizontalSlider_labels_xOffset->setMaximumSize(QSize(16777215, 32));
        horizontalSlider_labels_xOffset->setMinimum(-100);
        horizontalSlider_labels_xOffset->setMaximum(100);
        horizontalSlider_labels_xOffset->setTracking(true);
        horizontalSlider_labels_xOffset->setOrientation(Qt::Horizontal);
        horizontalSlider_labels_xOffset->setInvertedAppearance(false);
        horizontalSlider_labels_xOffset->setTickPosition(QSlider::TicksAbove);
        horizontalSlider_labels_xOffset->setTickInterval(25);

        gridLayout_3->addWidget(horizontalSlider_labels_xOffset, 0, 1, 1, 1);

        label_3 = new QLabel(groupBox_2);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout_3->addWidget(label_3, 1, 0, 1, 1);


        horizontalLayout_3->addWidget(groupBox_2);


        verticalLayout_2->addWidget(groupBox_labels);

        _4 = new QHBoxLayout();
        _4->setObjectName(QString::fromUtf8("_4"));
        spacerItem = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _4->addItem(spacerItem);

        pushButton_close = new QPushButton(GeoSysSettingsDisplayForm);
        pushButton_close->setObjectName(QString::fromUtf8("pushButton_close"));

        _4->addWidget(pushButton_close);


        verticalLayout_2->addLayout(_4);


        retranslateUi(GeoSysSettingsDisplayForm);
        QObject::connect(groupBox_labels, SIGNAL(toggled(bool)), checkBox_labels_names, SLOT(setEnabled(bool)));

        QMetaObject::connectSlotsByName(GeoSysSettingsDisplayForm);
    } // setupUi

    void retranslateUi(QWidget *GeoSysSettingsDisplayForm)
    {
        GeoSysSettingsDisplayForm->setWindowTitle(QApplication::translate("GeoSysSettingsDisplayForm", "Form", 0, QApplication::UnicodeUTF8));
        groupBox->setTitle(QApplication::translate("GeoSysSettingsDisplayForm", "Phi Sector Cutaways", 0, QApplication::UnicodeUTF8));
        groupBox_5->setTitle(QApplication::translate("GeoSysSettingsDisplayForm", "Draw options", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("GeoSysSettingsDisplayForm", "Transparency:", 0, QApplication::UnicodeUTF8));
        spinBox_transp->setSuffix(QApplication::translate("GeoSysSettingsDisplayForm", " %", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        checkBox_showVolumeOutLines->setToolTip(QApplication::translate("GeoSysSettingsDisplayForm", "Decorate shapes with lines at the edges (current only certain shapes such as muon chambers are supported)", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        checkBox_showVolumeOutLines->setText(QApplication::translate("GeoSysSettingsDisplayForm", "Show outlines", 0, QApplication::UnicodeUTF8));
        groupBox_colouring->setTitle(QApplication::translate("GeoSysSettingsDisplayForm", "Custom Colouring", 0, QApplication::UnicodeUTF8));
        label_13->setText(QApplication::translate("GeoSysSettingsDisplayForm", "Edit material of last selected volume:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        matButton_lastSel->setToolTip(QApplication::translate("GeoSysSettingsDisplayForm", "Edit the material of the last picked volume", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        matButton_lastSel->setText(QString());
#ifndef QT_NO_TOOLTIP
        pushButton_saveChangedMaterials->setToolTip(QApplication::translate("GeoSysSettingsDisplayForm", "Store changed materials into a .vp1geomat file which can be loaded later (hold down CTRL while clicking to store ALL materials, rather than just the ones that do not have default values)", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_saveChangedMaterials->setText(QApplication::translate("GeoSysSettingsDisplayForm", "Save changed materials", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_loadMaterials->setToolTip(QApplication::translate("GeoSysSettingsDisplayForm", "Load materials from a .vp1geomat file", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_loadMaterials->setText(QApplication::translate("GeoSysSettingsDisplayForm", "Load materials", 0, QApplication::UnicodeUTF8));
        groupBox_labels->setTitle(QApplication::translate("GeoSysSettingsDisplayForm", "Labels", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        checkBox_labels_names->setToolTip(QApplication::translate("GeoSysSettingsDisplayForm", "Enables the drawing of track labels", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        checkBox_labels_names->setText(QApplication::translate("GeoSysSettingsDisplayForm", "Chamber name", 0, QApplication::UnicodeUTF8));
        checkBox_labels_mooret0s->setText(QApplication::translate("GeoSysSettingsDisplayForm", "Chamber t0s (Moore)", 0, QApplication::UnicodeUTF8));
        checkBox_labels_mboyt0s->setText(QApplication::translate("GeoSysSettingsDisplayForm", "Chamber t0s (Mboy)", 0, QApplication::UnicodeUTF8));
        checkBox_labels_hits->setText(QApplication::translate("GeoSysSettingsDisplayForm", "Hit counts", 0, QApplication::UnicodeUTF8));
        groupBox_2->setTitle(QApplication::translate("GeoSysSettingsDisplayForm", "Offset", 0, QApplication::UnicodeUTF8));
        label_11->setText(QApplication::translate("GeoSysSettingsDisplayForm", "x", 0, QApplication::UnicodeUTF8));
        label_9->setText(QApplication::translate("GeoSysSettingsDisplayForm", "z", 0, QApplication::UnicodeUTF8));
        label_3->setText(QApplication::translate("GeoSysSettingsDisplayForm", "y", 0, QApplication::UnicodeUTF8));
        pushButton_close->setText(QApplication::translate("GeoSysSettingsDisplayForm", "&Close", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class GeoSysSettingsDisplayForm: public Ui_GeoSysSettingsDisplayForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTINGS_DISPLAY_FORM_H
