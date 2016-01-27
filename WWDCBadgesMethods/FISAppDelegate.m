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

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

-(NSString *)badgeForSpeaker:(NSString *)speaker;{
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return badge;}
-(NSArray *)badgesForSpeakers:(NSArray *)speakers;{
    
    NSMutableArray *muteSpeakers = [NSMutableArray new];
    
    for (NSInteger i = 0; i < [speakers count]; i++) {
        NSString *toString = speakers[i];
        NSString *badge = [self badgeForSpeaker:toString];
        [muteSpeakers addObject:badge];
    }
    return muteSpeakers;}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers;{
    
    
    NSMutableArray *assignments = [NSMutableArray new];
    
    
    for (NSInteger i = 0; i < [speakers count]; i++) {
        NSUInteger index = i + 1;
        NSString *toString = speakers[i];
        NSString *prompt = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.", toString, index];
        [assignments addObject: prompt];
    }
    
    return assignments;}

@end
