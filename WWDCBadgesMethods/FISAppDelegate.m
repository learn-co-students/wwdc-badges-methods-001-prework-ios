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

-(NSString *) badgeForSpeaker:(NSString *)speaker
{
    
    return [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
    
}

-(NSMutableArray *) badgesForSpeakers:(NSArray *)speakers
{

    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    
    for (NSUInteger i = 0; i <= [speakers count] - 1; i++)
    
    {
        
        //[badges addObject:[NSString stringWithFormat:@"Hello, my name is %@.",speakers[i]]];
        
        
        [badges addObject:[self badgeForSpeaker:speakers[i]]];
        
    }
    
    return badges;
}

-(NSMutableArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers
{
    NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i <= [speakers count] - 1; i++)
        
    {

    [roomAssignments addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.",speakers[i], i + 1]];
    
    }
    
    return roomAssignments;
}

@end
