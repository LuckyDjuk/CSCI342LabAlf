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
    
    self.greetingInput.delegate = self;
    self.nameInput.delegate = self;
    self.greetingInput.text = @"Yo";
    self.nameInput.text = @"dude";
}

+ (UIColor* ) randomColor {
    // Code below is retrieved from https://gist.github.com/kylefox/1689973
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}

- (id) changeMsg:(id)sender{
    NSString *msg=[NSString stringWithFormat:@"%@\n%@",self.greetingInput.text,self.nameInput.text];
    [self.msg setText:msg];
    [self.view endEditing:YES];
    
    //self.greetingInput.backgroundColor = [ViewController randomColor];
    //self.nameInput.backgroundColor = [ViewController randomColor];

    [UIView animateWithDuration:0.5 animations:^{
    
        self.view.backgroundColor = [ViewController randomColor];
        self.msg.textColor = [ViewController randomColor];
    
        while ([self.view.backgroundColor isEqual:self.msg.textColor]) {
            self.view.backgroundColor = [ViewController randomColor];
            self.msg.textColor = [ViewController randomColor];
        }
    }];
   
    
    return self;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self changeMsg:(textField)];
    return YES;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.greetingInput resignFirstResponder];
    [self.nameInput resignFirstResponder];
}


- (IBAction)showMessageButtonPressed:(id)sender {
    [self changeMsg:(sender)];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
