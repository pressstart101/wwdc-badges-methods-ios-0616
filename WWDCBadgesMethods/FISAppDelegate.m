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



- (NSString *)badgeForSpeaker:(NSString *)speaker{
    
    NSString *speakerGreeting = [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
    
    return speakerGreeting;
}

- (NSMutableArray *)badgesForSpeakers:(NSArray *)speakers{
    NSMutableArray *badges = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++){
        NSString *badgesString = [NSString stringWithFormat: @"Hello, my name is %@.", speakers[i]];
        [badges addObject:badgesString];
    }
    return badges;
}
- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray *roomAssignment = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++){
        NSUInteger roomNumber = i + 1;
        NSString *roomAssignmentPhrase = [NSString stringWithFormat: @"Welcome, %@! You'll be in the dressing room %lu.", speakers[i], roomNumber];
        
        [roomAssignment addObject:roomAssignmentPhrase];
    }
    return roomAssignment;
}
@end

    