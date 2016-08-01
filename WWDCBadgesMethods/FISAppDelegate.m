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

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- (NSString *) badgeForSpeaker: (NSString *)speaker {
    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}

- (NSArray *) badgesForSpeakers: (NSArray *)speakers {
    NSMutableArray *speakerBadges = [NSMutableArray new];
    for (NSString *speaker in speakers) {
        [speakerBadges addObject:[self badgeForSpeaker:speaker]];
    }
    return speakerBadges;
}

- (NSArray *) greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers {
    NSMutableArray *speakerRoomAssignments = [NSMutableArray new];
    NSUInteger roomNumber = 1;
    for (NSString *speaker in speakers) {
        [speakerRoomAssignments addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %ld.", speaker, roomNumber]];
        roomNumber++;
    }
    return speakerRoomAssignments;
}

@end
