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




- (NSString *)badgeForSpeaker:(NSString *)speaker{
    

    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return badge;
    
}
- (NSArray *)badgesForSpeakers:(NSArray *)speakers{
    NSArray *names = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < 8; i ++) {
        NSString *speakersBadges = [NSString stringWithFormat:@"Hello, my name is %@", names[i]];

        [badges addObject:speakersBadges];
        
        
        
    }
    return badges;
}
- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSArray *roomNumbers = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8"];
    
    NSMutableArray *roomAssignmentsforSpeakers = [[NSMutableArray alloc] init];
        NSArray *names = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *greetings = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %@.", names, roomNumbers];
        [roomAssignmentsforSpeakers addObject:greetings];
    }
    
    return roomAssignmentsforSpeakers;
}
@end
