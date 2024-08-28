While true{
    if WinExist("ahk_class Xaml_WindowedPopupClass")
    {   
        sleep 50
        try 
        { 
            WinGetPos &X, &Y, &W, &H, "PopupHost" 
        }
        catch{

        }
        else{
            if(W = 340){
                WinClose "PopupHost"
            }
        }
    }
    sleep 10
}