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

- (NSString *) badgeForSpeaker:(NSString *)speaker; {
    
    NSString *badge = [ NSString stringWithFormat: @"Hello, my name is %@.", speaker];
    NSLog(@"%@", badge);
    
    return badge;
    
    
    
}


- (NSArray *) badgesForSpeakers: (NSArray *)speakers; {
    
    NSArray *names = @[@"Adele Goldberg.", @"Edsger Dijikstra.", @"Joan Clarke.", @"Clarence Ellis.", @"Margaret Hamilton.", @"George Boole.", @"Tim Berners-Lee.", @"Jean Bartike."];
    
    
    NSMutableArray *badges = [[NSMutableArray alloc]init];
    
    for (NSUInteger i=0; i<8; i++) {
        NSString *speakersBadges= [NSString stringWithFormat:@"Hello, my name is %@", speakers];
        [badges addObject:speakersBadges];
        
        NSLog(@"Hello, my name is %@", names [i]);
        
    }
    
    
    
    
    
    - (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers;
    {
        
        NSArray *roomNumbers = @[@"1", @"2", @"3", @"4",@"5", @"6", @"7", @"8"];
        
       
        
        NSMutableArray *roomAssignments = [[NSMutableArray alloc]init];
        
        for (NSUInteger i=0; i < [speakers count]; i++) {
            NSString *rooms = [NSString stringWithFormat:@"Welcome, %@! you'll be in dressing room %@", names, roomNumbers];
            [roomAssignments addObject:rooms];
            
            NSLog(@"Welcome, %@!, you'll be in dressing room %@", names, roomNumbers);
            
            
        }
    
        
        
        
        
@end
