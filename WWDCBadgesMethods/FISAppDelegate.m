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
    
    NSString *speakerBadge = @"Hello, my name is";
    speakerBadge = [speakerBadge stringByAppendingFormat:@" %@.", speaker];

    return speakerBadge;

}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *speakerBadges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *badges = [self badgeForSpeaker:speakers[i]];
        
        [speakerBadges addObject:badges];
    }
    
    return speakerBadges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetings = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSUInteger room = i + 1;
        NSString *roomAssignmentSpeakers = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], room];
        
        [greetings addObject:roomAssignmentSpeakers];
    }
    
    return greetings;
}

@end
