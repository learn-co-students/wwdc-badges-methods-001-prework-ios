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
-(NSString *)badgeForSpeaker:(NSString *)speaker{
    NSString *badgeForSpeaker = [NSString stringWithFormat: @"Hello, my name is %@." , speaker]; {
    return badgeForSpeaker;
}
}
-(NSArray *)badgesForSpeakers:(NSArray *)speakers{

NSMutableArray *badgesForSpeakers = [NSMutableArray array];
    speakers = @[ @"Adele Goldberg",
                      @"Edsger Dijkstra",
                      @"Joan Clarke",
                      @"Clarence Ellis",
                      @"Margaret Hamilton",
                      @"George Boole",
                      @"Tim Berners-Lee",
                      @"Jean Bartik"          ];
        for (NSUInteger i =0; i < [speakers count]; i++){
            NSString *addString = [NSString stringWithFormat: @"Hello, my name is %@." , speakers[i]];
            [badgesForSpeakers addObject: addString];
    }
    
    return badgesForSpeakers;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
   NSMutableArray *greetingsAndRoomAssignmentsForSpeakers = [NSMutableArray array];
    speakers = @[ @"Adele Goldberg",
                  @"Edsger Dijkstra",
                  @"Joan Clarke",
                  @"Clarence Ellis",
                  @"Margaret Hamilton",
                  @"George Boole",
                  @"Tim Berners-Lee",
                  @"Jean Bartik"          ];
    for (NSUInteger i =0; i < [speakers count]; i++){
        NSUInteger room = i+1;
        NSString *addname = [NSString stringWithFormat: @"Welcome, %@! You'll be in dressing room %lu." , speakers[i] , room];
        [greetingsAndRoomAssignmentsForSpeakers addObject: addname];
    }
        return greetingsAndRoomAssignmentsForSpeakers;
}

@end
