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
    NSMutableString* badge = [[NSMutableString alloc] init];
    [badge appendFormat:@"Hello, my name is %@.",speaker];
    return badge;
}

-(NSArray*)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray* output = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        [output addObject: [self badgeForSpeaker:speakers[i]]];
    }
    
    return output;
}

-(NSArray*)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray* output = [[NSMutableArray alloc] init];
    
    NSInteger index;
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        index = i + 1;
        [output addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.",speakers[i],index]];
    }
    
    return output;
}

@end
