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
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
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
    
    NSMutableArray *greetingsAndRoomAssignments = [[NSMutableArray alloc] init];
    NSUInteger roomNumber;
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        roomNumber = i + 1;
        [greetingsAndRoomAssignments addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], (unsigned long)roomNumber]];
    }
    
    return greetingsAndRoomAssignments;
}

@end
