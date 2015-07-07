######################################################################
# Automatically generated by qmake (2.01a) Wed Nov 5 09:14:54 2014
######################################################################

QT += qt3support

QMAKE_CXXFLAGS += \
    -frounding-math \
    -std=c++0x \ #为了解决libIGL库中的“'auto' will change meaning in C++0x”问题而添加此项
    -fopenmp #为了支持OpenMP并行处理而添加此项

DEFINES += GL_GLEXT_PROTOTYPES

SOURCES += \
    src/main.cpp \
    src/GLViewer.cpp \
    src/MainWidow.cpp \
    src/Mesh.cpp \
    src/Shader.cpp \
    src/ToothSegmentation.cpp

HEADERS += \
    include/BoundingBox.h \
    include/GLViewer.h \
    include/MainWindow.h \
    include/Mesh.h \
    include/Shader.h \
    include/ToothSegmentation.h

INCLUDEPATH += \
    /usr/include/qt4/QtCore \
    /usr/include/qt4/QtGui \
    /usr/include/qt4/QtOpenGL \
    /usr/include/qt4 \
    /usr/include/qt3/ \
    /usr/include/qt4/QtXml/ \
    include/ \
    lib/libigl/include/ \ #libIGL库包含路径
    lib/eigen/include/ #Eigen库包含路径

LIBS += \
    -L/usr/X11R6/lib64 -lQtOpenGL -lQtGui -lQtCore \
    -lQGLViewer -lglut -lGL -lGLU \ #libQGLViewer和freeglut库文件
    -lOpenMeshCore -lOpenMeshTools \ #OpenMesh库文件
    -lgomp -lpthread #为了支持OpenMP并行处理而添加此两项

FORMS += \
    ui_templates/mainwindow.ui

