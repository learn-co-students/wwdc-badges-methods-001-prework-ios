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

- (NSString *)badgeForSpeaker:(NSString *)aString {
    return [NSString stringWithFormat: @"Hello, my name is %@.", aString];
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray * result = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString * speaker = (NSString *) speakers[i];
        [result addObject:[self badgeForSpeaker:speaker]];
    }
    return result;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray * result = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString * speaker = (NSString *) speakers[i];
        [result addObject:[NSString stringWithFormat: @"Welcome, %@! You'll be in dressing room %lu.", speaker, (unsigned long)i + 1]];
    }
    return result;

}

@end
