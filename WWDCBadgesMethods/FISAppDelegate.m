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
    
    NSArray * speakers = @[ @"Adele Goldberg",
                  @"Edsger Dijkstra",
                  @"Joan Clarke",
                  @"Clarence Ellis",
                  @"Margaret Hamilton",
                  @"George Boole",
                  @"Tim Berners-Lee",
                  @"Jean Bartik"];
    for ( int i = 0 ; i < speakers.count ; i++ ){
        NSLog(@"%@",[self badgeForSpeaker:speakers[i]]);
    }
    
    
    NSLog(@"%@", [self badgesForSpeakers:speakers]);
    NSLog(@"%@", [self greetingsAndRoomAssignmentsForSpeakers:speakers]);
    
    return YES;
}

-(NSString *)badgeForSpeaker:(NSString *)speaker{
    
    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];

}
-(NSMutableArray *)badgesForSpeakers:(NSArray *)speakers{
    
    NSMutableArray * badgesForSpeakers = [[NSMutableArray alloc] init];
    for ( int i = 0 ; i < speakers.count ; i ++){
        [badgesForSpeakers addObject:[NSString stringWithFormat:@"Hello, my name is %@.",speakers[i]]];
    }
    return badgesForSpeakers;
}
-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray * greetingsAndRoomAssignmentsForSpeakers = [[NSMutableArray alloc] init];
    //Welcome, <#speaker#>! You'll be in dressing room <#roomNumber#>.
    for ( int i = 0 ; i < speakers.count ; i ++){
        NSString * m = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %i.",speakers[i],i+1];
        [greetingsAndRoomAssignmentsForSpeakers addObject: m];
    }
    
    return greetingsAndRoomAssignmentsForSpeakers;
}

@end
