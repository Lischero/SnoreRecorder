//
//  MGRecorder.h
//  SnoreRecorder
//
// 音を感知・記録するクラス

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface MGRecorder : NSObject
{
    
}

// 初期化
- (id)init;

// 感知開始
- (void)fire;

// 記録開始
- (void)start;

// 感知終了
- (void)end;

@end
