/*if A_language = 0409 {
PopUpWindowName := "PopUpHost"
PopUpWindowWidth := 340
}
else if A_language = 0804 {
PopUpWindowName := "主机弹出窗口"
PopUpWindowWidth := 348
}*/

CloseLiveCaptionPopup()

CloseLiveCaptionPopup(PopUpWindowName := "PopupHost", PopUpWindowWidth := 340){
    While true{
        if WinExist("ahk_class Xaml_WindowedPopupClass")
        {   
            try 
            { 
                WinGetPos &X, &Y, &W, &H, PopUpWindowName
            }
            catch{

            }
            else{
                if(W = PopUpWindowWidth){
                    WinClose PopUpWindowName
                }
            }
        }
        sleep 70
    }
}