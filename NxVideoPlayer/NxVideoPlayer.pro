#-------------------------------------------------
#
# Project created by QtCreator 2016-10-25T11:08:06
#
#-------------------------------------------------

QT       += core gui
QT       += network     \
            xml         \
            multimedia  \
            multimediawidgets \
            widgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = NxVideoPlayer
TEMPLATE = app

# Add Playler Tool Library
LIBS += -lnx_drm_allocator -lnx_video_api
LIBS += -L$$PWD/../libnxplayer/lib/32bit -lnxmpmanager -lnxfilterhelper -lnxfilter

# Add icu libraries
LIBS += -licuuc -licui18n
LIBS += -lasound

INCLUDEPATH += ../libnxplayer/include

SOURCES += main.cpp\
        mainwindow.cpp \
        CNX_MoviePlayer.cpp \
        NX_CFileList.cpp \
        playlistwindow.cpp \
        CNX_SubtitleParser.cpp

HEADERS  += mainwindow.h \
        CNX_MoviePlayer.h \
        NX_CFileList.h \
        CNX_Util.h \
        playlistwindow.h \
        CNX_SubtitleParser.h \

FORMS    += mainwindow.ui \
            playlistwindow.ui
