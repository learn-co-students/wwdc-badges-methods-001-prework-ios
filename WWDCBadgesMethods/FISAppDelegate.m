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
    
    
//    NSArray *testSpeakers = @[ @"Jim Johnson", @"Frank Albert"];
//    
//    NSLog(@"This is the first greeting: %@", [self badgeForSpeaker:@"Jim John"]);
    
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSString *greetingText = @"Hello, my name is ";
    
    NSMutableString *badgeOutput =  [greetingText mutableCopy];
    
    [badgeOutput appendString:speaker];
    [badgeOutput appendString:@"."];
    
    return badgeOutput;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetingForSpeakers = [NSMutableArray arrayWithArray:speakers];
    
    for (NSUInteger i = 0; i < [greetingForSpeakers count]; i++) {

        // get the speakers name in a string
        NSString *speakerName = speakers[i];
//        NSLog(@"This is the speaker name: %@", speakerName);
        
        NSString *welcomeMessage = [self badgeForSpeaker:speakerName];
//        NSLog(@"This is the output of the badgeForSpeaker: %@", welcomeMessage);
        
        [greetingForSpeakers replaceObjectAtIndex:i withObject:welcomeMessage];
        
    }
    
    return greetingForSpeakers;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {

    NSMutableArray *greetingsAndRoomAssignment = [NSMutableArray arrayWithArray:speakers];
    
    for (NSUInteger i = 0; i < [greetingsAndRoomAssignment count]; i++) {
        
        NSString *welcomeMsg = @"Welcome, ";
        
        NSUInteger fixForZero = i + 1;
        
        NSMutableString *fullgreeting = [welcomeMsg mutableCopy];
        
        NSString *speakerName = greetingsAndRoomAssignment[i];
    
        [fullgreeting appendFormat:@"%@! You'll be in dressing room %lu.", speakerName, fixForZero];
        
//        NSLog(@"Output: %@", fullgreeting);
        
        [greetingsAndRoomAssignment replaceObjectAtIndex:i withObject:fullgreeting];
        
    }
    
    return greetingsAndRoomAssignment;
}

@end
