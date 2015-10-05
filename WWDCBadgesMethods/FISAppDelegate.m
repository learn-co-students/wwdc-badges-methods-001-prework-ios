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

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}

- (NSMutableArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < 8; i++) {
        NSString *speaker = speakers[i];
        NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
        [badges addObject:badge];
    }
    return badges;
}

- (NSMutableArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < 8; i++) {
        NSString *speaker = speakers[i];
        NSUInteger room = i + 1;
        NSString * roomAssignment = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speaker, room];
        [roomAssignments addObject:roomAssignment];
    }
    return roomAssignments;
}

@end
