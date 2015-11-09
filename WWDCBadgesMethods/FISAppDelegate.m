//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"
#define ONE 1

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
        //badges[i] = [self badgeForSpeaker:speakers[i]];
        badges[i] = [@"Hello, my name is" mutableCopy];
        [badges[i] appendFormat:@" %@.",speakers[i]];
        }
    return badges;
    }

- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray *greetings = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        greetings[i] = [@"Welcome," mutableCopy];
[greetings[i] appendFormat:@" %@! You'll be in dressing room %ld.",speakers[i],i+ONE];
        }
    return greetings;
    }

@end
