Strict

Import dialogProvider

#If TARGET="ios"
Import "native/ios/iRateBridge.cpp"
Import "native/ios/iRate.cpp"
#LIBS+="${CD}/native/ios/iRate.h"
#Else
Error "The iRate provider is only available on the iOS target"
#EndIf

Class iRateDialogProvider Extends iRateNative Implements RateDialogProvider

	Function GetInstance:iRateDialogProvider()
		If Not instance
			instance = New iRateDialogProvider()
		Endif
		Return instance
	End
	
	Method SetDaysUntilPrompt:Void(days:Float)
		setMinDaysUntilPrompt(Int(days))
	End
	Method SetLaunchesUntilPrompt:Void(launches:Int)
		setMinLaunchesUntilPrompt(launches)
	End

	Method SetMessage:Void(message:String)
		setMessage(message)
	End
	Method SetTitle:Void(title:String)
		setTitle(title)
	End
	
	Method SetPositiveButton:Void(button:String)
	End
	Method SetNeutralButton:Void(button:String)
	End
	Method SetNegativeButton:Void(button:String)
	End
	
	Method Initialize:Void()
		init()
	End

	Private
	Global instance:iRateDialogProvider

End

Extern

Class iRateNative

	Method setMinDaysUntilPrompt:Void(days:Int)
	Method setMinLaunchesUntilPrompt:Void(launches:Int)
	
	Method setMessage:Void(message:String)
	Method setTitle:Void(title:String)
	
	Method setPositiveButton:Void(title:String)
	Method setNegativeButton:Void(title:String)
	Method setNeutralButton:Void(title:String)
	
	Method init:Void()
End