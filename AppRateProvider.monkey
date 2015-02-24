Strict

Import dialogProvider

#If TARGET="android"
Import "native/android/apprate.android.java"
Import "native/android/AppRate.java"
Import "native/android/ExceptionHandler.java"
Import "native/android/PrefsContract.java"
#Else
Error "The AppRate provider is only available on the android target"
#Endif

#APPRATE_AMAZON = False

Class AppRateDialogProvider Extends AppRateNative Implements RateDialogProvider

	Function GetInstance:AppRateDialogProvider()
		If Not instance
			instance = New AppRateDialogProvider()
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
		setPositiveButton(button)
	End
	Method SetNeutralButton:Void(button:String)
		setNeutralButton(button)
	End
	Method SetNegativeButton:Void(button:String)
		setNegativeButton(button)
	End
	
	Method Initialize:Void()
		init()
	End

	Private
	Global instance:AppRateDialogProvider

End

Extern

Class AppRateNative

	Method setMinDaysUntilPrompt:Void(days:Int)
	Method setMinLaunchesUntilPrompt:Void(launches:Int)
	
	Method setMessage:Void(message:String)
	Method setTitle:Void(title:String)
	
	Method setPositiveButton:Void(title:String)
	Method setNegativeButton:Void(title:String)
	Method setNeutralButton:Void(title:String)
	
	Method init:Void()
End