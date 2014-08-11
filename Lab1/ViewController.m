//
//  ViewController.m
//  Lab1
//
//  Created by Alf Magnus Kittang Hammerseth on 07.08.14.
//  Copyright (c) 2014 Alf Magnus Kittang Hammerseth. All rights reserved.
//

#import "ViewController.h"

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
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
