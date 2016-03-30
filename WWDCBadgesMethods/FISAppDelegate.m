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
    
    NSString *welcomeGreet = @"Hello, my name is";
    NSMutableString *badge = [welcomeGreet mutableCopy];
    [badge appendFormat:@" %@.", speaker];
    
    return badge;

}
-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *mSpeakers = [[NSMutableArray alloc]init];
    
    for (NSUInteger i= 0; i < [speakers count]; i++) {
        mSpeakers[i] = [@"Hello, my name is" mutableCopy];
        [mSpeakers[i] appendFormat:@" %@.", speakers[i]];
    }
    
    return mSpeakers;
}
-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *roomAssign = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        roomAssign = [@"" mutableCopy];
        [roomAssign[i] appendFormat: @"Welcome, %@! You'll be in dressing room %lu", speakers[i], i];
        
    }
    
    return roomAssign;
}
@end
