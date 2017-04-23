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

-(NSString *)badgeForSpeaker:(NSString *)speaker{
    NSString *introduction = @"Hello, my name is";
    speaker = [introduction stringByAppendingFormat:@" %@.", speaker];
    return speaker;
}
-(NSArray *)badgesForSpeakers:(NSArray *)speakers{
    NSMutableArray *speakersmutable = [speakers mutableCopy];
    NSString *introduction = @"Hello, my name is";
    for(NSUInteger i=0;i < [speakers count];i++){
        speakersmutable[i]=[introduction stringByAppendingFormat:@" %@.",speakers[i]];
    }
    return speakersmutable;
}
-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray *speakersmutable = [speakers mutableCopy];
    NSString *introduction = @"Welcome,";
    for(NSUInteger i=0;i < [speakers count];i++){
        speakersmutable[i]=[introduction stringByAppendingFormat:@" %@! You'll be in dressing room %lu.",speakers[i],i+1];
    }
    return speakersmutable;
}

@end
