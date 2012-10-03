//
//  ViewController.h
//  SimpleCalculator
//
//  Created by Monica Peters on 10/2/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//
//  tutorial:  iosCreator.com

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UISwitch *onOffSwitch;
    IBOutlet UISegmentedControl *changeBackground;
    IBOutlet UIButton *infoButton;
    IBOutlet UILabel *label;
    int backgroundColor;
}

typedef enum
{
    WHITE,
    BLUE,
    GREEN
}backgroundColor;

//setup accessors (getter/setter methods)
//in matching implementation file: ViewController.m
//do this because I don't want direct access when I
//make changes
@property (nonatomic) BOOL typingNumber;
@property (nonatomic) int firstNumber;
@property (nonatomic) int secondNumber;
@property (nonatomic, copy) NSString *operation;
@property (weak, nonatomic) IBOutlet UILabel *calculatorDisplay;

//CLASS INSTANCES

//show info view
- (IBAction)showInfoView:(id)sender;

//process background color change
- (IBAction)onClick:(id)sender;

//on off switch to disable all calculator buttons
-(IBAction)onSwitched:(id)sender;

//clear calculations
- (IBAction)clearPressed;

//numbers on calculator
- (IBAction)numberPressed:(UIButton *)sender;

//plus, minus for calculator
- (IBAction)calculationPressed:(id)sender;

//equal sign for calculator
- (IBAction)equalsPressed;


@end
