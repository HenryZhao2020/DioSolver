QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++20

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ../C/betterc.c \
    ../C/eea.c \
    ../C/ineq.c \
    ../C/intvl.c \
    ../C/lde.c \
    ../C/list.c \
    Dialog.cpp \
    Main.cpp \
    MainWindow.cpp

HEADERS += \
    ../C/betterc.h \
    ../C/eea.h \
    ../C/ineq.h \
    ../C/intvl.h \
    ../C/lde.h \
    ../C/list.h \
    Dialog.h \
    MainWindow.h

TARGET = "LDE Solver"
VERSION = "1.1.0"

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Styles.qss

RESOURCES += \
    Resources.qrc
