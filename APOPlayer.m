//
//  APOPlayer.m
//  AudioPlayerObjC
//
//  Created by Nikolay Shubenkov on 15/10/15.
//  Copyright © 2015 Nikolay Shubenkov. All rights reserved.
//

#import "APOPlayer.h"

@interface APOPlayer ()

@property (nonatomic, copy) NSString *lastOpenedFileName;
@property (nonatomic, strong) AVAudioPlayer *player;

@end

@implementation APOPlayer

+ (instancetype)shared {
    static dispatch_once_t onceToken;
    static APOPlayer *__shared = nil;
    
    dispatch_once(&onceToken, ^{
        __shared = [self new];
    });
    
    return __shared;
}

- (void)playFile:(NSString *)file {
    self.lastOpenedFileName = file;
    NSInteger dotIndex = [file rangeOfString:@"."].location;
    if (dotIndex == NSNotFound){
        NSLog(@"Opps. File name is wrong");
        return;
    }
    
    NSString *path = [[NSBundle mainBundle] pathForResource:[file substringToIndex:dotIndex]
                                                     ofType:[file substringFromIndex:dotIndex]];
    [self.player stop];
    
    NSError *error;
    self.player = [[AVAudioPlayer alloc]initWithData:[NSData dataWithContentsOfFile:path] error:&error];
    
    if (!self.player){
        NSLog(@"OOPS. Error : %@",error);
        return;
    }
    [self.player play];
}

- (void)pause {
    [self.player pause];
}

- (void)stop {
    [self.player stop];
}

- (void)play {
    [self.player play];
}

- (BOOL)isPlaying {
    return self.player.isPlaying;
}

- (void)logStatus {

NSLog(@"playing:%@ file:%@",self.isPlaying ? @"YES" : @"NO",self.lastOpenedFileName);
}


@end
