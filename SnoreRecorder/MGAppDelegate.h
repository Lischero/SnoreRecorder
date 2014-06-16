//
//  MGAppDelegate.h
//  SnoreRecorder
//


#import <Cocoa/Cocoa.h>
#import "MGRecorder.h"

@class MGRecorder;

@interface MGAppDelegate : NSObject <NSApplicationDelegate>
{
    // 終了時刻
    NSDate* terminatingDate;
    
    // レコーダー
    MGRecorder* recorder;
    
    
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSDatePicker *date;

- (IBAction)setDateAt:(NSDatePicker *)sender;

@end
