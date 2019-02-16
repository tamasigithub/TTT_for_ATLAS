/********************************************************************************
** Form generated from reading UI file 'geometrysystemcontroller.ui'
**
** Created: Mon Jan 28 15:20:28 2019
**      by: Qt User Interface Compiler version 4.8.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_GEOMETRYSYSTEMCONTROLLER_H
#define UI_GEOMETRYSYSTEMCONTROLLER_H

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

class Ui_GeometrySystemControllerForm
{
public:
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_2;
    QWidget *widget_settingsButtonsPlaceholder;
    QGridLayout *_19;
    QPushButton *pushButton_settings_display;
    QPushButton *pushButton_settings_interactions;
    QPushButton *pushButton_settings_iconisedvols;
    QPushButton *pushButton_settings_misc;
    QPushButton *pushButton_settings_treebrowser;
    QPushButton *pushButton_settings_muonchambers;
    QSpacerItem *horizontalSpacer;
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *_2;
    QGroupBox *groupBox_innerdetector;
    QHBoxLayout *_3;
    QGridLayout *_4;
    QCheckBox *checkBox_SCT;
    QCheckBox *checkBox_TRT;
    QCheckBox *checkBox_Pixel;
    QCheckBox *checkBox_InDetServMat;
    QSpacerItem *spacerItem;
    QGroupBox *groupBox_calorimeters;
    QHBoxLayout *_5;
    QCheckBox *checkBox_LAr;
    QCheckBox *checkBox_Tile;
    QSpacerItem *spacerItem1;
    QGroupBox *groupBox_muonsystems;
    QVBoxLayout *verticalLayout_2;
    QHBoxLayout *horizontalLayout_3;
    QLabel *label_3;
    QSpacerItem *horizontalSpacer_5;
    QCheckBox *checkBox_MuonBarrelStationInner;
    QCheckBox *checkBox_MuonBarrelStationMiddle;
    QCheckBox *checkBox_MuonBarrelStationOuter;
    QSpacerItem *spacer_2;
    QHBoxLayout *horizontalLayout_4;
    QLabel *label_2;
    QSpacerItem *horizontalSpacer_4;
    QCheckBox *checkBox_MuonEndcapStationCSC;
    QCheckBox *checkBox_NSW;
    QCheckBox *checkBox_MuonEndcapStationTGC;
    QCheckBox *checkBox_MuonEndcapStationMDT;
    QSpacerItem *spacerItem2;
    QHBoxLayout *horizontalLayout_5;
    QLabel *label_4;
    QSpacerItem *horizontalSpacer_3;
    QCheckBox *checkBox_MuonECAToroid;
    QCheckBox *checkBox_MuonBarrelToroid;
    QSpacerItem *spacer;
    QHBoxLayout *horizontalLayout_6;
    QLabel *label;
    QSpacerItem *horizontalSpacer_6;
    QCheckBox *checkBox_MuonEtc;
    QCheckBox *checkBox_MuonShielding;
    QCheckBox *checkBox_MuonFeet;
    QSpacerItem *horizontalSpacer_7;
    QGroupBox *groupBox_misc;
    QVBoxLayout *_12;
    QHBoxLayout *_14;
    QCheckBox *checkBox_LUCID;
    QCheckBox *checkBox_ZDC;
    QCheckBox *checkBox_ALFA;
    QCheckBox *checkBox_ForwardRegion;
    QSpacerItem *spacerItem3;
    QHBoxLayout *horizontalLayout_7;
    QCheckBox *checkBox_AFP;
    QGroupBox *groupBox_misc1;
    QVBoxLayout *_121;
    QHBoxLayout *_13;
    QCheckBox *checkBox_BeamPipe;
    QCheckBox *checkBox_CavernInfra;
    QCheckBox *checkBox_other;
    QHBoxLayout *_15;
    QVBoxLayout *_16;
    QLabel *label_12;
    QHBoxLayout *_17;
    QSpacerItem *spacerItem4;
    QVBoxLayout *_18;
    QLabel *label_9;
    QLabel *label_10;
    QLabel *label_11;
    QSpacerItem *verticalSpacer;
    QSpacerItem *spacerItem5;
    QSpacerItem *horizontalSpacer_2;

    void setupUi(QWidget *GeometrySystemControllerForm)
    {
        if (GeometrySystemControllerForm->objectName().isEmpty())
            GeometrySystemControllerForm->setObjectName(QString::fromUtf8("GeometrySystemControllerForm"));
        GeometrySystemControllerForm->resize(359, 646);
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(GeometrySystemControllerForm->sizePolicy().hasHeightForWidth());
        GeometrySystemControllerForm->setSizePolicy(sizePolicy);
        verticalLayout = new QVBoxLayout(GeometrySystemControllerForm);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(6, 6, 0, 4);
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(0);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        widget_settingsButtonsPlaceholder = new QWidget(GeometrySystemControllerForm);
        widget_settingsButtonsPlaceholder->setObjectName(QString::fromUtf8("widget_settingsButtonsPlaceholder"));
        QSizePolicy sizePolicy1(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy1.setHorizontalStretch(0);
        sizePolicy1.setVerticalStretch(0);
        sizePolicy1.setHeightForWidth(widget_settingsButtonsPlaceholder->sizePolicy().hasHeightForWidth());
        widget_settingsButtonsPlaceholder->setSizePolicy(sizePolicy1);
        _19 = new QGridLayout(widget_settingsButtonsPlaceholder);
        _19->setSpacing(0);
        _19->setContentsMargins(0, 0, 0, 0);
        _19->setObjectName(QString::fromUtf8("_19"));
        pushButton_settings_display = new QPushButton(widget_settingsButtonsPlaceholder);
        pushButton_settings_display->setObjectName(QString::fromUtf8("pushButton_settings_display"));

        _19->addWidget(pushButton_settings_display, 0, 0, 1, 1);

        pushButton_settings_interactions = new QPushButton(widget_settingsButtonsPlaceholder);
        pushButton_settings_interactions->setObjectName(QString::fromUtf8("pushButton_settings_interactions"));

        _19->addWidget(pushButton_settings_interactions, 0, 1, 1, 1);

        pushButton_settings_iconisedvols = new QPushButton(widget_settingsButtonsPlaceholder);
        pushButton_settings_iconisedvols->setObjectName(QString::fromUtf8("pushButton_settings_iconisedvols"));

        _19->addWidget(pushButton_settings_iconisedvols, 0, 2, 1, 1);

        pushButton_settings_misc = new QPushButton(widget_settingsButtonsPlaceholder);
        pushButton_settings_misc->setObjectName(QString::fromUtf8("pushButton_settings_misc"));

        _19->addWidget(pushButton_settings_misc, 1, 0, 1, 1);

        pushButton_settings_treebrowser = new QPushButton(widget_settingsButtonsPlaceholder);
        pushButton_settings_treebrowser->setObjectName(QString::fromUtf8("pushButton_settings_treebrowser"));

        _19->addWidget(pushButton_settings_treebrowser, 1, 1, 1, 1);

        pushButton_settings_muonchambers = new QPushButton(widget_settingsButtonsPlaceholder);
        pushButton_settings_muonchambers->setObjectName(QString::fromUtf8("pushButton_settings_muonchambers"));

        _19->addWidget(pushButton_settings_muonchambers, 1, 2, 1, 1);


        horizontalLayout_2->addWidget(widget_settingsButtonsPlaceholder);

        horizontalSpacer = new QSpacerItem(8, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);


        verticalLayout->addLayout(horizontalLayout_2);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(0);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        _2 = new QVBoxLayout();
        _2->setSpacing(4);
        _2->setObjectName(QString::fromUtf8("_2"));
        groupBox_innerdetector = new QGroupBox(GeometrySystemControllerForm);
        groupBox_innerdetector->setObjectName(QString::fromUtf8("groupBox_innerdetector"));
        _3 = new QHBoxLayout(groupBox_innerdetector);
        _3->setSpacing(0);
        _3->setContentsMargins(4, 4, 4, 4);
        _3->setObjectName(QString::fromUtf8("_3"));
        _4 = new QGridLayout();
#ifndef Q_OS_MAC
        _4->setContentsMargins(0, 0, 0, 0);
#endif
        _4->setObjectName(QString::fromUtf8("_4"));
        _4->setHorizontalSpacing(6);
        _4->setVerticalSpacing(0);
        checkBox_SCT = new QCheckBox(groupBox_innerdetector);
        checkBox_SCT->setObjectName(QString::fromUtf8("checkBox_SCT"));

        _4->addWidget(checkBox_SCT, 0, 1, 1, 1);

        checkBox_TRT = new QCheckBox(groupBox_innerdetector);
        checkBox_TRT->setObjectName(QString::fromUtf8("checkBox_TRT"));

        _4->addWidget(checkBox_TRT, 1, 0, 1, 1);

        checkBox_Pixel = new QCheckBox(groupBox_innerdetector);
        checkBox_Pixel->setObjectName(QString::fromUtf8("checkBox_Pixel"));

        _4->addWidget(checkBox_Pixel, 0, 0, 1, 1);

        checkBox_InDetServMat = new QCheckBox(groupBox_innerdetector);
        checkBox_InDetServMat->setObjectName(QString::fromUtf8("checkBox_InDetServMat"));

        _4->addWidget(checkBox_InDetServMat, 1, 1, 1, 1);


        _3->addLayout(_4);

        spacerItem = new QSpacerItem(1, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _3->addItem(spacerItem);


        _2->addWidget(groupBox_innerdetector);

        groupBox_calorimeters = new QGroupBox(GeometrySystemControllerForm);
        groupBox_calorimeters->setObjectName(QString::fromUtf8("groupBox_calorimeters"));
        _5 = new QHBoxLayout(groupBox_calorimeters);
        _5->setSpacing(0);
        _5->setContentsMargins(4, 4, 4, 4);
        _5->setObjectName(QString::fromUtf8("_5"));
        checkBox_LAr = new QCheckBox(groupBox_calorimeters);
        checkBox_LAr->setObjectName(QString::fromUtf8("checkBox_LAr"));

        _5->addWidget(checkBox_LAr);

        checkBox_Tile = new QCheckBox(groupBox_calorimeters);
        checkBox_Tile->setObjectName(QString::fromUtf8("checkBox_Tile"));

        _5->addWidget(checkBox_Tile);

        spacerItem1 = new QSpacerItem(1, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _5->addItem(spacerItem1);


        _2->addWidget(groupBox_calorimeters);

        groupBox_muonsystems = new QGroupBox(GeometrySystemControllerForm);
        groupBox_muonsystems->setObjectName(QString::fromUtf8("groupBox_muonsystems"));
        verticalLayout_2 = new QVBoxLayout(groupBox_muonsystems);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        label_3 = new QLabel(groupBox_muonsystems);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        QFont font;
        font.setBold(true);
        font.setWeight(75);
        label_3->setFont(font);

        horizontalLayout_3->addWidget(label_3);

        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(horizontalSpacer_5);

        checkBox_MuonBarrelStationInner = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonBarrelStationInner->setObjectName(QString::fromUtf8("checkBox_MuonBarrelStationInner"));

        horizontalLayout_3->addWidget(checkBox_MuonBarrelStationInner);

        checkBox_MuonBarrelStationMiddle = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonBarrelStationMiddle->setObjectName(QString::fromUtf8("checkBox_MuonBarrelStationMiddle"));

        horizontalLayout_3->addWidget(checkBox_MuonBarrelStationMiddle);

        checkBox_MuonBarrelStationOuter = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonBarrelStationOuter->setObjectName(QString::fromUtf8("checkBox_MuonBarrelStationOuter"));

        horizontalLayout_3->addWidget(checkBox_MuonBarrelStationOuter);

        spacer_2 = new QSpacerItem(13, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_3->addItem(spacer_2);


        verticalLayout_2->addLayout(horizontalLayout_3);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QString::fromUtf8("horizontalLayout_4"));
        label_2 = new QLabel(groupBox_muonsystems);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setFont(font);

        horizontalLayout_4->addWidget(label_2);

        horizontalSpacer_4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_4->addItem(horizontalSpacer_4);

        checkBox_MuonEndcapStationCSC = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonEndcapStationCSC->setObjectName(QString::fromUtf8("checkBox_MuonEndcapStationCSC"));

        horizontalLayout_4->addWidget(checkBox_MuonEndcapStationCSC);

        checkBox_NSW = new QCheckBox(groupBox_muonsystems);
        checkBox_NSW->setObjectName(QString::fromUtf8("checkBox_NSW"));

        horizontalLayout_4->addWidget(checkBox_NSW);

        checkBox_MuonEndcapStationTGC = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonEndcapStationTGC->setObjectName(QString::fromUtf8("checkBox_MuonEndcapStationTGC"));

        horizontalLayout_4->addWidget(checkBox_MuonEndcapStationTGC);

        checkBox_MuonEndcapStationMDT = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonEndcapStationMDT->setObjectName(QString::fromUtf8("checkBox_MuonEndcapStationMDT"));

        horizontalLayout_4->addWidget(checkBox_MuonEndcapStationMDT);

        spacerItem2 = new QSpacerItem(13, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_4->addItem(spacerItem2);


        verticalLayout_2->addLayout(horizontalLayout_4);

        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QString::fromUtf8("horizontalLayout_5"));
        label_4 = new QLabel(groupBox_muonsystems);
        label_4->setObjectName(QString::fromUtf8("label_4"));
        label_4->setFont(font);

        horizontalLayout_5->addWidget(label_4);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_5->addItem(horizontalSpacer_3);

        checkBox_MuonECAToroid = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonECAToroid->setObjectName(QString::fromUtf8("checkBox_MuonECAToroid"));

        horizontalLayout_5->addWidget(checkBox_MuonECAToroid);

        checkBox_MuonBarrelToroid = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonBarrelToroid->setObjectName(QString::fromUtf8("checkBox_MuonBarrelToroid"));

        horizontalLayout_5->addWidget(checkBox_MuonBarrelToroid);

        spacer = new QSpacerItem(13, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_5->addItem(spacer);


        verticalLayout_2->addLayout(horizontalLayout_5);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QString::fromUtf8("horizontalLayout_6"));
        label = new QLabel(groupBox_muonsystems);
        label->setObjectName(QString::fromUtf8("label"));
        label->setFont(font);

        horizontalLayout_6->addWidget(label);

        horizontalSpacer_6 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_6);

        checkBox_MuonEtc = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonEtc->setObjectName(QString::fromUtf8("checkBox_MuonEtc"));

        horizontalLayout_6->addWidget(checkBox_MuonEtc);

        checkBox_MuonShielding = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonShielding->setObjectName(QString::fromUtf8("checkBox_MuonShielding"));

        horizontalLayout_6->addWidget(checkBox_MuonShielding);

        checkBox_MuonFeet = new QCheckBox(groupBox_muonsystems);
        checkBox_MuonFeet->setObjectName(QString::fromUtf8("checkBox_MuonFeet"));

        horizontalLayout_6->addWidget(checkBox_MuonFeet);

        horizontalSpacer_7 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_6->addItem(horizontalSpacer_7);


        verticalLayout_2->addLayout(horizontalLayout_6);


        _2->addWidget(groupBox_muonsystems);

        groupBox_misc = new QGroupBox(GeometrySystemControllerForm);
        groupBox_misc->setObjectName(QString::fromUtf8("groupBox_misc"));
        _12 = new QVBoxLayout(groupBox_misc);
        _12->setSpacing(0);
        _12->setContentsMargins(4, 4, 4, 4);
        _12->setObjectName(QString::fromUtf8("_12"));
        _14 = new QHBoxLayout();
        _14->setObjectName(QString::fromUtf8("_14"));
        checkBox_LUCID = new QCheckBox(groupBox_misc);
        checkBox_LUCID->setObjectName(QString::fromUtf8("checkBox_LUCID"));

        _14->addWidget(checkBox_LUCID);

        checkBox_ZDC = new QCheckBox(groupBox_misc);
        checkBox_ZDC->setObjectName(QString::fromUtf8("checkBox_ZDC"));

        _14->addWidget(checkBox_ZDC);

        checkBox_ALFA = new QCheckBox(groupBox_misc);
        checkBox_ALFA->setObjectName(QString::fromUtf8("checkBox_ALFA"));

        _14->addWidget(checkBox_ALFA);

        checkBox_ForwardRegion = new QCheckBox(groupBox_misc);
        checkBox_ForwardRegion->setObjectName(QString::fromUtf8("checkBox_ForwardRegion"));

        _14->addWidget(checkBox_ForwardRegion);

        spacerItem3 = new QSpacerItem(1, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _14->addItem(spacerItem3);


        _12->addLayout(_14);

        horizontalLayout_7 = new QHBoxLayout();
        horizontalLayout_7->setObjectName(QString::fromUtf8("horizontalLayout_7"));
        checkBox_AFP = new QCheckBox(groupBox_misc);
        checkBox_AFP->setObjectName(QString::fromUtf8("checkBox_AFP"));

        horizontalLayout_7->addWidget(checkBox_AFP);


        _12->addLayout(horizontalLayout_7);


        _2->addWidget(groupBox_misc);

        groupBox_misc1 = new QGroupBox(GeometrySystemControllerForm);
        groupBox_misc1->setObjectName(QString::fromUtf8("groupBox_misc1"));
        _121 = new QVBoxLayout(groupBox_misc1);
        _121->setSpacing(0);
        _121->setContentsMargins(4, 4, 4, 4);
        _121->setObjectName(QString::fromUtf8("_121"));
        _13 = new QHBoxLayout();
        _13->setObjectName(QString::fromUtf8("_13"));
        checkBox_BeamPipe = new QCheckBox(groupBox_misc1);
        checkBox_BeamPipe->setObjectName(QString::fromUtf8("checkBox_BeamPipe"));

        _13->addWidget(checkBox_BeamPipe);

        checkBox_CavernInfra = new QCheckBox(groupBox_misc1);
        checkBox_CavernInfra->setObjectName(QString::fromUtf8("checkBox_CavernInfra"));

        _13->addWidget(checkBox_CavernInfra);


        _121->addLayout(_13);

        checkBox_other = new QCheckBox(groupBox_misc1);
        checkBox_other->setObjectName(QString::fromUtf8("checkBox_other"));

        _121->addWidget(checkBox_other);


        _2->addWidget(groupBox_misc1);

        _15 = new QHBoxLayout();
        _15->setSpacing(0);
        _15->setObjectName(QString::fromUtf8("_15"));
        _16 = new QVBoxLayout();
        _16->setSpacing(0);
        _16->setObjectName(QString::fromUtf8("_16"));
        label_12 = new QLabel(GeometrySystemControllerForm);
        label_12->setObjectName(QString::fromUtf8("label_12"));

        _16->addWidget(label_12);

        _17 = new QHBoxLayout();
        _17->setSpacing(0);
        _17->setObjectName(QString::fromUtf8("_17"));
        spacerItem4 = new QSpacerItem(20, 20, QSizePolicy::Fixed, QSizePolicy::Minimum);

        _17->addItem(spacerItem4);

        _18 = new QVBoxLayout();
        _18->setSpacing(1);
        _18->setObjectName(QString::fromUtf8("_18"));
        label_9 = new QLabel(GeometrySystemControllerForm);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        _18->addWidget(label_9);

        label_10 = new QLabel(GeometrySystemControllerForm);
        label_10->setObjectName(QString::fromUtf8("label_10"));

        _18->addWidget(label_10);

        label_11 = new QLabel(GeometrySystemControllerForm);
        label_11->setObjectName(QString::fromUtf8("label_11"));

        _18->addWidget(label_11);


        _17->addLayout(_18);


        _16->addLayout(_17);

        verticalSpacer = new QSpacerItem(20, 1, QSizePolicy::Minimum, QSizePolicy::Expanding);

        _16->addItem(verticalSpacer);


        _15->addLayout(_16);

        spacerItem5 = new QSpacerItem(1, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _15->addItem(spacerItem5);


        _2->addLayout(_15);


        horizontalLayout->addLayout(_2);

        horizontalSpacer_2 = new QSpacerItem(1, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_2);


        verticalLayout->addLayout(horizontalLayout);


        retranslateUi(GeometrySystemControllerForm);

        QMetaObject::connectSlotsByName(GeometrySystemControllerForm);
    } // setupUi

    void retranslateUi(QWidget *GeometrySystemControllerForm)
    {
        GeometrySystemControllerForm->setWindowTitle(QApplication::translate("GeometrySystemControllerForm", "Form", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_settings_display->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Configure overall display options such as phi-sector cutaways and transparency", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_settings_display->setText(QApplication::translate("GeometrySystemControllerForm", "Display", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_settings_interactions->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Configure what happens when a geometry volume is clicked", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_settings_interactions->setText(QApplication::translate("GeometrySystemControllerForm", "Interactions", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_settings_iconisedvols->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Show a list of iconised/zapped volumes and possible restore them.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_settings_iconisedvols->setText(QApplication::translate("GeometrySystemControllerForm", "Icon Box", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_settings_misc->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Miscellaneous controls such as automatic actions on multiple volumes, or editing the colour of the last volume clicked.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_settings_misc->setText(QApplication::translate("GeometrySystemControllerForm", "Misc.", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_settings_treebrowser->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Browse the detector volume in a tree-view.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_settings_treebrowser->setText(QApplication::translate("GeometrySystemControllerForm", "Browser", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        pushButton_settings_muonchambers->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Configure if, and how, muon chambers should adapt themselves to displayed event data.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        pushButton_settings_muonchambers->setText(QApplication::translate("GeometrySystemControllerForm", "Chambers", 0, QApplication::UnicodeUTF8));
        groupBox_innerdetector->setTitle(QApplication::translate("GeometrySystemControllerForm", "Inner Detector", 0, QApplication::UnicodeUTF8));
        checkBox_SCT->setText(QApplication::translate("GeometrySystemControllerForm", "SCT", 0, QApplication::UnicodeUTF8));
        checkBox_TRT->setText(QApplication::translate("GeometrySystemControllerForm", "TRT", 0, QApplication::UnicodeUTF8));
        checkBox_Pixel->setText(QApplication::translate("GeometrySystemControllerForm", "Pixel", 0, QApplication::UnicodeUTF8));
        checkBox_InDetServMat->setText(QApplication::translate("GeometrySystemControllerForm", "Services", 0, QApplication::UnicodeUTF8));
        groupBox_calorimeters->setTitle(QApplication::translate("GeometrySystemControllerForm", "Calorimeters", 0, QApplication::UnicodeUTF8));
        checkBox_LAr->setText(QApplication::translate("GeometrySystemControllerForm", "LAr", 0, QApplication::UnicodeUTF8));
        checkBox_Tile->setText(QApplication::translate("GeometrySystemControllerForm", "Tile", 0, QApplication::UnicodeUTF8));
        groupBox_muonsystems->setTitle(QApplication::translate("GeometrySystemControllerForm", "Muon systems", 0, QApplication::UnicodeUTF8));
        label_3->setText(QApplication::translate("GeometrySystemControllerForm", "Barrel:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        checkBox_MuonBarrelStationInner->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Inner", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        checkBox_MuonBarrelStationInner->setText(QApplication::translate("GeometrySystemControllerForm", "Inn.", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        checkBox_MuonBarrelStationMiddle->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Middle", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        checkBox_MuonBarrelStationMiddle->setText(QApplication::translate("GeometrySystemControllerForm", "Mid.", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        checkBox_MuonBarrelStationOuter->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Outer", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        checkBox_MuonBarrelStationOuter->setText(QApplication::translate("GeometrySystemControllerForm", "Outer", 0, QApplication::UnicodeUTF8));
        label_2->setText(QApplication::translate("GeometrySystemControllerForm", "Endcap:", 0, QApplication::UnicodeUTF8));
        checkBox_MuonEndcapStationCSC->setText(QApplication::translate("GeometrySystemControllerForm", "CSC", 0, QApplication::UnicodeUTF8));
        checkBox_NSW->setText(QApplication::translate("GeometrySystemControllerForm", "NSW", 0, QApplication::UnicodeUTF8));
        checkBox_MuonEndcapStationTGC->setText(QApplication::translate("GeometrySystemControllerForm", "TGC", 0, QApplication::UnicodeUTF8));
        checkBox_MuonEndcapStationMDT->setText(QApplication::translate("GeometrySystemControllerForm", "MDT", 0, QApplication::UnicodeUTF8));
        label_4->setText(QApplication::translate("GeometrySystemControllerForm", "Toroids:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_WHATSTHIS
        checkBox_MuonECAToroid->setWhatsThis(QApplication::translate("GeometrySystemControllerForm", "EndCap Toroid (side A+C)", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_WHATSTHIS
        checkBox_MuonECAToroid->setText(QApplication::translate("GeometrySystemControllerForm", "Endcap", 0, QApplication::UnicodeUTF8));
        checkBox_MuonBarrelToroid->setText(QApplication::translate("GeometrySystemControllerForm", "Barrel ", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("GeometrySystemControllerForm", "Misc:", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        checkBox_MuonEtc->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Muon services, supports and misc.", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        checkBox_MuonEtc->setText(QApplication::translate("GeometrySystemControllerForm", "Serv.", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        checkBox_MuonShielding->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Muon shielding", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        checkBox_MuonShielding->setText(QApplication::translate("GeometrySystemControllerForm", "Shield", 0, QApplication::UnicodeUTF8));
#ifndef QT_NO_TOOLTIP
        checkBox_MuonFeet->setToolTip(QApplication::translate("GeometrySystemControllerForm", "Muon toroid feet", 0, QApplication::UnicodeUTF8));
#endif // QT_NO_TOOLTIP
        checkBox_MuonFeet->setText(QApplication::translate("GeometrySystemControllerForm", "Feet", 0, QApplication::UnicodeUTF8));
        groupBox_misc->setTitle(QApplication::translate("GeometrySystemControllerForm", "Forward Region", 0, QApplication::UnicodeUTF8));
        checkBox_LUCID->setText(QApplication::translate("GeometrySystemControllerForm", "LUCID", 0, QApplication::UnicodeUTF8));
        checkBox_ZDC->setText(QApplication::translate("GeometrySystemControllerForm", "ZDC", 0, QApplication::UnicodeUTF8));
        checkBox_ALFA->setText(QApplication::translate("GeometrySystemControllerForm", "ALFA", 0, QApplication::UnicodeUTF8));
        checkBox_ForwardRegion->setText(QApplication::translate("GeometrySystemControllerForm", "Forward Region", 0, QApplication::UnicodeUTF8));
        checkBox_AFP->setText(QApplication::translate("GeometrySystemControllerForm", "AFP", 0, QApplication::UnicodeUTF8));
        groupBox_misc1->setTitle(QApplication::translate("GeometrySystemControllerForm", "Miscellaneous", 0, QApplication::UnicodeUTF8));
        checkBox_BeamPipe->setText(QApplication::translate("GeometrySystemControllerForm", "Beam Pipe", 0, QApplication::UnicodeUTF8));
        checkBox_CavernInfra->setText(QApplication::translate("GeometrySystemControllerForm", "Cavern Infra.", 0, QApplication::UnicodeUTF8));
        checkBox_other->setText(QApplication::translate("GeometrySystemControllerForm", "Other unrecognised volumes.", 0, QApplication::UnicodeUTF8));
        label_12->setText(QApplication::translate("GeometrySystemControllerForm", "Instructions:", 0, QApplication::UnicodeUTF8));
        label_9->setText(QApplication::translate("GeometrySystemControllerForm", "Crtl+click: Expand to child volumes", 0, QApplication::UnicodeUTF8));
        label_10->setText(QApplication::translate("GeometrySystemControllerForm", "Shift+click: Contract to mother volume", 0, QApplication::UnicodeUTF8));
        label_11->setText(QApplication::translate("GeometrySystemControllerForm", "Z+click: Iconify (remove) volume", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class GeometrySystemControllerForm: public Ui_GeometrySystemControllerForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_GEOMETRYSYSTEMCONTROLLER_H
