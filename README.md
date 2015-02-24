rateman
=======

"Rate My App" module for [MonkeyX]. Uses [AppRate] for Android, and [iRate] for iOS. Also works on the Amazon app store.

Supported Targets
-----------------
- Android
- iOS

Installation Instructions
-------------------------

###Android
- No special installation instructions.

###iOS
- No special installation instructions.

Usage Example
-------------
```
RateMan.GetInstance().DaysUntilPrompt(2)
RateMan.GetInstance().LaunchesUntilPrompt(3)
RateMan.GetInstance().Initialize()
```
Version
-------
0.1a

[MonkeyX]:http://http://www.monkey-x.com/   
[AppRate]:https://github.com/TimotheeJeannin/AppRate
[iRate]:https://github.com/nicklockwood/iRate
