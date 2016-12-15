//
//  ViewController.m
//  SoundSwitch
//
//  Created by Moshe Gottlieb on 6/2/13.
//  Copyright (c) 2013 Moshe Gottlieb. All rights reserved.
//

#import "ViewController.h"
#import "SharkfoodMuteSwitchDetector.h"

@interface ViewController ()

@property (nonatomic,strong) SharkfoodMuteSwitchDetector* detector;

@end

@implementation ViewController

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self){
        self.detector = [SharkfoodMuteSwitchDetector shared];
        __weak ViewController* sself = self;
        self.detector.silentNotify = ^(BOOL silent){
            [sself.stateLabel setText:silent?@"ON":@"OFF"];
        };
    }
    return self;
}

@end
