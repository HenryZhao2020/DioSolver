QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++20

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ../C-Backend/betterc.c \
    ../C-Backend/eea.c \
    ../C-Backend/ineq.c \
    ../C-Backend/intvl.c \
    ../C-Backend/lde.c \
    ../C-Backend/list.c \
    Dialog.cpp \
    Main.cpp \
    MainWindow.cpp

HEADERS += \
    ../C-Backend/betterc.h \
    ../C-Backend/eea.h \
    ../C-Backend/ineq.h \
    ../C-Backend/intvl.h \
    ../C-Backend/lde.h \
    ../C-Backend/list.h \
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
