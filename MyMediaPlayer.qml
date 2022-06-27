import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtMultimedia
import QtQuick.Dialogs
import QtQuick.Layouts
MediaPlayer{

    id:myMediaPlayer
    property alias volume:audioUotput.volume
    property alias position:myMediaPlayer.position
    property alias duration:myMediaPlayer.duration

    audioOutput:
    AudioOutput {
        id:audioUotput
        volume: 7
    }

    //播放 暂停  停止音乐的函数
    function playMusic()
    {
        myMediaPlayer.play();
        recent.timerStart();
    }


    function pauseMusic()
    {

        myMediaPlayer.pause()
    }

    function stopMusic()
    {

        myMediaPlayer.stop()
    }




    onSourceChanged: {
        myMediaPlayer.sendsongChange();
    }


    onPositionChanged: {
        buttonItem.value=myMediaPlayer.position
    }


 }








