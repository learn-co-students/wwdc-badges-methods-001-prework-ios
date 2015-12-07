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
    NSString *enterSpeaker = [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
    
    return enterSpeaker;

}


- (NSArray *) badgesForSpeakers: (NSArray *) speakers {
    NSMutableArray *allSpeakersIntro = [speakers mutableCopy];
    NSUInteger numOfSpeakers = [speakers count];
    for (NSUInteger i = 0; i < numOfSpeakers; i++) {
        allSpeakersIntro[i] = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
    }
    
    return allSpeakersIntro;
   
}

- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *hellosAndRoomNums = [speakers mutableCopy];
    NSUInteger numOfSpeakers = [speakers count];
    for (NSUInteger i = 0; i < numOfSpeakers; i++) {
        NSUInteger roomAssignment = i + 1;
        
    return hellosAndRoomNums[i]= [NSString stringWithFormat:@"Welcome, %@! You'll be in dressingroom %lu.", speakers[i], roomAssignment];
        
    }
    
    return hellosAndRoomNums;
    
}



@end
