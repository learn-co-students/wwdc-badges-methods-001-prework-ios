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
    NSMutableString *badge = [[NSMutableString alloc] init];
    [badge appendFormat:@"Hello, my name is %@.", speaker];
    return badge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        [badges addObject:[self badgeForSpeaker:speakers[i]]];
    }
    return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *greetingAndRoomAssignment = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSMutableString *greetingAndRoom = [[NSMutableString alloc] init];
        [greetingAndRoom appendFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i + 1];
        [greetingAndRoomAssignment addObject:greetingAndRoom];
    }
    return greetingAndRoomAssignment;
}

@end
