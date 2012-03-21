import QtQuick 1.0
import QtMultimediaKit 1.1
import "SudokuLogic.js" as SG

Rectangle {
    id:rect
    width: 360
    height: 640
    color: "#f9f2f2"

    Audio {
        id: playMusicClick
        source: "button-11.mp3"
    }
    Audio {
        id: playMusicStart
        source: "Power-Up.mp3"
    }

    InnerActiveAd {
        id: ad
        width: 360
        height: 640
        x: 0
        y: 0
        appid: "SND_Sudoku_OVI";
    }

    Timer{
        id:sampleTimer
        interval:1000
        running:true
        onTriggered: {
            rect.state="splashScreen";
            playMusicStart.play()
           addTimer.running=true
        }   
    }

    Timer{
        id:addTimer
        interval:2000
        running:false
        onTriggered: {
            ad.loadAd();
            rect.state="inAds";
            gamePlayScreenTimer.running=true
        }
    }

    Timer{
        id:gameTimer
        interval:1000
        running:false
        repeat:true
        onTriggered:{
            SG.counter++
            textTimer.text = SG.counter
        }
    }

    Timer{
        id:gamePlayScreenTimer
        interval:5000
        running:false
        onTriggered: {
            rect.state="MainMenuPage";
        }
    }

    Image {
        id: imageSudokuGrid
        x: 0
        y: 0
        source: "images/Untitled-2.png"
        opacity: 0
    }

    TextInput {
        id: text11
        x: 13
        y: 153
        width: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text12
        x: 48
        y: 153
        width: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text13
        x: 83
        y: 153
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text14
        x: 124
        y: 153
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text15
        x: 161
        y: 153
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text16
        x: 198
        y: 153
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text17
        x: 236
        y: 153
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text18
        x: 273
        y: 153
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text19
        x: 312
        y: 153
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text21
        x: 13
        y: 189
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text22
        x: 48
        y: 189
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text23
        x: 83
        y: 189
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text24
        x: 124
        y: 189
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text25
        x: 161
        y: 189
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text26
        x: 198
        y: 189
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text27
        x: 236
        y: 189
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text28
        x: 273
        y: 189
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text29
        x: 312
        y: 189
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text31
        x: 13
        y: 226
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text32
        x: 48
        y: 226
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text33
        x: 83
        y: 226
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text34
        x: 124
        y: 226
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text35
        x: 161
        y: 226
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text36
        x: 198
        y: 226
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text37
        x: 236
        y: 226
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text38
        x: 273
        y: 226
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text39
        x: 312
        y: 226
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text41
        x: 13
        y: 264
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text42
        x: 48
        y: 264
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text43
        x: 83
        y: 264
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text44
        x: 124
        y: 264
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text45
        x: 161
        y: 264
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text46
        x: 198
        y: 264
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text47
        x: 236
        y: 264
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text48
        x: 273
        y: 264
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text49
        x: 312
        y: 264
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text51
        x: 13
        y: 301
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text52
        x: 48
        y: 301
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text53
        x: 83
        y: 301
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text54
        x: 124
        y: 301
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text55
        x: 161
        y: 301
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text56
        x: 198
        y: 301
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text57
        x: 236
        y: 301
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text58
        x: 273
        y: 301
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text59
        x: 312
        y: 301
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text61
        x: 13
        y: 338
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text62
        x: 48
        y: 338
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text63
        x: 83
        y: 338
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text64
        x: 124
        y: 338
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text65
        x: 161
        y: 338
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text66
        x: 198
        y: 338
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text67
        x: 236
        y: 338
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text68
        x: 273
        y: 338
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text69
        x: 312
        y: 338
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text71
        x: 13
        y: 376
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text72
        x: 48
        y: 376
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text73
        x: 83
        y: 376
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text74
        x: 124
        y: 376
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text75
        x: 161
        y: 376
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text76
        x: 198
        y: 376
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text77
        x: 236
        y: 376
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text78
        x: 273
        y: 376
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text79
        x: 312
        y: 376
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text81
        x: 13
        y: 413
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text82
        x: 48
        y: 413
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text83
        x: 83
        y: 413
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text84
        x: 124
        y: 413
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text85
        x: 161
        y: 413
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text86
        x: 198
        y: 413
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text87
        x: 236
        y: 413
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text88
        x: 273
        y: 413
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text89
        x: 312
        y: 413
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text91
        x: 13
        y: 452
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text92
        x: 48
        y: 452
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text93
        x: 83
        y: 452
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text94
        x: 124
        y: 452
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text95
        x: 161
        y: 452
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text96
        x: 198
        y: 452
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }
    TextInput {
        id: text97
        x: 236
        y: 452
        width: 30
        height: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text98
        x: 273
        y: 452
        width: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    TextInput {
        id: text99
        x: 312
        y: 452
        width: 30
        validator: IntValidator{bottom: 1; top: 9;}
        text: qsTr("")
        font.pixelSize: 26

        horizontalAlignment: "AlignHCenter"
        opacity: 0
    }

    Image {
        id: imageMainMenu
        x: 92
        y: 153
        source: "images/MainMenuPage.png"
        opacity: 0

        MouseArea {
            id: maInstructionsButton
            x: 109
            y: 287
            width: 148
            height: 47
            opacity: 0
        }

        MouseArea {
            id: maPlayButton
            x: 108
            y: 233
            width: 150
            height: 45
            opacity: 0
        }

        MouseArea {
            id: maExitButton
            x: 104
            y: 343
            width: 100
            height: 100
            opacity: 0

            onClicked:Qt.quit();
        }
    }

    Image {
        id: imageSubmitEasy
        x: 230
        y: 530
        width: 115
        height: 45
        source: "images/SubmitButton.png"
        opacity: 0

        MouseArea {
            id: maSubmitEasy
            anchors.fill: parent
            opacity: 0
        }
    }

    Image {
        id: imageSubmitIntermediate
        x: 230
        y: 530
        width: 115
        height: 45
        source: "images/SubmitButton.png"
        opacity: 0

        MouseArea {
            id: maSubmitIntermediate
            anchors.fill: parent
            opacity: 0
        }
    }

    Image {
        id: imageSubmitHard
        x: 230
        y: 530
        width: 115
        height: 45
        source: "images/SubmitButton.png"
        opacity: 0

        MouseArea {
            id: maSubmitHard
            anchors.fill: parent
            opacity: 0
        }
    }

    Image {
        id: imageLevels
        x: 92
        y: 153
        source: "images/Levels.png"
        opacity: 0

        MouseArea {
            id: maLevel1
            x: 83
            y: 194
            width: 100
            height: 100
            opacity: 0
        }

        MouseArea {
            id: maLevel2
            x: 89
            y: 282
            width: 184
            height: 64
            opacity: 0
        }

        MouseArea {
            id: maLevel3
            x: 91
            y: 368
            width: 182
            height: 67
            opacity: 0
        }
    }

    Image {
        id: imageCongratulations
        x: 32
        y: 300
        source: "images/Congratulations.png"
        opacity: 0
    }

    Image {
        id: imageBackButton
        x: 13
        y: 520
        width: 55
        height: 66
        source: "images/BackButton.png"
        opacity: 0

        MouseArea {
            id: maBackButton
            x: 0
            y: 15
            width: 55
            height: 35
            opacity: 0
        }
    }

    Image {
        id: instructionsImage
        x: 0
        y: 0
        source: "images/Instructions.png"
        opacity: 0
    }

    Image {
        id: imageSplash
        x: 0
        y: 0
        source: "images/splashscreen.jpg"
        opacity: 0
    }

    Text {
        id: textTimer
        x: 187
        y: 57
        width: 50
        height: 26
        color: "#f91408"
        text: qsTr("00")
        font.family: "MS UI Gothic"
        font.pixelSize: 25
        opacity: 0
    }

    Text {
        id: textScore
        x: 124
        y: 57
        width: 46
        height: 21
        color: "#4ab10e"
        text: qsTr("Time")
        font.pixelSize: 20
        wrapMode: "WordWrap"
        opacity: 0
    }

    states: [
        State {
            name: "Level1"

            PropertyChanges {
                target: imageSudokuGrid
                x: 0
                y: 0
                opacity: 1
            }

            PropertyChanges {
                target: text11
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text12
                text: qsTr("9")
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text13
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text14
                text: qsTr("1")
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text15
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text16
                text: qsTr("5")
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text17
                text: qsTr("8")
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text18
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text19
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text21
                text: qsTr("2")
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text22
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text23
                text: qsTr("6")
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text24
                opacity: 1
            }

            PropertyChanges {
                target: text25
                opacity: 1
            }

            PropertyChanges {
                target: text26
                opacity: 1
            }

            PropertyChanges {
                target: text27
                opacity: 1
            }

            PropertyChanges {
                target: text28
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text29
                font.pixelSize: 26
                opacity: 1
            }


            PropertyChanges {
                target: text31
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text32
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text33
                text: qsTr("3")
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text34
                opacity: 1
            }

            PropertyChanges {
                target: text35
                text: qsTr("2")
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text36
                text: qsTr("6")
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text37
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text38
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text39
                font.pixelSize: 26
                opacity: 1
            }

            PropertyChanges {
                target: text41
                text: qsTr("8")
                opacity: 1
            }

            PropertyChanges {
                target: text42
                opacity: 1
            }

            PropertyChanges {
                target: text43
                text: qsTr("1")
                opacity: 1
            }

            PropertyChanges {
                target: text44
                opacity: 1
            }

            PropertyChanges {
                target: text45
                text: qsTr("4")
                opacity: 1
            }

            PropertyChanges {
                target: text46
                text: qsTr("7")
                opacity: 1
            }

            PropertyChanges {
                target: text47
                opacity: 1
            }

            PropertyChanges {
                target: text48
                text: qsTr("3")
                opacity: 1
            }

            PropertyChanges {
                target: text49
                opacity: 1
            }

            PropertyChanges {
                target: text51
                opacity: 1
            }

            PropertyChanges {
                target: text52
                opacity: 1
            }

            PropertyChanges {
                target: text53
                opacity: 1
            }

            PropertyChanges {
                target: text54
                opacity: 1
            }

            PropertyChanges {
                target: text55
                text: qsTr("5")
                opacity: 1
            }

            PropertyChanges {
                target: text56
                opacity: 1
            }

            PropertyChanges {
                target: text57
                opacity: 1
            }

            PropertyChanges {
                target: text58
                opacity: 1
            }

            PropertyChanges {
                target: text59
                opacity: 1
            }

            PropertyChanges {
                target: text61
                opacity: 1
            }

            PropertyChanges {
                target: text62
                text: qsTr("7")
                opacity: 1
            }

            PropertyChanges {
                target: text63
                opacity: 1
            }

            PropertyChanges {
                target: text64
                text: qsTr("3")
                opacity: 1
            }

            PropertyChanges {
                target: text65
                text: qsTr("1")
                opacity: 1
            }

            PropertyChanges {
                target: text66
                opacity: 1
            }

            PropertyChanges {
                target: text67
                text: qsTr("2")
                opacity: 1
            }

            PropertyChanges {
                target: text68
                opacity: 1
            }

            PropertyChanges {
                target: text69
                text: qsTr("9")
                opacity: 1
            }

            PropertyChanges {
                target: text71
                opacity: 1
            }

            PropertyChanges {
                target: text72
                opacity: 1
            }

            PropertyChanges {
                target: text73
                opacity: 1
            }

            PropertyChanges {
                target: text74
                text: qsTr("5")
                opacity: 1
            }

            PropertyChanges {
                target: text75
                text: qsTr("8")
                opacity: 1
            }

            PropertyChanges {
                target: text76
                opacity: 1
            }

            PropertyChanges {
                target: text77
                text: qsTr("1")
                opacity: 1
            }

            PropertyChanges {
                target: text78
                opacity: 1
            }

            PropertyChanges {
                target: text79
                opacity: 1
            }

            PropertyChanges {
                target: text81
                opacity: 1
            }

            PropertyChanges {
                target: text82
                opacity: 1
            }

            PropertyChanges {
                target: text83
                opacity: 1
            }

            PropertyChanges {
                target: text84
                opacity: 1
            }

            PropertyChanges {
                target: text85
                opacity: 1
            }

            PropertyChanges {
                target: text86
                opacity: 1
            }

            PropertyChanges {
                target: text87
                text: qsTr("9")
                opacity: 1
            }

            PropertyChanges {
                target: text88
                opacity: 1
            }

            PropertyChanges {
                target: text89
                text: qsTr("2")
                opacity: 1
            }

            PropertyChanges {
                target: text91
                opacity: 1
            }

            PropertyChanges {
                target: text92
                opacity: 1
            }

            PropertyChanges {
                target: text93
                text: qsTr("7")
                opacity: 1
            }

            PropertyChanges {
                target: text94
                text: qsTr("2")
                opacity: 1
            }

            PropertyChanges {
                target: text95
                opacity: 1
            }

            PropertyChanges {
                target: text96
                text: qsTr("3")
                opacity: 1
            }

            PropertyChanges {
                target: text97
                opacity: 1
            }

            PropertyChanges {
                target: text98
                text: qsTr("5")
                opacity: 1
            }

            PropertyChanges {
                target: text99
                opacity: 1
            }

            PropertyChanges {
                target: imageSubmitEasy
                opacity: 1
            }

            PropertyChanges {
                target: maSubmitEasy
                opacity: 1

                onClicked:{
                    SG.EasyVerify();
                }
            }

            PropertyChanges {
                target: imageBackButton
                opacity: 1
            }

            PropertyChanges {
                target: maBackButton
                opacity: 1

                onClicked:{
                    rect.state="MainMenuPage"
                }
            }

            PropertyChanges {
                target: textTimer
                x: 187
                y: 57
                width: 50
                height: 26
                color: "#f91408"
                text: qsTr("00")
                font.family: "MS UI Gothic"
                font.pixelSize: 25
                opacity: 1
            }

            PropertyChanges {
                target: textScore
                text: qsTr("Time")
                opacity: 1
            }
        },
        State {
            name: "Level2"

            PropertyChanges {
                target: imageSudokuGrid
                opacity: 1
            }

            PropertyChanges {
                target: text11
                opacity: 1
            }

            PropertyChanges {
                target: text12
                text: qsTr("8")
                opacity: 1
            }

            PropertyChanges {
                target: text13
                opacity: 1
            }

            PropertyChanges {
                target: text14
                text: qsTr("7")
                opacity: 1
            }

            PropertyChanges {
                target: text15
                opacity: 1
            }

            PropertyChanges {
                target: text16
                opacity: 1
            }

            PropertyChanges {
                target: text17
                text: qsTr("3")
                opacity: 1
            }

            PropertyChanges {
                target: text18
                opacity: 1
            }

            PropertyChanges {
                target: text19
                x: 312
                y: 153
                opacity: 1
            }

            PropertyChanges {
                target: text21
                text: qsTr("7")
                opacity: 1
            }

            PropertyChanges {
                target: text22
                opacity: 1
            }

            PropertyChanges {
                target: text23
                opacity: 1
            }

            PropertyChanges {
                target: text24
                text: qsTr("5")
                opacity: 1
            }

            PropertyChanges {
                target: text25
                opacity: 1
            }

            PropertyChanges {
                target: text26
                text: qsTr("3")
                opacity: 1
            }

            PropertyChanges {
                target: text27
                opacity: 1
            }

            PropertyChanges {
                target: text28
                opacity: 1
            }

            PropertyChanges {
                target: text29
                opacity: 1
            }

            PropertyChanges {
                target: text31
                opacity: 1
            }

            PropertyChanges {
                target: text32
                opacity: 1
            }

            PropertyChanges {
                target: text33
                opacity: 1
            }

            PropertyChanges {
                target: text34
                opacity: 1
            }

            PropertyChanges {
                target: text35
                text: qsTr("8")
                opacity: 1
            }

            PropertyChanges {
                target: text36
                opacity: 1
            }

            PropertyChanges {
                target: text37
                opacity: 1
            }

            PropertyChanges {
                target: text38
                text: qsTr("7")
                opacity: 1
            }

            PropertyChanges {
                target: text39
                opacity: 1
            }

            PropertyChanges {
                target: text41
                opacity: 1
            }

            PropertyChanges {
                target: text42
                opacity: 1
            }

            PropertyChanges {
                target: text43
                text: qsTr("9")
                opacity: 1
            }

            PropertyChanges {
                target: text44
                text: qsTr("8")
                opacity: 1
            }

            PropertyChanges {
                target: text45
                opacity: 1
            }

            PropertyChanges {
                target: text46
                opacity: 1
            }

            PropertyChanges {
                target: text47
                opacity: 1
            }

            PropertyChanges {
                target: text48
                text: qsTr("3")
                opacity: 1
            }

            PropertyChanges {
                target: text49
                opacity: 1
            }

            PropertyChanges {
                target: text51
                text: qsTr("2")
                opacity: 1
            }

            PropertyChanges {
                target: text52
                opacity: 1
            }

            PropertyChanges {
                target: text53
                text: qsTr("5")
                opacity: 1
            }

            PropertyChanges {
                target: text54
                opacity: 1
            }

            PropertyChanges {
                target: text55
                text: qsTr("6")
                opacity: 1
            }

            PropertyChanges {
                target: text56
                opacity: 1
            }

            PropertyChanges {
                target: text57
                text: qsTr("7")
                opacity: 1
            }

            PropertyChanges {
                target: text58
                opacity: 1
            }

            PropertyChanges {
                target: text59
                text: qsTr("8")
                opacity: 1
            }

            PropertyChanges {
                target: text61
                opacity: 1
            }

            PropertyChanges {
                target: text62
                text: qsTr("4")
                opacity: 1
            }

            PropertyChanges {
                target: text63
                opacity: 1
            }

            PropertyChanges {
                target: text64
                opacity: 1
            }

            PropertyChanges {
                target: text65
                opacity: 1
            }

            PropertyChanges {
                target: text66
                text: qsTr("5")
                opacity: 1
            }

            PropertyChanges {
                target: text67
                text: qsTr("2")
                opacity: 1
            }

            PropertyChanges {
                target: text68
                opacity: 1
            }

            PropertyChanges {
                target: text69
                opacity: 1
            }

            PropertyChanges {
                target: text71
                opacity: 1
            }

            PropertyChanges {
                target: text72
                text: qsTr("6")
                opacity: 1
            }

            PropertyChanges {
                target: text73
                opacity: 1
            }

            PropertyChanges {
                target: text74
                opacity: 1
            }

            PropertyChanges {
                target: text75
                text: qsTr("4")
                opacity: 1
            }

            PropertyChanges {
                target: text76
                opacity: 1
            }

            PropertyChanges {
                target: text77
                opacity: 1
            }

            PropertyChanges {
                target: text78
                opacity: 1
            }

            PropertyChanges {
                target: text79
                opacity: 1
            }

            PropertyChanges {
                target: text81
                opacity: 1
            }

            PropertyChanges {
                target: text82
                opacity: 1
            }

            PropertyChanges {
                target: text83
                opacity: 1
            }

            PropertyChanges {
                target: text84
                text: qsTr("9")
                opacity: 1
            }

            PropertyChanges {
                target: text85
                opacity: 1
            }

            PropertyChanges {
                target: text86
                text: qsTr("8")
                opacity: 1
            }

            PropertyChanges {
                target: text87
                opacity: 1
            }

            PropertyChanges {
                target: text88
                opacity: 1
            }

            PropertyChanges {
                target: text89
                text: qsTr("5")
                opacity: 1
            }

            PropertyChanges {
                target: text91
                opacity: 1
            }

            PropertyChanges {
                target: text92
                opacity: 1
            }

            PropertyChanges {
                target: text93
                text: qsTr("1")
                opacity: 1
            }

            PropertyChanges {
                target: text94
                opacity: 1
            }

            PropertyChanges {
                target: text95
                opacity: 1
            }

            PropertyChanges {
                target: text96
                text: qsTr("2")
                opacity: 1
            }

            PropertyChanges {
                target: text97
                opacity: 1
            }

            PropertyChanges {
                target: text98
                text: qsTr("4")
                opacity: 1
            }

            PropertyChanges {
                target: text99
                opacity: 1
            }

            PropertyChanges {
                target: imageSubmitIntermediate
                opacity: 1
            }

            PropertyChanges {
                target: maSubmitIntermediate
                opacity: 1

                onClicked:{
                    SG.IntermediateVerify();
                }
            }

            PropertyChanges {
                target: imageBackButton
                opacity: 1
            }

            PropertyChanges {
                target: maBackButton
                opacity: 1

                onClicked:{
                    rect.state="MainMenuPage"
                }
            }

            PropertyChanges {
                target: textScore
                opacity: 1
            }

            PropertyChanges {
                target: textTimer
                opacity: 1
            }
        },
        State {
            name: "MainMenuPage"

            PropertyChanges {
                target: imageMainMenu
                x: 0
                y: 0
                opacity: 1
            }

            PropertyChanges {
                target: maPlayButton
                x: 109
                y: 233
                opacity: 1

                onClicked:{
                    rect.state="ChooseLevel"
                    playMusicClick.play()
                    SG.counter=0
                    textTimer.text=0
                }
            }

            PropertyChanges {
                target: maInstructionsButton
                opacity: 1

                onClicked:{
                    rect.state="Instructions"
                    playMusicClick.play()
                }
            }

            PropertyChanges {
                target: mouse_area1
                x: 104
                y: 343
                width: 71
                height: 33
                opacity: 1
            }

            PropertyChanges {
                target: maExitButton
                width: 100
                height: 32
                opacity: 1
            }
        },
        State {
            name: "Level3"

            PropertyChanges {
                target: imageSudokuGrid
                opacity: 1
            }

            PropertyChanges {
                target: text11
                opacity: 1
            }

            PropertyChanges {
                target: text12
                opacity: 1
            }

            PropertyChanges {
                target: text13
                opacity: 1
            }

            PropertyChanges {
                target: text14
                opacity: 1
            }

            PropertyChanges {
                target: text15
                opacity: 1
            }

            PropertyChanges {
                target: text16
                opacity: 1
            }

            PropertyChanges {
                target: textTimer
                opacity: 1
            }

            PropertyChanges {
                target: text18
                text: qsTr("8")
                opacity: 1
            }

            PropertyChanges {
                target: text19
                text: qsTr("1")
                opacity: 1
            }

            PropertyChanges {
                target: text21
                text: qsTr("7")
                opacity: 1
            }

            PropertyChanges {
                target: text22
                text: qsTr("3")
                opacity: 1
            }

            PropertyChanges {
                target: text23
                opacity: 1
            }

            PropertyChanges {
                target: text24
                text: qsTr("9")
                opacity: 1
            }

            PropertyChanges {
                target: text25
                opacity: 1
            }

            PropertyChanges {
                target: text26
                text: qsTr("8")
                opacity: 1
            }

            PropertyChanges {
                target: text27
                opacity: 1
            }

            PropertyChanges {
                target: text28
                opacity: 1
            }

            PropertyChanges {
                target: text29
                opacity: 1
            }

            PropertyChanges {
                target: text31
                opacity: 1
            }

            PropertyChanges {
                target: text32
                opacity: 1
            }

            PropertyChanges {
                target: text33
                opacity: 1
            }

            PropertyChanges {
                target: text34
                text: qsTr("3")
                opacity: 1
            }

            PropertyChanges {
                target: text35
                opacity: 1
            }

            PropertyChanges {
                target: text36
                opacity: 1
            }

            PropertyChanges {
                target: text37
                opacity: 1
            }

            PropertyChanges {
                target: text38
                opacity: 1
            }

            PropertyChanges {
                target: text39
                opacity: 1
            }

            PropertyChanges {
                target: text41
                text: qsTr("3")
                opacity: 1
            }

            PropertyChanges {
                target: text42
                opacity: 1
            }

            PropertyChanges {
                target: text43
                text: qsTr("2")
                opacity: 1
            }

            PropertyChanges {
                target: text44
                opacity: 1
            }

            PropertyChanges {
                target: text45
                text: qsTr("9")
                opacity: 1
            }

            PropertyChanges {
                target: text46
                opacity: 1
            }

            PropertyChanges {
                target: text47
                opacity: 1
            }

            PropertyChanges {
                target: text48
                text: qsTr("7")
                opacity: 1
            }

            PropertyChanges {
                target: text49
                opacity: 1
            }

            PropertyChanges {
                target: text51
                opacity: 1
            }

            PropertyChanges {
                target: text52
                text: qsTr("4")
                opacity: 1
            }

            PropertyChanges {
                target: text53
                opacity: 1
            }

            PropertyChanges {
                target: text54
                opacity: 1
            }

            PropertyChanges {
                target: text55
                opacity: 1
            }

            PropertyChanges {
                target: text56
                opacity: 1
            }

            PropertyChanges {
                target: text57
                opacity: 1
            }

            PropertyChanges {
                target: text58
                text: qsTr("6")
                opacity: 1
            }

            PropertyChanges {
                target: text59
                opacity: 1
            }

            PropertyChanges {
                target: text61
                opacity: 1
            }

            PropertyChanges {
                target: text62
                text: qsTr("9")
                opacity: 1
            }

            PropertyChanges {
                target: text63
                opacity: 1
            }

            PropertyChanges {
                target: text64
                opacity: 1
            }

            PropertyChanges {
                target: text65
                text: qsTr("5")
                opacity: 1
            }

            PropertyChanges {
                target: text66
                opacity: 1
            }

            PropertyChanges {
                target: text67
                text: qsTr("4")
                opacity: 1
            }

            PropertyChanges {
                target: text68
                opacity: 1
            }

            PropertyChanges {
                target: text69
                text: qsTr("8")
                opacity: 1
            }

            PropertyChanges {
                target: text71
                opacity: 1
            }

            PropertyChanges {
                target: text72
                opacity: 1
            }

            PropertyChanges {
                target: text73
                opacity: 1
            }

            PropertyChanges {
                target: text74
                opacity: 1
            }

            PropertyChanges {
                target: text75
                opacity: 1
            }

            PropertyChanges {
                target: text76
                text: qsTr("9")
                opacity: 1
            }

            PropertyChanges {
                target: text77
                opacity: 1
            }

            PropertyChanges {
                target: text78
                opacity: 1
            }

            PropertyChanges {
                target: text79
                opacity: 1
            }

            PropertyChanges {
                target: text81
                opacity: 1
            }

            PropertyChanges {
                target: text82
                opacity: 1
            }

            PropertyChanges {
                target: text83
                opacity: 1
            }

            PropertyChanges {
                target: text84
                text: qsTr("1")
                opacity: 1
            }

            PropertyChanges {
                target: text85
                opacity: 1
            }

            PropertyChanges {
                target: text86
                text: qsTr("4")
                opacity: 1
            }

            PropertyChanges {
                target: text87
                opacity: 1
            }

            PropertyChanges {
                target: text88
                text: qsTr("9")
                opacity: 1
            }

            PropertyChanges {
                target: text89
                text: qsTr("2")
                opacity: 1
            }

            PropertyChanges {
                target: text91
                text: qsTr("1")
                opacity: 1
            }

            PropertyChanges {
                target: text92
                text: qsTr("6")
                opacity: 1
            }

            PropertyChanges {
                target: text93
                opacity: 1
            }

            PropertyChanges {
                target: text94
                opacity: 1
            }

            PropertyChanges {
                target: text95
                opacity: 1
            }

            PropertyChanges {
                target: text96
                opacity: 1
            }

            PropertyChanges {
                target: text97
                opacity: 1
            }

            PropertyChanges {
                target: text98
                opacity: 1
            }

            PropertyChanges {
                target: text99
                opacity: 1
            }

            PropertyChanges {
                target: imageSubmitHard
                opacity: 1
            }

            PropertyChanges {
                target: maSubmitHard
                opacity: 1

                onClicked:{
                    SG.HardVerify();
                }
            }

            PropertyChanges {
                target: text17
                opacity: 1
            }

            PropertyChanges {
                target: imageBackButton
                opacity: 1
            }

            PropertyChanges {
                target: maBackButton
                opacity: 1

                onClicked:{
                    rect.state="MainMenuPage"
                }
            }

            PropertyChanges {
                target: textScore
                opacity: 1
            }
        },
        State {
            name: "Completion"

            PropertyChanges {
                target: imageCongratulations
                x: 0
                y: 0
                opacity: 1
            }
        },
        State {
            name: "ChooseLevel"

            PropertyChanges {
                target: imageLevels
                x: 0
                y: 0
                opacity: 1
            }

            PropertyChanges {
                target: maLevel1
                x: 10
                y: 216
                width: 87
                height: 40
                opacity: 1

                onClicked:{
                    rect.state="Level1"
                    SG.counter=0
                    textTimer.text=0
                    gameTimer.running=true
                }
            }

            PropertyChanges {
                target: maLevel2
                x: 197
                y: 298
                width: 140
                height: 42
                opacity: 1

                onClicked:{
                    rect.state="Level2"
                    SG.counter=0
                    textTimer.text=0
                    gameTimer.running=true
                }
            }

            PropertyChanges {
                target: maLevel3
                x: 10
                y: 372
                width: 119
                height: 43
                opacity: 1

                onClicked:{
                    rect.state="Level3"
                    SG.counter=0
                    textTimer.text=0
                    gameTimer.running=true
                }
            }

            PropertyChanges {
                target: imageBackButton
                z: 1
                opacity: 1
            }

            PropertyChanges {
                target: maBackButton
                opacity: 1

                onClicked:{
                    rect.state="MainMenuPage"
                }
            }
        },
        State {
            name: "Instructions"

            PropertyChanges {
                target: imageBackButton
                z: 1
                opacity: 1
            }

            PropertyChanges {
                target: maBackButton
                opacity: 1

                onClicked:{
                    rect.state="MainMenuPage"
                }
            }

            PropertyChanges {
                target: instructionsImage
                opacity: 1
            }
        },
        State {
            name: "splashScreen"

            PropertyChanges {
                target: imageSplash
                opacity: 1
            }
        },
        State {
            name: "inAds"
        }
    ]
}
