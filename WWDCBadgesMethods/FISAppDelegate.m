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

- (NSString *) badgeForSpeaker:(NSString *)speaker {
    
    speaker = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return speaker;
}

- (NSArray *) badgesForSpeakers:(NSMutableArray *)speakers {
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString* speaker = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        [badges addObject:speaker];
        
    }
    
    return badges;
}

- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetingsArray = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSString* greeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1];
        [greetingsArray addObject:greeting];
        
    }

    return greetingsArray;
}


/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
