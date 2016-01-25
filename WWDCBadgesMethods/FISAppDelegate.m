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
        NSString *speaker = [self badgeForSpeaker:speakers[i]];
        [speakerBadges addObject:speaker];
    }
    return speakerBadges;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *speakerBadges = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *welcome = @"Welcome";
        NSString *welcomeWithName = [welcome stringByAppendingFormat:@", %@", speakers[i]];
        NSUInteger roomNumber = i + 1;
        NSString *roomAssignment = @"You'll be in dressing room";
        NSString *greetingsAndRoomAssignmentsForSpeakers = [welcomeWithName stringByAppendingFormat:@"! %@ %lu.", roomAssignment, roomNumber];
        [speakerBadges addObject:greetingsAndRoomAssignmentsForSpeakers];
    }
    return speakerBadges;

}

@end
