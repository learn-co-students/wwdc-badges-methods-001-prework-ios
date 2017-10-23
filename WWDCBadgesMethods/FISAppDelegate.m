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
    
    NSString *speakerIntro = [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
    
    return speakerIntro;
}

- (NSMutableArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *speakersBadges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *speakerBadge = [NSString stringWithFormat: @"Hello, my name is %@.", speakers[i]];
        [speakersBadges addObject: speakerBadge];
    }
    
    return speakersBadges;
}

- (NSMutableArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *speakerGreetingsAndRooms = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *speakerGreetingAndRoom = [NSString stringWithFormat: @"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i + 1];
        [speakerGreetingsAndRooms addObject: speakerGreetingAndRoom];
    }

    
    return speakerGreetingsAndRooms;
}

@end