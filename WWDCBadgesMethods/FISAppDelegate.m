//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

// Objectives:
// 1. Write custom methods to solve a few simple problems.
// 2. Call your methods to get the results that you need.
// 3. Run the tests to check your work.

// Advanced:
// 1. Utilize your badgeForSpeaker: method by calling it on self and supplying it with an argument string pulled from the speakers array.

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSMutableString *introduction = [@"Hello, my name is" mutableCopy];
    [introduction appendFormat:@" %@.", speaker];
    return introduction;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badgeArray = [[NSMutableArray alloc] init];
    
    for (NSUInteger i=0; i<[speakers count]; i++) {
        NSString *speaker = speakers[i];
        NSMutableString *introduction = [@"Hello, my name is" mutableCopy];
        [introduction appendFormat:@" %@.", speaker];
        [badgeArray addObject:introduction];
    }
    return badgeArray;
    
    /*
    // Advanced Method:
    for (NSUInteger i=0; i<[speakers count]; i++) {
        NSString *badgeProcessing = @"";
        badgeProcessing = speakers[i];
        badgeProcessing = [self badgeForSpeaker:badgeProcessing];
        [badgeArray addObject:badgeProcessing];
    }
    
    return badgeArray;
    */
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetingAndRoomAssignment = [[NSMutableArray alloc] init];
    
    for (NSUInteger i=0; i<[speakers count]; i++) {
        NSString *speaker = speakers[i];
        NSMutableString *welcome = [@"Welcome," mutableCopy];
        NSString *roomStatement = @"You'll be in dressing room";
        [welcome appendFormat: @" %@!", speaker];
        [welcome appendFormat: @" %@", roomStatement];
        [welcome appendFormat: @" %lu.", i+1];
        [greetingAndRoomAssignment addObject:welcome];
        
    }
    return greetingAndRoomAssignment;
}

@end
