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
-(NSString*)badgeForSpeaker:(NSString*)speaker
{
    NSString *greeting = [NSString stringWithFormat:@"Hello, my name is %@.",speaker];
    
    return greeting;
}

-(NSArray*)badgesForSpeakers:(NSArray*)speakers
{
    NSMutableArray *badges = [NSMutableArray array];
    
    for(NSString* speaker in speakers)
    {
        NSString *greeting = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
        [badges addObject:greeting];
    }
    
    return badges;
}

-(NSArray*)greetingsAndRoomAssignmentsForSpeakers:(NSArray*)speakers
{
    return nil;
}




@end
