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


-(NSString*)badgeForSpeaker:(NSString *)speaker {
    NSString *greeting = @"Hello, my name is ";
    NSString *speakerName = @"Inigo Montoya.";
    greeting = [greeting stringByAppendingFormat: @"%@", speakerName];
    return greeting;
}


-(NSArray*)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badgesForSpeakers = [[NSMutableArray alloc] init];
    speakers = @ [ @"Adele Goldberg",
                  @"Edsger Dijkstra",
                  @"Joan Clarke",
                  @"Clarence Ellis",
                  @"Margaret Hamilton",
                  @"George Boole",
                  @"Tim Berners-Lee",
                  @"Jean Bartik"   ];
    for (NSUInteger i =0; i < [speakers count]; i++){
        NSString *greetingString = [NSString stringWithFormat: @"Hello, my name is %@." , speakers[i]];
        [badgesForSpeakers addObject: greetingString];
        NSLog(@"%@", badgesForSpeakers);
    }
    
    return badgesForSpeakers;
}



-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray *greetingsAndRoomAssignmentsForSpeakers = [[NSMutableArray alloc]init];
    speakers = @ [ @"Adele Goldberg",
                  @"Edsger Dijkstra",
                  @"Joan Clarke",
                  @"Clarence Ellis",
                  @"Margaret Hamilton",
                  @"George Boole",
                  @"Tim Berners-Lee",
                  @"Jean Bartik" ];
    for (NSUInteger i =0; i < [speakers count]; i++){
        NSUInteger room = i+1;
        NSString *nameAndRoom = [NSString stringWithFormat: @"Welcome, %@! You'll be in dressing room %lu." , speakers[i] , room];
        [greetingsAndRoomAssignmentsForSpeakers addObject: nameAndRoom];
    }
    return greetingsAndRoomAssignmentsForSpeakers;
}

@end
