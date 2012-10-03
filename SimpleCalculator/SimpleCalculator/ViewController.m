//
//  ViewController.m
//  SimpleCalculator
//
//  Created by Monica Peters on 10/2/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "ViewController.h"
#import "infoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//setup setters & getters for the properties
//I declared in my interface (header) file (ViewController.h)
@synthesize typingNumber, firstNumber, secondNumber, operation, calculatorDisplay;

- (IBAction)showInfoView:(id)sender
{
    //if switch is on, allow magic to happen.
    if (onOffSwitch.on != false)
    {
        //call my object up
        infoViewController *infoView = [[infoViewController alloc] initWithNibName:@"infoViewController" bundle:nil];
        [self presentViewController:infoView animated:YES completion:nil];
    }
    else
    {
        NSLog(@"Turn my switch ON to use my magical buttons.");
    }
}

//on off switch to disable enable calculator buttons
-(IBAction)onSwitched:(id)sender
{
    //verify this object exists
    UISwitch *thisSwitch = (UISwitch *)sender;
    if (thisSwitch != nil)
    {
        int tag = thisSwitch.tag;
        NSString *temp = [NSString stringWithFormat:@"You changed switch #%d", tag];
        NSLog(@"%@", temp);
    }
    self.typingNumber = NO;
}

- (IBAction)onClick:(id)sender
{
    //if switch is on, allow magic to happen.
    if (onOffSwitch.on != false)
    {
        //change background color
        UISegmentedControl *segmentControl = (UISegmentedControl *)sender;
        if (segmentControl != nil)
        {
            int selectedIndex = segmentControl.selectedSegmentIndex;
            if (selectedIndex == WHITE)
            {
                self.view.backgroundColor = [UIColor whiteColor];
            }
            else if (selectedIndex == BLUE)
            {
                self.view.backgroundColor = [UIColor colorWithRed:0.165 green:0.365 blue:0.624 alpha:1] /*#2a5d9f*/;
            }
            else if (selectedIndex == GREEN)
            {
                self.view.backgroundColor = [UIColor colorWithRed:0.278 green:0.416 blue:0.333 alpha:1] /*#476a55*/;
            }
        }
    }
    else
    {
        NSLog(@"No Background Color Changing Magic for You. I am turned OFF.");
    }
}

- (IBAction)numberPressed:(UIButton *)sender
{
    if (onOffSwitch.on != false)
    {
        NSString *number = sender.currentTitle;
        if (self.typingNumber)
        {
            self.calculatorDisplay.text = [self.calculatorDisplay.text stringByAppendingString:number];
        }
        else
        {
            self.calculatorDisplay.text = number;
            //only use YES | NO for bools in this entire app
            //refer to BNR Book & Blog
            self.typingNumber = YES;
        }
    }
    else
    {
        NSLog(@"Click my ON switch if you want to play math games.");
    }
}

- (IBAction)calculationPressed:(id)sender
{
    if (onOffSwitch.on != false)
    {
        self.typingNumber = NO;
        self.firstNumber = [self.calculatorDisplay.text intValue];
        self.operation = [sender currentTitle];
    }
    else
    {
        NSLog(@"No Calculator Magic for You. I am turned OFF.");
    }
}

- (IBAction)equalsPressed
{
    if (onOffSwitch.on != false)
    {
        self.typingNumber = NO;
        self.secondNumber = [self.calculatorDisplay.text intValue];
        int result = 0;
        if ([self.operation isEqualToString:@"+"])
        {
            result = self.firstNumber + self.secondNumber;
        }
        else if ([self.operation isEqualToString:@"-"])
        {
            result = self.firstNumber - self.secondNumber;
        }
        else if ([self.operation isEqualToString:@"/"])
        {
            result = self.firstNumber / self.secondNumber;
        }
        else if ([self.operation isEqualToString:@"*"])
        {
            result = self.firstNumber * self.secondNumber;
        }
    
        self.calculatorDisplay.text = [NSString stringWithFormat:@"%d", result];
    }
    else
    {
        NSLog(@"I'm not doing any magic for you when my button is OFF.");
    }
}

- (IBAction)clearPressed
{
    if (onOffSwitch.on != false)
    {
        //clear all calculations
        firstNumber = 0;
        secondNumber = 0;
        int result = 0;
        self.calculatorDisplay.text = [NSString stringWithFormat:@"%d", result];
    }
    else
    {
        NSLog(@"I am OFF - I refuse to perform mathemagical tricks now.");
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
