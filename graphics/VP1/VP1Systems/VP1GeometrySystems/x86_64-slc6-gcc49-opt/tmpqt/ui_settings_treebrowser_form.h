/********************************************************************************
** Form generated from reading UI file 'settings_treebrowser_form.ui'
**
** Created: Thu May 17 17:51:09 2018
**      by: Qt User Interface Compiler version 4.8.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SETTINGS_TREEBROWSER_FORM_H
#define UI_SETTINGS_TREEBROWSER_FORM_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QHBoxLayout>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QPushButton>
#include <QtGui/QSpacerItem>
#include <QtGui/QVBoxLayout>
#include <QtGui/QWidget>
#include "VP1GeometrySystems/VP1GeoTreeView.h"

QT_BEGIN_NAMESPACE

class Ui_GeoSysSettingsTreeBrowserForm
{
public:
    QVBoxLayout *verticalLayout;
    QLabel *label;
    VP1GeoTreeView *treeView_volumebrowser;
    QHBoxLayout *_4;
    QSpacerItem *spacerItem;
    QPushButton *pushButton_close;

    void setupUi(QWidget *GeoSysSettingsTreeBrowserForm)
    {
        if (GeoSysSettingsTreeBrowserForm->objectName().isEmpty())
            GeoSysSettingsTreeBrowserForm->setObjectName(QString::fromUtf8("GeoSysSettingsTreeBrowserForm"));
        GeoSysSettingsTreeBrowserForm->resize(214, 165);
        verticalLayout = new QVBoxLayout(GeoSysSettingsTreeBrowserForm);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        label = new QLabel(GeoSysSettingsTreeBrowserForm);
        label->setObjectName(QString::fromUtf8("label"));

        verticalLayout->addWidget(label);

        treeView_volumebrowser = new VP1GeoTreeView(GeoSysSettingsTreeBrowserForm);
        treeView_volumebrowser->setObjectName(QString::fromUtf8("treeView_volumebrowser"));

        verticalLayout->addWidget(treeView_volumebrowser);

        _4 = new QHBoxLayout();
        _4->setObjectName(QString::fromUtf8("_4"));
        spacerItem = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        _4->addItem(spacerItem);

        pushButton_close = new QPushButton(GeoSysSettingsTreeBrowserForm);
        pushButton_close->setObjectName(QString::fromUtf8("pushButton_close"));

        _4->addWidget(pushButton_close);


        verticalLayout->addLayout(_4);


        retranslateUi(GeoSysSettingsTreeBrowserForm);

        QMetaObject::connectSlotsByName(GeoSysSettingsTreeBrowserForm);
    } // setupUi

    void retranslateUi(QWidget *GeoSysSettingsTreeBrowserForm)
    {
        GeoSysSettingsTreeBrowserForm->setWindowTitle(QApplication::translate("GeoSysSettingsTreeBrowserForm", "Form", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("GeoSysSettingsTreeBrowserForm", "GeoModel volume hierachy:", 0, QApplication::UnicodeUTF8));
        pushButton_close->setText(QApplication::translate("GeoSysSettingsTreeBrowserForm", "&Close", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class GeoSysSettingsTreeBrowserForm: public Ui_GeoSysSettingsTreeBrowserForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTINGS_TREEBROWSER_FORM_H
