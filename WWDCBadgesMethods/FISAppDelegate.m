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


-(NSString *)badgeForSpeaker: (NSString *)speaker;
{
    NSString *badge = [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
    return badge;
}

-(NSArray *)badgesForSpeakers: (NSString *)speakers;
{
    NSArray *speakersNames = @[ @"Adele Goldberg",
                  @"Edsger Dijkstra",
                  @"Joan Clarke",
                  @"Clarence Ellis",
                  @"Margaret Hamilton",
                  @"George Boole",
                  @"Tim Berners-Lee",
                  @"Jean Bartik"          ];
    
    
    NSMutableArray *badges = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [speakersNames count]; i++)
    {
        //NSString *speakersName = speakersNames[i];
        NSString *badge = [self badgeForSpeaker: speakersNames[i]];
        [badges addObject: badge];
    }
    
    return badges;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers;
{
    NSMutableArray *greetings = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [speakers count]; i++)
    {
        NSInteger k = i + 1;
        NSString *greeting = [NSString stringWithFormat: @"Welcome, %@! You'll be in dressing room %lu.", speakers[i], k];
        [greetings addObject: greeting];
    }
    
    return greetings;
}

@end
