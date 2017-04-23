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
    
    NSArray *speakers = [[NSArray alloc] init];
    NSArray *advanced = [self badgesForSpeakers:speakers];
    NSLog(@"%@", advanced);
    return advanced;
    return YES;
};

-(NSString *)badgeForSpeaker:(NSString *)speaker; {
    NSString *printSpeaker = [NSString stringWithFormat:@"Hello, my name is %@.", speaker ];
    NSLog(@"%@", printSpeaker);
    return printSpeaker;
};

-(NSArray *)badgesForSpeakers:(NSArray *)speakers; {
    NSMutableArray * printSpeakers = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0 ; i <  [speakers count] ; i++) {
        NSString * addSpeaker = [NSString stringWithFormat : @"Hello, my name is %@.", speakers[i]];
        [printSpeakers addObject: addSpeaker];
        NSLog(@"%@", printSpeakers);
    }return printSpeakers;
};

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers; {
    NSMutableArray *printWelcomeAndRoom = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i< [speakers count]; i++) {
        NSUInteger room = i+1;
        NSString * addNameRoom = [NSString stringWithFormat : @"Welcome, %@! You’ll be in dressing room %lu.", speakers[i], room];
        [printWelcomeAndRoom addObject: addNameRoom];
        NSLog(@"%@", printWelcomeAndRoom);
    }   return printWelcomeAndRoom;
}
@end
