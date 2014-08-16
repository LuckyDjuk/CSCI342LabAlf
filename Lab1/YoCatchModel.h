//
//  YoCatchModel.h
//  Lab1
//
//  Created by Alf Magnus Kittang Hammerseth on 07.08.14.
//  Copyright (c) 2014 Alf Magnus Kittang Hammerseth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YoCatchModel : NSObject

/** Name of the Yo user. Currently this is local */
@property (nonatomic, strong) NSString* username;

/** History of the messages sent with Yo */
@property (nonatomic, strong, readonly) NSMutableArray* historyArray;

/** Class method for getting the default Yo message Question 6 answer here. */
//  Answer: This doesn't work due to the fact that when you use a class method
//  the self pointer refers to the class it self and not a specific instance.

+ (NSString*) defaultYoMessage;

/** Instance method for adding data into the history array */

// Your answer to q7 here

- (void) addEntryInHistoryArray: (NSString *) entry;

- (instancetype)init;

- (instancetype)initWithUsername:(NSString *) username;

- (NSString *)description;

@end