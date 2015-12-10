//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

- (NSString*)badgeForSpeaker:(NSString*)speaker;
{
    NSString *hello = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return hello;
}

- (NSArray*)badgesForSpeakers:(NSArray*)speakers;
{

   NSMutableArray *mSpeakers = [speakers mutableCopy];
    
    for (NSUInteger i = 0; i < [mSpeakers count]; i++)
    {
        //mSpeakers[i] = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        mSpeakers[i] = [self badgeForSpeaker:speakers[i]];
    }
    return mSpeakers;
}

- (NSArray*)greetingsAndRoomAssignmentsForSpeakers:(NSArray*)speakers;
{

    NSMutableArray *mRoomAssignment = [speakers mutableCopy];
    
    for (NSUInteger j = 0; j < [mRoomAssignment count]; j++)
    {
        NSUInteger roomNumber = j + 1;
        mRoomAssignment[j] = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[j], roomNumber];
    }
    return mRoomAssignment;
}

@end
