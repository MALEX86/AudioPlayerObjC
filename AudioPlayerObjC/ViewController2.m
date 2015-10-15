//
//  ViewController2.m
//  AudioPlayerObjC
//
//  Created by Nikolay Shubenkov on 15/10/15.
//  Copyright © 2015 Nikolay Shubenkov. All rights reserved.
//

#import "ViewController2.h"

#import "APOPlayer.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[APOPlayer shared] logStatus];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
