#import "RootViewController.h"

@interface PHPTestApplication: UIApplication <UIApplicationDelegate> {
	UIWindow *_window;
	RootViewController *_viewController;
}
@property (nonatomic, retain) UIWindow *window;
@end

@implementation PHPTestApplication
@synthesize window = _window;
- (void)applicationDidFinishLaunching:(UIApplication *)application {
	_window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	_viewController = [[RootViewController alloc] init];
	[_window addSubview:_viewController.view];
	[_window makeKeyAndVisible];
}

- (void)dealloc {
	[_viewController release];
	[_window release];
	[super dealloc];
}
@end

// vim:ft=objc
