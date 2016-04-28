
#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    

    
    
    NSArray *mySpeakers = @[ @"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik" ];

    
    for (NSUInteger i = 0; i < [mySpeakers count]; i++) {
        NSLog(mySpeakers[i]);
    }
    
    
    
    
    

    NSMutableArray *namesForWWDC = [self badgesForSpeakers: mySpeakers];
    
    for (NSUInteger i = 0; i < [namesForWWDC count]; i++) {
        NSLog(namesForWWDC[i]);
    }
    
    
    NSArray *roomNumbers = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8"];
    
    NSMutableArray *roomsForWWDC = [self greetingsAndRoomAssignmentsForSpeakers: mySpeakers: roomNumbers];
    for (NSUInteger i = 0; i < [roomsForWWDC count]; i++) {
        NSLog(roomsForWWDC[i]);
    }

    
    
    
    return YES;
}



//METHODS



- (NSString *)badgeForSpeaker:(NSString *)speaker {

    NSString *returnedString = [NSString stringWithFormat:@"Hello my name is %@!", speaker];
    

    return returnedString;
    }


- (NSArray *)badgesForSpeakers:(NSArray *)speakers {

    NSMutableArray *returnedNameArray = [NSMutableArray arrayWithCapacity: [speakers count]];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *returnedString = [NSString stringWithFormat:@"Hello my name is %@!", speakers[i]];
        returnedNameArray[i] = returnedString;
    }
    
    return returnedNameArray;
}

//New Stuff

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers :(NSArray *) rooms {
    
    NSMutableArray *returnedNumberArray = [NSMutableArray arrayWithCapacity: [speakers count]];

    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *returnedString = [NSString stringWithFormat:@"Welcome %@! You'll be in dressing room %@", speakers[i], rooms[i]];
        returnedNumberArray[i] = returnedString;
    }

    
    
    return returnedNumberArray;
}







@end
