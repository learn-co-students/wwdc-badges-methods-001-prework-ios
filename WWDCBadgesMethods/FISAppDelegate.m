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
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *badge = [self badgeForSpeaker:speakers[i] ];
        [badges addObject:badge];
    }
    
    return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    // create an array to put the results in
    NSMutableArray *welcomeMessages = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [speakers count]; i++) {
        
        NSString *message = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %i.", speakers[i], i+1 ];
        
        [welcomeMessages addObject:message];
        
    }
    
    
    return welcomeMessages;
    
    
}

@end
