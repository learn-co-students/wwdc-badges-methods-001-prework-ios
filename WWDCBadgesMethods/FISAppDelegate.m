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

-(NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSMutableString *str2 = [NSMutableString stringWithFormat:@"Hello, my name is %@.", speaker];
    NSLog(@"%@", str2);
    
    return str2;
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *speakerbadges = [[NSMutableArray alloc] init];
    for (int i = 0; i < [speakers count]; i++) {
        speakerbadges[i] = [self badgeForSpeaker:speakers[i]];
        NSLog(@"%@", speakerbadges[i]);
    }
   
    return speakerbadges;
    
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
        NSMutableArray *greetingsAndRoomAssignmentsForSpeakers = [NSMutableArray array];

       for (NSUInteger i =0; i < [speakers count]; i++){
               NSUInteger rooms = i + 1;
               NSString *addname = [NSString stringWithFormat: @"Welcome, %@! You'll be in dressing room %lu." , speakers[i] , rooms];
                [greetingsAndRoomAssignmentsForSpeakers addObject: addname];
            }
            return greetingsAndRoomAssignmentsForSpeakers;
   
}
@end
