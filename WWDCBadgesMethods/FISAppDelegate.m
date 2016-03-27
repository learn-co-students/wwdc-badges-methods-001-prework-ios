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
    
    NSString *formatspeaker = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return formatspeaker;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *formatspeakers = [speakers mutableCopy];
    
    for (NSUInteger i = 0; i<[speakers count]; i++) {
        
        [formatspeakers replaceObjectAtIndex:i withObject:[self badgeForSpeaker:speakers[i]]];
        
    }
    
    return formatspeakers;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *newformatspeakers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        [newformatspeakers addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], (unsigned long)i+1]];
        
    }
    
    
    return newformatspeakers;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
