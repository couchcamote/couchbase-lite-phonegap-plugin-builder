#import "LiteGap.h"

#import "CouchbaseLite.h"
#import "CBLListener.h"
// todo add javascript support
// #import "CBLJSViewCompiler.h"

#import <Cordova/CDV.h>

@implementation LiteGap

@synthesize command;

- (id) initWithWebView:(UIWebView*)theWebView
{
    self = [super initWithWebView:theWebView];
    if (self) {
    	// todo check domain whitelist to give devs a helpful error message
    	[self launchCouchbaseLite];
    }
    return self;
}

- (void)launchCouchbaseLite
{
    NSLog(@"Opening database...");
    CBLManager* dbmgr = [CBLManager sharedInstance];
    // [CBLView setCompiler: [[CBLJSViewCompiler alloc] init]];
    NSURL* url = dbmgr.internalURL;
    NSLog(@"Couchbase Lite url = %@", url);
}

@end
