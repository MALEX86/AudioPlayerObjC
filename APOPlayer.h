//
//  APOPlayer.h
//  AudioPlayerObjC
//
//  Created by Nikolay Shubenkov on 15/10/15.
//  Copyright © 2015 Nikolay Shubenkov. All rights reserved.
//

#import <UIKit/UIKit.h>
@import AVFoundation;

@interface APOPlayer : NSObject

+ (instancetype)shared;

- (void)playFile:(NSString *)file;

- (BOOL)isPlaying;
- (void)play;
- (void)pause;
- (void)stop;

- (void)logStatus;

@end
