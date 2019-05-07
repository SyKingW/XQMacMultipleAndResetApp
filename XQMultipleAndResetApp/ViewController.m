//
//  ViewController.m
//  XQMultipleAndResetApp
//
//  Created by WXQ on 2019/5/7.
//  Copyright © 2019 WXQ. All rights reserved.
//

#import "ViewController.h"
#import "XQTask.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)respondsToMultiple:(id)sender {
    [XQTask multipleOpen];
}

- (IBAction)respondsToRestart:(id)sender {
    [XQTask restart];
}


@end











