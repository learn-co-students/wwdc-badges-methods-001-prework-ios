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
    
    NSArray *speakers;
    NSArray *badges;
    NSArray *roomAssignments;
    
    speakers = @[ @"Adele Goldberg",
                  @"Edsger Dijkstra",
                  @"Joan Clarke",
                  @"Clarence Ellis",
                  @"Margaret Hamilton",
                  @"George Boole",
                  @"Tim Berners-Lee",
                  @"Jean Bartik"          ];
    
    badges = @[ @"Hello, my name is Adele Goldberg.",
                @"Hello, my name is Edsger Dijkstra.",
                @"Hello, my name is Joan Clarke.",
                @"Hello, my name is Clarence Ellis.",
                @"Hello, my name is Margaret Hamilton.",
                @"Hello, my name is George Boole.",
                @"Hello, my name is Tim Berners-Lee.",
                @"Hello, my name is Jean Bartik."        ];
    
    roomAssignments = @[ @"Welcome, Adele Goldberg! You'll be in dressing room 1.",
                         @"Welcome, Edsger Dijkstra! You'll be in dressing room 2.",
                         @"Welcome, Joan Clarke! You'll be in dressing room 3.",
                         @"Welcome, Clarence Ellis! You'll be in dressing room 4.",
                         @"Welcome, Margaret Hamilton! You'll be in dressing room 5.",
                         @"Welcome, George Boole! You'll be in dressing room 6.",
                         @"Welcome, Tim Berners-Lee! You'll be in dressing room 7.",
                         @"Welcome, Jean Bartik! You'll be in dressing room 8."  ];
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    return nil;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    return nil;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    return nil;
}

@end
