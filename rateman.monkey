Strict

Import dialogProvider

#Rem
A simple class to show a native "Rate My App" dialog

Uses iRate for iOS - https://github.com/nicklockwood/iRate
Uses AppRate for Android - https://github.com/TimotheeJeannin/AppRate

RateMan.GetInstance().DaysUntilPrompt = 5
RateMan.GetInstance().LaunchesUntilPrompt = 15

#End

#If TARGET="android"
Import AppRateProvider
#Else If TARGET="ios"
Import iRateProvider
#End

Class RateMan

	Function GetInstance:RateMan()
		If Not instance
			instance = New RateMan()
		Endif
		Return instance
	End
	
	Method DaysUntilPrompt:Void(days:Float) Property
		rateDialogProvider.SetDaysUntilPrompt(days)
	End

	Method LaunchesUntilPrompt:Void(launches:Int) Property
		rateDialogProvider.SetLaunchesUntilPrompt(launches)
	End
	
	Method Message:Void(message:String) Property
		rateDialogProvider.SetMessage(message)
	End
	
	Method Title:Void(title:String) Property
		rateDialogProvider.SetTitle(title)
	End
	
	Method Initialize:Void()
		rateDialogProvider.Initialize()
	End
	
	Private
	Global instance:RateMan
	Field rateDialogProvider:RateDialogProvider
	
	Method New()
	#If TARGET="android"
		rateDialogProvider = AppRateDialogProvider.GetInstance()
	#Else If TARGET="ios"
		rateDialogProvider = iRateDialogProvider.GetInstance()
	#End
	End

End


