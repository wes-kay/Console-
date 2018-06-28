QT += quick
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    fileio.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    utils.js \
    fonts/modern-pro-font-win-tweaked/._LICENSE \
    fonts/1979-atari-400-800/ReadMe.rtf \
    fonts/modern-hermit/Hermit-bold.otf \
    fonts/modern-hermit/Hermit-light.otf \
    fonts/modern-hermit/Hermit-medium.otf \
    fonts/modern-inconsolata/Inconsolata.otf \
    fonts/1971-ibm-3278/3270Medium.ttf \
    fonts/1975-knight-tv/KnightTVMedium.ttf \
    fonts/1977-apple2/PrintChar21.ttf \
    fonts/1977-apple2/PRNumber3.ttf \
    fonts/1977-commodore-pet/COMMODORE_PET.ttf \
    fonts/1977-commodore-pet/COMMODORE_PET_128.ttf \
    fonts/1977-commodore-pet/COMMODORE_PET_128_2y.ttf \
    fonts/1977-commodore-pet/COMMODORE_PET_2x.ttf \
    fonts/1977-commodore-pet/COMMODORE_PET_2y.ttf \
    fonts/1977-commodore-pet/COMMODORE_PET_64.ttf \
    fonts/1977-commodore-pet/COMMODORE_PET_64_2y.ttf \
    fonts/1979-atari-400-800/ATARI400800_original.TTF \
    fonts/1979-atari-400-800/ATARI400800_squared.TTF \
    fonts/1982-commodore64/C64_Elite_Mono_v1.0-STYLE.ttf \
    fonts/1982-commodore64/C64_Pro_Mono_v1.0-STYLE.ttf \
    fonts/1982-commodore64/C64_Pro_v1.0-STYLE.ttf \
    fonts/1982-commodore64/C64_User_Mono_v1.0-STYLE.ttf \
    fonts/1982-commodore64/C64_User_v1.0-STYLE.ttf \
    fonts/1985-atari-st/AtariST8x16SystemFont.ttf \
    fonts/1985-ibm-pc-vga/Perfect DOS VGA 437 Win.ttf \
    fonts/1985-ibm-pc-vga/Perfect DOS VGA 437.ttf \
    fonts/modern-fixedsys-excelsior/FSEX301-L2.ttf \
    fonts/modern-monaco/monaco.ttf \
    fonts/modern-pro-font-win-tweaked/ProFontWindows.ttf \
    fonts/modern-proggy-tiny/ProggyTiny.ttf \
    fonts/modern-terminus/TerminusTTF-4.38.2.ttf \
    fonts/modern-terminus/TerminusTTF-Bold-4.38.2.ttf \
    frames/images/black-frame-normals.png \
    frames/images/black-frame-original.png \
    frames/images/black-frame.png \
    frames/images/screen-frame-normals.png \
    frames/images/screen-frame-original.png \
    frames/images/screen-frame.png \
    images/allNoise512.png \
    images/crt256.png \
    fonts/1971-ibm-3278/README.md \
    fonts/1971-ibm-3278/LICENSE.txt \
    fonts/1977-apple2/FreeLicense.txt \
    fonts/1977-commodore-pet/FreeLicense.txt \
    fonts/1982-commodore64/license.txt \
    fonts/1985-ibm-pc-vga/dos437.txt \
    fonts/modern-hermit/LICENSE \
    fonts/modern-pro-font-win-tweaked/._readme.txt \
    fonts/modern-pro-font-win-tweaked/Comments for ProFontWindows \
    fonts/modern-pro-font-win-tweaked/LICENSE \
    fonts/modern-pro-font-win-tweaked/readme.txt \
    fonts/modern-proggy-tiny/Licence.txt \
    frames/utils/TerminalFrame.qml \
    frames/BlackRoughFrame.qml \
    frames/WhiteSimpleFrame.qml \
    ApplicationSettings.qml \
    CRTMainMenuBar.qml \
    FontPixels.qml \
    Fonts.qml \
    FontScanlines.qml \
    main.qml \
    PreprocessedTerminal.qml \
    ShaderTerminal.qml \
    TerminalContainer.qml \
    TimeManager.qml \
    fonts/modern-monaco/README

HEADERS += \
    fileio.h
