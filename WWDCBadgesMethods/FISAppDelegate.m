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

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
}
    

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *badge = [self badgeForSpeaker:speakers[i]];
        [badges addObject: badge];
    }
    
    return badges;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *room = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *roomAssignment = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1];
        [room addObject:roomAssignment];
       
    }
        return room;
        
}

@end



/* for (NSUInteger i = 0; i < 8; i++) {
 NSArray *speakerList = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"]; 
 
 NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
 
 NSMutableString *badge = [[NSMutableString alloc] init];
 [badge appendFormat:@"Hello, my name is %@.",speaker];*/