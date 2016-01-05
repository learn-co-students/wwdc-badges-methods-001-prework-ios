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

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badges = [NSMutableArray array];
    for (int i = 0; i < [speakers count]; i++) {
        [badges addObject:[self badgeForSpeaker:speakers[i]]];
    }
    return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetingsAndRoomAssignments = [NSMutableArray array];
    for (int i = 0; i < [speakers count]; i++) {
        [greetingsAndRoomAssignments addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %i.", speakers[i], i+1]];
    }
    return greetingsAndRoomAssignments;
}

@end
