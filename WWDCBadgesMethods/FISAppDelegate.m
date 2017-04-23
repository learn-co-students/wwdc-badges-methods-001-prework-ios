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

NSArray *Speakers = @[ @"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"]; for (NSUInteger i = 0; i < 8; i++)
{NSLog(@"Hello, my name is %@", Speakers [i]);}

NSString *badgeForSpeaker = nil;
NSArray *badgesForSpeakers = nil;
NSArray *greetingsAndRoomAssignmentsForSpeakers = nil;





@end
