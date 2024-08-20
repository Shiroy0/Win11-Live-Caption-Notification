While true{
    if WinExist("ahk_class Xaml_WindowedPopupClass")
    {
        WinGetPos &X, &Y, &W, &H
        if(W = 340){
            WinClose "PopupHost"
        }
    }
    sleep 10
}