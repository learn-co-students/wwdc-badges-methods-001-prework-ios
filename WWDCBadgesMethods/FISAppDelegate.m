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
    NSString *speakerBadge = (@"Hello, my name is %@.", speaker);
    
    return speakerBadge;
    
}

- (NSArray *) badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badgeArray= [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < 8; i++) {
        NSString *badgeForSpeaker = (@"Hello, my name is %@", speakers[i]);
        [badgeArray addObject:badgeForSpeaker];

    }
    return badgeArray;
}

- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *speakersRoomAssignments = [[NSMutableArray alloc] init];
    NSInteger roomNumber = 1;
        for (NSUInteger i = 0; i < 8; i++) {
            roomNumber++;
            NSString *messageForSpeaker = (@"Welcome, %@. You will be in dressing room %lu.", speakers[i], roomNumber);
            [speakersRoomAssignments addObject:messageForSpeaker];
        
    }
    
    return speakersRoomAssignments;
    
}


/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
