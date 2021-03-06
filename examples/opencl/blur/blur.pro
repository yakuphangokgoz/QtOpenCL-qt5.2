TEMPLATE = app
TARGET = blur
QT += widgets
DEPENDPATH += .
INCLUDEPATH += .

# Input
SOURCES += main.cpp \
           blurwidget.cpp
HEADERS += blurwidget.h \
           blurtable.h
RESOURCES += blur.qrc

LIBS += -L../../../lib -L../../../bin
include(../../../src/opencl/opencl_dep.pri)

win32: LIBS += -L$$PWD/../../../lib/x86/ -lOpenCL

INCLUDEPATH += $$PWD/../../../lib/x86
DEPENDPATH += $$PWD/../../../lib/x86
