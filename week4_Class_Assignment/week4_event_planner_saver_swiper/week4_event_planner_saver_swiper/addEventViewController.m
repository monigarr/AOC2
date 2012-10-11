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
            NSLog(@"%@", text);
        }
        
        if (delegate != nil)
        {
            event = [NSString stringWithFormat:@"%@ \n%@ \n\n", eventTextField.text, text];
            [delegate setEvent:event];
            [self dismissViewControllerAnimated:TRUE completion:nil];
        }
        
        else if (delegate == nil)
        {
            
        }
    }
}

-(void)closeKeyboard:(id)sender
{
    [eventTextField resignFirstResponder];
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    datePicker.minimumDate = [NSDate date];
}

@end
