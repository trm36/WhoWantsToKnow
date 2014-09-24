//
//  WWTKAppSettings.m
//  WhoWantsToKnow
//
//  Created by Taylor Mott on 9.23.14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "WWTKAppSettings.h"

@implementation WWTKAppSettings

// This goes in the implementation file
+ (WWTKAppSettings *)sharedInstance {
    static WWTKAppSettings *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[WWTKAppSettings alloc] init];
    });
    return sharedInstance;
}

- (void)registerForNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(respondToViewAppeared) name:@"viewAppeared" object:nil];
}

- (void)unregisterForNotifications
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"viewAppeared" object:nil];
    
}

- (void)respondToViewAppeared
{
    NSLog(@"ViewAppeared");
}

@end
