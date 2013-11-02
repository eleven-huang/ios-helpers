Collect some helpers for ios development, for this we can easy to reuse it. Some from the web and some from my working. More to be continued. And of course, you are very welcome to join.

#Install
	
	pod "ios-helpers", :git => "https://github.com/eleven-huang/ios-helpers.git"

#Helpers
##UIViewHelper
zoom in and zoom out a view
	
		
	+ (void)ZoominView: (UIView *)aView withFinishBlock: (void (^)())block;
	+ (void)ZoomoutView: (UIView *)aView withFinishBlock: (void (^)())block;
	
##NSTimer+Blocks
Add blocks for timer

		
	+(id)scheduledTimerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;
	
	+(id)timerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;
	
	
##UIAlertView+Extend
You can disable or enable a button in UIAlertView

	
	- (void)disableButtonWithTitle: (NSString *)title;
	- (void)enableButtonWithTitle: (NSString *)title;
	
	
	