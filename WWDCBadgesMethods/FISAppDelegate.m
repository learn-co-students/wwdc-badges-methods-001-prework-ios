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
    NSString *listedSpeaker = (@"Hello, my name is %@", speaker);
    return listedSpeaker;
    
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *speakersList = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i<=7; i+=1) {
        NSString *badgeSpeaker = (@"Hello, my name is %@", speakers[i]);
        [speakersList addObject:badgeSpeaker];
        i+=1;
        ;
    }
    return speakersList;
}

- (NSArray *)greetingAndRoomAssignmentForSpeakers:(NSArray *)speakers {
    NSMutableArray *speakersListAndRoom = [[NSMutableArray alloc] init];
    NSUInteger idx = 1;
    for (NSUInteger i = 0; i<=7; i+=1) {
        NSString *badgeSpeaker = (@"Welcome %@! You will be in dressing room %@lu", speakers[i], idx);
        [speakersListAndRoom addObject:badgeSpeaker];
        i+=1;
        idx+=1;
        ;
    }
    return speakersListAndRoom;
}


/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
