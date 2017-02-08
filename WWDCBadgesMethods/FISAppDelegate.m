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

- (NSString *) badgeForSpeaker: (NSString *)speaker;{
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
}

    
- (NSArray *) badgesForSpeakers: (NSArray *)speakers;{
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *badgeNames = [self badgeForSpeaker:speakers[i]];
        
        [badges addObject:badgeNames];
    }
    
    return badges;
}

- (NSArray *) greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers{
    
    NSMutableArray *greetingsSpeaker = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++){
        NSUInteger dressingRoom = i + 1;
        
        NSString *greeting  = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], dressingRoom];
        
        [greetingsSpeaker addObject:greeting];
        
    }
    
    return greetingsSpeaker;
}
    

@end
