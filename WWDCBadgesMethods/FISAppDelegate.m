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
    
    NSMutableString *greeting = [@"Hello, my name is" mutableCopy];
    
    [greeting appendFormat:@" %@.", speaker];
    
    return greeting;

}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *greetingArray = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        greetingArray[i] = [self badgeForSpeaker:speakers[i]];

    }
    return greetingArray;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray *greetingandRoomArray = [[NSMutableArray alloc] init];
    

    for (NSUInteger i =0; i< [speakers count]; i++) {
        NSMutableString *greetingAndRoomString = [@"Welcome, " mutableCopy];
        [greetingAndRoomString appendFormat:@"%@! You'll be in dressing room %lu.", speakers[i], i+1];
        greetingandRoomArray[i] = greetingAndRoomString;
    }
    
    return greetingandRoomArray;
    
}

@end
