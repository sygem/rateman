Strict

Interface RateDialogProvider

	Method SetDaysUntilPrompt:Void(days:Float)
	Method SetLaunchesUntilPrompt:Void(launches:Int)

	Method SetMessage:Void(message:String)
	Method SetTitle:Void(title:String)
	
	Method SetPositiveButton:Void(button:String)
	Method SetNeutralButton:Void(button:String)
	Method SetNegativeButton:Void(button:String)
	
	Method Initialize:Void()

End