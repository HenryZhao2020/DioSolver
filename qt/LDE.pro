QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ../betterc.c \
    ../eea.c \
    ../ineq.c \
    ../intvl.c \
    ../lde.c \
    ../list.c \
    Dialog.cpp \
    Main.cpp \
    MainWindow.cpp

HEADERS += \
    ../betterc.h \
    ../eea.h \
    ../ineq.h \
    ../intvl.h \
    ../lde.h \
    ../list.h \
    Dialog.h \
    MainWindow.h

TARGET = "LDE Solver"

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Styles.qss

RESOURCES += \
    Resources.qrc
