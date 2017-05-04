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

- (NSString*)badgeForSpeaker:(NSString *)speaker{
    
    NSString *badgeForSpeaker = @"Hello, my name is %@";
    NSLog(@"%@", badgeForSpeaker); 

    return badgeForSpeaker;
}

/* code block from the lesson NSArray and NSMutableArray
 
 NSArray *students = @[ @"Joe", @"Mark"];
 for (NSUInteger i = 0; i < [students count]; i++) {
 NSLog(@"Welcome, %@!", students[i] );
 }
 
 */
- (NSArray*)badgesForSpeakers:(NSArray *)speakers {
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSLog(@"Hello, my name is %@", speakers[i]);
    }
    
    return speakers;
}

- (NSArray*)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSLog(@"Welcome, %@! You'll be in dressing room %@", speakers[i], speakers[i]);
    }
    
    return speakers;
}

@end
