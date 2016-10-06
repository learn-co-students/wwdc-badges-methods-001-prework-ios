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

// define method(s) implementations

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    // return an interpolated string with greetings + speaker name
    
    NSString *speakerIntro = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return speakerIntro;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    // return mutable array of eight interpolated strings each with greeting + speaker name
    
    NSMutableArray *speakersIntros = [speakers mutableCopy];
    
    NSUInteger speakersCount = [speakers count];
    
    for (NSUInteger i = 0; i < speakersCount; i++) {
        speakersIntros[i] = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
    }
    
    return speakersIntros;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    // iterate over speakers array and create interpolated string with speaker's name + dressing room #
    
    NSMutableArray *speakersIntrosAndRoom = [speakers mutableCopy];
    
    NSUInteger speakersCount = [speakers count];
    
    for (NSUInteger i = 0; i < speakersCount; i++) {
        NSUInteger room = i + 1;
        speakersIntrosAndRoom[i] = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], room];
    }
    
    return speakersIntrosAndRoom;}


@end
