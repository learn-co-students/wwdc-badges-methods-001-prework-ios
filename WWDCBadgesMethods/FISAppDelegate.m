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

- (NSString *) badgeForSpeaker:(NSString *)speaker{
    NSMutableString *badge = [[NSMutableString alloc] initWithString:@"Hello, my name is"];
    [badge appendFormat:@" %@.",speaker];
    return badge;
    }

- (NSArray *) badgesForSpeakers:(NSArray *)speakers{
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        badges[i] = [self badgeForSpeaker:speakers[i]];
    }
    return badges;
    }

- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray *greetings = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        [greetings[i] appendFormat:@"Welcome, %@! ",speakers[i]];
        NSInteger j = i + 1;
        [greetings[i] appendFormat:@"You'll be in dressing room %ld.",(long)j];
        }
    return greetings;
    }

@end
