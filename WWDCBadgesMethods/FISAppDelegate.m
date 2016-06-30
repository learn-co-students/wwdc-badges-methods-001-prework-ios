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

//Return string in format "Hello, my name is [speaker]."
- (NSString *)badgeForSpeaker:(NSString *)speaker{
    
    NSMutableString *badge = [[NSMutableString alloc] init];
    
    [badge appendFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
}

//Return array of badge strings for all speakers
- (NSArray *)badgesForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    NSUInteger numSpeakers = [speakers count];
    
    for (NSUInteger i = 0; i < numSpeakers; i++){
        badges[i] = [self badgeForSpeaker:speakers[i]];
    }
    
    return badges;
}

//Return string in format: "Welcome, [speaker]! You'll be in dressing room [roomNumber].
- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *greetings = [[NSMutableArray alloc] init];
    
    NSUInteger numSpeakers = [speakers count];
    
    for (NSUInteger i = 0; i < numSpeakers; i++){
        NSMutableString *greeting = [[NSMutableString alloc] init];
        
        [greeting appendFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1];
        
        greetings[i] = greeting;
    }
    
    return greetings;
}

@end
