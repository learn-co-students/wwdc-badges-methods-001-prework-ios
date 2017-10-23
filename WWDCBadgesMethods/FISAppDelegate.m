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

- (NSString *)badgeForSpeaker: (NSString *)speaker {
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
}

- (NSArray *)badgesForSpeakers: (NSArray *)speakers {
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSString *specificBadge = [self badgeForSpeaker:speakers[i]];
        [badges addObject:specificBadge];
        
    }
    
    return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers {
    
    NSMutableArray *greetingsAndRoomAssignments = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSUInteger roomAssignment = i + 1;
        NSString *specificGreeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomAssignment];
        [greetingsAndRoomAssignments addObject:specificGreeting];
        
    }
    
    return greetingsAndRoomAssignments;
}

@end
