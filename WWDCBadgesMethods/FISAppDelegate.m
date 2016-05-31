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

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSString *speaker in speakers) {
        
        NSString *badge = [self badgeForSpeaker:speaker];
        [badges addObject:badge];
        
    }
    
    return badges;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSString *badge = @"Hello, my name is ";
    
    return [badge stringByAppendingFormat:@"%@.",speaker];
}


- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetingsAndRooms = [[NSMutableArray alloc] init];
    NSUInteger index = 0;
    
    for (NSString *speaker in speakers) {
        
        index += 1;
        
        NSString *greeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speaker, index];
        
        [greetingsAndRooms addObject:greeting];
        
    }
    
    return greetingsAndRooms;
}

@end
