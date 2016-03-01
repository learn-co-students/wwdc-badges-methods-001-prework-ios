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
    
    NSString *badgeText = @"Hello, my name is";
    
    NSMutableString *badgeTextWithName = [badgeText mutableCopy];
    
    [badgeTextWithName appendFormat:@" %@.", speaker];
    
    return badgeTextWithName;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {

    NSArray *badgesArray = @[];
    NSMutableArray* mutableBadgesArray = [badgesArray mutableCopy];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *badgeName = [speakers objectAtIndex:i];
        NSString *speakerBadgeText = [self badgeForSpeaker:badgeName];
        [mutableBadgesArray insertObject:speakerBadgeText atIndex:i];
    }
    
    return mutableBadgesArray;
    
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSArray *greetingsArray = @[];
    NSMutableArray *mutableGreetingsArray = [greetingsArray mutableCopy];
    NSString *greetingString = @"";


    for (NSUInteger i = 0; i < [speakers count]; i++ ) {
        NSMutableString *mutableGreetingString = [greetingString mutableCopy];
        [mutableGreetingString appendFormat:@"Welcome, %@! You'll be in dressing room %u.", [speakers objectAtIndex:i], i+1];
        [mutableGreetingsArray insertObject:mutableGreetingString atIndex:i];
        
    }
    
    
    return mutableGreetingsArray;
    
}

@end
