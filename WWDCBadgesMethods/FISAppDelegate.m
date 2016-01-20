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


-(NSString*)badgeForSpeaker:(NSString*)speaker
{



    return speaker;
}
-(NSArray*)badgesForSpeakers:(NSArray*)speakers
{


    return speakers;
}

-(NSArray*)greetingsAndRoomAssignmentsForSpeakers:(NSArray*)speakers
{

    return speakers;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
