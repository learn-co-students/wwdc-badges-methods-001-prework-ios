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

- (NSString *)badgeForSpeaker:(NSString *)speaker
{
  return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers
{
  NSMutableArray *badges = [[NSMutableArray alloc] initWithCapacity:speakers.count];
  for (NSString *speaker in speakers) {
    [badges addObject:[self badgeForSpeaker:speaker]];
  }
  return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers
{
  NSMutableArray *greetingsAndRoomAssignments = [[NSMutableArray alloc] initWithCapacity:speakers.count];
  NSUInteger index = 1;
  for (NSString *speaker in speakers) {
    [greetingsAndRoomAssignments addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speaker, index]];
    index++;
  }
  return greetingsAndRoomAssignments;
}

@end
