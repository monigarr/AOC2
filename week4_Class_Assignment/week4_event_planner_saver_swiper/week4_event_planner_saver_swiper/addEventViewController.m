//
//  addEventViewController.m
//  week4_event_planner_saver_swiper
//
//  Created by Monica Peters on 10/10/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "addEventViewController.h"

@interface addEventViewController ()

@end

@implementation addEventViewController

@synthesize delegate, datePicker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLeftLabel addGestureRecognizer:swipeLeft];
    
    [super viewWillAppear:animated];
}

-(IBAction)closeKeyboard:(id)sender
{
    //if button clicked close keyboard
    if (closeKeyboard.tag == 2)
    {
        //make keyboard the first responder if it's not already
        //so we can close the keyboard
        [eventTextField resignFirstResponder];
        
        //close the keyboard
        [eventTextField setFrame:eventTextFieldFrame];
        NSLog(@"closeKeyboard");
    }
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    datePicker.minimumDate = [NSDate date];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)startEditingTextField:(UITextField *)eventTextField
{
    //eventTextField.text = @"";
    return YES;
}

-(IBAction)onSwipe:(UISwipeGestureRecognizer *)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        NSDate *datePicked = [datePicker date];
        if (datePicked != nil)
        {
            NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
            if (formatDate != nil)
            {
                [formatDate setDateFormat:@"MMMM dd, h:mm a"];
            }
            text = [formatDate stringFromDate:datePicked];
            NSLog(@"Swiped Left %@", text);
        }
        
        if (delegate != nil)
        {
            event = [NSString stringWithFormat:@"%@ \n%@ \n\n", eventTextField.text, text];
            [delegate setEvent:event];
            [self dismissViewControllerAnimated:TRUE completion:nil];
            NSLog(@"Swiped Left delegate is not nil");
        }
        
        else if (delegate == nil)
        {
            NSLog(@"Swiped Left delegate is nil");
        }
    }
}

@end
