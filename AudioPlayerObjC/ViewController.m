//
//  ViewController.m
//  AudioPlayerObjC
//
//  Created by Nikolay Shubenkov on 15/10/15.
//  Copyright © 2015 Nikolay Shubenkov. All rights reserved.
//

#import "ViewController.h"

#import "APOPlayer.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[APOPlayer shared] playFile:@"music.mp3"];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)playPause:(id)sender {
    if ([[APOPlayer shared] isPlaying]){
        [[APOPlayer shared] pause];
    }
    else {
        [[APOPlayer shared] play];
    }
    [[APOPlayer shared]logStatus];
}

@end
