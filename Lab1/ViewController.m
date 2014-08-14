//
//  ViewController.m
//  Lab1
//
//  Created by Alf Magnus Kittang Hammerseth on 07.08.14.
//  Copyright (c) 2014 Alf Magnus Kittang Hammerseth. All rights reserved.
//

#import "ViewController.h"
#import "YoCatchModel.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // a. A log demonstrating outputting your name to console
    NSLog(@"My name is Alf Hammerseth");
    
    // b. A log demonstrating outputting your age as a float to two decimal places to console
    NSLog(@"My age: %.2f", 25.00);
    
    // c. A log demonstrating outputting your name as a string variable
    NSLog(@"My name is %@", @"Alf Hammerseth");
    
    YoCatchModel* yo = [[YoCatchModel alloc] init];
    
    [yo addEntryInHistoryArray:@"Adam"];
    [yo addEntryInHistoryArray:@"Eve"];
    
    for (NSString* entry in yo.historyArray) {
        NSLog(@"%@",entry);
    }
    
    for (int i = 0; i < yo.historyArray.count; i++) {
        NSLog(@"%@",yo.historyArray[i]);
    }
    
    NSLog(@"%@",[yo description]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
