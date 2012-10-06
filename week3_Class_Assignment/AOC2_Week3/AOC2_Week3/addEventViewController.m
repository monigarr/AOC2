//
//  addEventViewController.m
//  AOC2_Week3
//
//  Created by Monica Peters on 10/3/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "addEventViewController.h"
#import "ViewController.h"

@implementation addEventViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)onClick:(id)sender
{
    UIButton *addEventButton = (UIButton *)sender;
    
    //Save Button (save text & date)
    if (addEventButton.tag == 0)
    {
        //save text that user entered so we can
        //show in main view screen later
        NSString *eventDetails = textField.text;
        
        //show event text entered in log for now
        NSLog(@"Event Details: %@", eventDetails);
        
        //UIDatePicker *picker = (UIDatePicker *)sender;
        //if (picker != nil)
        //{
            //NSDate *date = picker.date;
            //show date picked in log for now 
            //NSLog(@"date=%@", [date description]);
        //}
        
        //close addEventView and show Main ViewController
        //with all the saved events
        
    }
    
    //close keyboard button
    else if (addEventButton.tag == 2)
    {
        //make keyboard the first responder if it's not already
        //so we can close the keyboard
        [textField resignFirstResponder];
        
        //close the keyboard
        [textField setFrame:textFieldFrame];
    }
    
    [textField resignFirstResponder];
}

- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
}

-(void)keyboardWillShow:(NSNotification *)notification
{

}

-(void)keyboardWillHide:(NSNotification *)notification
{

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
