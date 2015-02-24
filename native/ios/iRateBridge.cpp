#import "iRate.h"

class iRateNative : public Object {

public:
	void setMinDaysUntilPrompt(int days);
	void setMinLaunchesUntilPrompt(int launches);
	
	void setMessage(String message);
	void setTitle(String title);
	
	void setPositiveButton(String title);
	void setNegativeButton(String title);
	void setNeutralButton(String title);
	
	void init();

};

void iRateNative::setMinDaysUntilPrompt(int days) {
	NSLog(@"Setting min days until prompt: %d", days);
	[iRate sharedInstance].daysUntilPrompt = days;
}

void iRateNative::setMinLaunchesUntilPrompt(int launches) {
	NSLog(@"Setting min launches until prompt: %d", launches);
	[iRate sharedInstance].usesUntilPrompt = launches;
}

void iRateNative::setMessage(String message) {
	[iRate sharedInstance].message = message.ToNSString();
}
void iRateNative::setTitle(String title) {
	[iRate sharedInstance].messageTitle = title.ToNSString();
}

void iRateNative::setPositiveButton(String title) {
	[iRate sharedInstance].rateButtonLabel = title.ToNSString();
}
void iRateNative::setNegativeButton(String title) {
	[iRate sharedInstance].cancelButtonLabel = title.ToNSString();
}
void iRateNative::setNeutralButton(String title) {
	[iRate sharedInstance].remindButtonLabel = title.ToNSString();
}

void iRateNative::init() {
}
