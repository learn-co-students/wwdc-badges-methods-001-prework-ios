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

-(NSString *) badgeForSpeaker:(NSString *)speaker {
    NSString *names = @"Hello, my name is";
    NSString *finalName = [names stringByAppendingFormat:@" %@.", speaker];
    NSLog(@"%@", finalName);
    return finalName;
}
-(NSArray *) badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges =  [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++){
        NSString *intro = @"Hello, my name is";
        NSString *names = speakers[i];
        NSString *finalName = [intro stringByAppendingFormat:@" %@.", names];
        [badges addObject:finalName];
    }
    return  badges ;
}
-(NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges =  [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++){
        NSUInteger index = i+1 ;
        NSString *intro = @"" ;
        NSString *names = speakers[i];
        NSString *finalName = [intro stringByAppendingFormat:@"Welcome, %@! You'll be in dressing room %lu.", names,index];
        [badges addObject:finalName];
    }
    return  badges ;
}

@end
