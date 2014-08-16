//
//  YoCatchModel.m
//  Lab1
//
//  Created by Alf Magnus Kittang Hammerseth on 07.08.14.
//  Copyright (c) 2014 Alf Magnus Kittang Hammerseth. All rights reserved.
//

#import "YoCatchModel.h"

@implementation YoCatchModel

- (instancetype) init {
    self = [super init];
    if (self != nil) {
        self.username = @"No Name";
        _historyArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (instancetype) initWithUsername:(NSString *) username {
    self = [super init];
    if (self != nil) {
        self.username = username;
        _historyArray = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (NSString *) defaultYoMessage{
    return @"Yo";
}

- (void) addEntryInHistoryArray: (NSString *) entry {
    [_historyArray addObject:entry];
}

- (NSString *)description {
    NSString *layout = [NSString stringWithFormat:@"Username: %@ \n HistoryArray: %@ \n", self.username, self.historyArray];
    return layout;
    
}

@end