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
    
    NSMutableString *badge = [@"Hello, my name is" mutableCopy];
    [badge appendFormat:@" %@.", speaker];
    
    return badge;
}

- (NSArray *)badgesForSpeakers: (NSArray *)speakers {
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSString *specificSpeaker = speakers[i];
        NSString *specificBadge = [self badgeForSpeaker:specificSpeaker];
        [badges addObject:specificBadge];
        
    }
    
    return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers {
    
    NSMutableArray *greetingsAndRoomAssignments = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSUInteger roomAssignment = i + 1;
        NSString *specificSpeaker = speakers[i];
        NSString *specificGreeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", specificSpeaker, roomAssignment];
        [greetingsAndRoomAssignments addObject:specificGreeting];
        
    }
    
    return greetingsAndRoomAssignments;
}

@end
