/********************************************************************************
** Form generated from reading UI file 'settings_iconisedvols_form.ui'
**
** Created: Mon Jan 28 15:20:29 2019
**      by: Qt User Interface Compiler version 4.8.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SETTINGS_ICONISEDVOLS_FORM_H
#define UI_SETTINGS_ICONISEDVOLS_FORM_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QListView>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_GeoSysSettingsIconisedVolumesForm
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label;
    QListView *listView_iconisedvolumes;
    QHBoxLayout *_4;
    QSpacerItem *spacerItem;
    QPushButton *pushButton_close;

    void setupUi(QWidget *GeoSysSettingsIconisedVolumesForm)
    {
        if (GeoSysSettingsIconisedVolumesForm->objectName().isEmpty())
            GeoSysSettingsIconisedVolumesForm->setObjectName(QString::fromUtf8("GeoSysSettingsIconisedVolumesForm"));
        GeoSysSettingsIconisedVolumesForm->resize(196, 165);
        verticalLayout = new QVBoxLayout(GeoSysSettingsIconisedVolumesForm);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        label = new QLabel(GeoSysSettingsIconisedVolumesForm);
        label->setObjectName(QString::fromUtf8("label"));

        verticalLayout->addWidget(label);

        listView_iconisedvolumes = new QListView(GeoSysSettingsIconisedVolumesForm);
        listView_iconisedvolumes->setObjectName(QString::fromUtf8("listView_iconisedvolumes"));

        verticalLayout->addWidget(listView_iconisedvolumes);

        _4 = new QHBoxLayout();
        _4->setObjectName(QString::fromUtf8("_4"));
        spacerItem = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _4->addItem(spacerItem);

        pushButton_close = new QPushButton(GeoSysSettingsIconisedVolumesForm);
        pushButton_close->setObjectName(QString::fromUtf8("pushButton_close"));

        _4->addWidget(pushButton_close);


        verticalLayout->addLayout(_4);


        retranslateUi(GeoSysSettingsIconisedVolumesForm);

        QMetaObject::connectSlotsByName(GeoSysSettingsIconisedVolumesForm);
    } // setupUi

    void retranslateUi(QWidget *GeoSysSettingsIconisedVolumesForm)
    {
        GeoSysSettingsIconisedVolumesForm->setWindowTitle(QApplication::translate("GeoSysSettingsIconisedVolumesForm", "Form", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("GeoSysSettingsIconisedVolumesForm", "Iconised volumes (click to restore):", 0, QApplication::UnicodeUTF8));
        pushButton_close->setText(QApplication::translate("GeoSysSettingsIconisedVolumesForm", "&Close", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class GeoSysSettingsIconisedVolumesForm: public Ui_GeoSysSettingsIconisedVolumesForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTINGS_ICONISEDVOLS_FORM_H
