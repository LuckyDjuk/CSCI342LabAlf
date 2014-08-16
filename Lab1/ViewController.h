//
//  ViewController.h
//  Lab1
//
//  Created by Alf Magnus Kittang Hammerseth on 07.08.14.
//  Copyright (c) 2014 Alf Magnus Kittang Hammerseth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *greetingInput;

@property (weak, nonatomic) IBOutlet UITextField *nameInput;

@property (weak, nonatomic) IBOutlet UILabel *msg;

- (id) changeMsg:(id)sender;

- (IBAction)showMessageButtonPressed:(id)sender;

@end
