//
//  MGAppDelegate.m
//  SnoreRecorder
//


#import "MGAppDelegate.h"

@implementation MGAppDelegate

@synthesize date;

// 初期化はここで行う
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    recorder=[[MGRecorder alloc] init];
    
    // とりあえず現在時刻で初期化しておく
    terminatingDate=[NSDate date];
    
    // 現在時刻で表示を更新
    [date setDateValue:terminatingDate];
    // 現在時刻が指定できる最小の日付とする
    [date setMinDate:terminatingDate];
    
}

// 最小化から復帰時の挙動
- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
{
    [self.window makeKeyAndOrderFront:nil];
    
    return NO;
}

- (IBAction)setDateAt:(NSDatePicker *)sender
{
    
}
@end
