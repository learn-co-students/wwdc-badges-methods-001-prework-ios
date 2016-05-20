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

-(NSString *)badgeForSpeaker:(NSString *)speaker {
    NSMutableString *badge = [[NSMutableString alloc] init];
    [badge appendFormat:@"Hello, my name is %@.", speaker];
    return badge;
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *allBadges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        [allBadges addObject:[self badgeForSpeaker:speakers[i]]];
    }
    return allBadges;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *assignments = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSMutableString *greeting = [[NSMutableString alloc] init];
        [greeting appendFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i],i+1];
        [assignments addObject:greeting];
        
    }
    return assignments;
}

@end