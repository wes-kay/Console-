/*******************************************************************************
* Copyright (c) 2013 "Filippo Scognamiglio"
* https://github.com/Swordfish90/cool-retro-term
*
* This file is part of cool-retro-term.
*
* cool-retro-term is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*******************************************************************************/

import QtQuick 2.2

Timer{
    default property bool enableTimer: false
    property real time

    NumberAnimation on time {
        from: 0
        to: 100000
        running: appSettings.fps === 0 && enableTimer
        duration: 100000
        loops: Animation.Infinite
    }

    onTriggered: time += interval
    running: appSettings.fps !== 0 && enableTimer
    interval: Math.round(1000 / appSettings.fps)
    repeat: true
}
