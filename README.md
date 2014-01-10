Collect some helpers for ios development, for this we can easy to reuse. Some from the web and some from my working. 

More to be continued, and of course, you are very welcome to join.

#Install
	
	pod "ios-helpers", :git => "https://github.com/eleven-huang/ios-helpers.git"

#Import
	
	#import "UIViewHelper.h"
	//etc

#Helpers
##UIScrollView+DevliveryEvent
UIScrollView prevents all events by default, except Panning. You can add other events to scroll view now, except Panning. 

I know that apple does not advocate override method in category, but it works.


		- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
		{
		    if (!self.dragging)
        		[self.nextResponder touchesEnded: touches withEvent:event];
		    else
		    	[super touchesEnded: touches withEvent: event];
		 }

##UIView+Extension
1. remove all subviews
		
		- (void)removeAllSubviews;

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
	
	
##UIAlertView+Extension
1. Disable or enable a button in UIAlertView. (not working on ios7)
	
	
	
		- (void)disableButtonWithTitle: (NSString *)title;
		
		- (void)enableButtonWithTitle: (NSString *)title;
	
	
	