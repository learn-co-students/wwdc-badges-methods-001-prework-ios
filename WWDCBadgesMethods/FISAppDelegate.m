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
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return badge;
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    NSString *badge = nil;
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        badge = [self badgeForSpeaker:speakers[i]];
        [badges addObject:badge];
    }
    
    return badges;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetings = [[NSMutableArray alloc] init];
    NSString *greeting = nil;
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        greeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.", speakers[i], i+1];
        [greetings addObject:greeting];
    }
    
    return greetings;
}

@end