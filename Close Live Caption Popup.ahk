While true{
    if WinExist("ahk_class Xaml_WindowedPopupClass"){
        WinGetPos &W, &H
        if(W = 340){
            WinClose "PopupHost"
        }
    }
    sleep 10
}