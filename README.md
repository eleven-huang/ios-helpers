Collect some helpers for ios development, for this we can easy to reuse it. Some from the web and some from my working. 

More to be continued, and of course, you are very welcome to join.

#Install
	
	pod "ios-helpers", :git => "https://github.com/eleven-huang/ios-helpers.git"

#Import
	
	#import "UIViewHelper.h"
	//etc

#Helpers
##UIImage+Additions
1. burn tint color to image

		
		- (UIImage *)imageWithTintColor: (UIColor *)color;
		
##CookiesHelper
1. persist cookies after app exit

		+ (void)storeCookiesWithURL: (NSString *)url_string;
		
		+ (NSArray *)cookiesWithURL: (NSString *)url_string;
		
		+ (void)loadCookiesWithURL: (NSString *)url_string;
		
		+ (void)removeCookiesWithURL: (NSString *)url_string;


##UIViewHelper
1. zoom in and zoom out a view
	
		
		+ (void)ZoominView: (UIView *)aView withFinishBlock: (void (^)())block;
		
		+ (void)ZoomoutView: (UIView *)aView withFinishBlock: (void (^)())block;
	
##NSTimer+Blocks
1. Add blocks for timer

		
		+(id)scheduledTimerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;
	
		+(id)timerWithTimeInterval:(NSTimeInterval)inTimeInterval block:(void (^)())inBlock repeats:(BOOL)inRepeats;
	
	
##UIAlertView+Extend
1. Disable or enable a button in UIAlertView. (not working on ios7)
	
	
	
		- (void)disableButtonWithTitle: (NSString *)title;
		
		- (void)enableButtonWithTitle: (NSString *)title;
	
	
	