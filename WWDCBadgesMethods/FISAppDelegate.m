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
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return badge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *mBadges = [NSMutableArray new];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
    [mBadges addObject:[NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]]];
    }
    return mBadges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *mGreetingsAndRooms = [NSMutableArray new];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        [mGreetingsAndRooms addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1]];
    }
    return mGreetingsAndRooms;
}

@end
