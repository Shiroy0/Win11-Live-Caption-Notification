if A_language = 0409 {
PopUpWindowName := "PopUpHost"
PopUpWindowWidth := 340
;msgbox PopUpWindowName
}
else if A_language = 0804 {
PopUpWindowName := "主机弹出窗口"
PopUpWindowWidth := 348
;msgbox PopUpWindowName
}

While true{
    if WinExist("ahk_class Xaml_WindowedPopupClass")
    {   
        sleep 50
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
    sleep 10
}
