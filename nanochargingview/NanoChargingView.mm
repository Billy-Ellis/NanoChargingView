#import <Preferences/Preferences.h>

@interface NanoChargingViewListController: PSListController {
}
@end

@implementation NanoChargingViewListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"NanoChargingView" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
