//
//  MGAppDelegate.m
//  SnoreRecorder
//


#import "MGAppDelegate.h"

@implementation MGAppDelegate

// 初期化はここで行う
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    recorder=[[MGRecorder alloc] init];
    
    // とりあえず現在時刻で初期化しておく
    terminatingDate=[NSDate date];
}

// 最小化された後最呼び出し時の挙動
- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
{
    [self.window makeKeyAndOrderFront:nil];
    
    return NO;
}

@end
