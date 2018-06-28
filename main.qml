import QtQuick 2.2
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0
Window {
    id: terminalWindow
    visible: true
    width: 1024
    height: 768

    Component.onCompleted: {
        appSettings.handleFontChanged();

        x = appSettings.x
        y = appSettings.y
        width = appSettings.width
        height = appSettings.height

        visible = true
    }

    ApplicationSettings{
        id: appSettings
    }

    TerminalContainer{

        id: terminalContainer
        y: appSettings.showMenubar ? 0 : -2 // Workaroud to hide the margin in the menubar.
        width: parent.width * appSettings.windowScaling
        height: (parent.height + Math.abs(y)) * appSettings.windowScaling
        transform: Scale {
            xScale: 1 / appSettings.windowScaling
            yScale: 1 / appSettings.windowScaling
        }
    }
}
