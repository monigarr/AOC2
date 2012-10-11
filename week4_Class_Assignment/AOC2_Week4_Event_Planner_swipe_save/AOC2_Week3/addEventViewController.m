//
//  addEventViewController.m
//  AOC2_Week3
//
//  Created by Monica Peters on 10/3/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "addEventViewController.h"


@implementation addEventViewController

//setup setters & getters
@synthesize datePicker, delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        delegate = nil;
    }
    return self;
}

//Buttons
//change this to swipe event and remove save button
-(IBAction)onClick:(id)sender
{
    UIButton *addEventButton = (UIButton *)sender;
    
    //Save Button (save text & date)
    if (addEventButton.tag == 0)
    {
        datePicker.minimumDate = [NSDate date];
        NSDate *datePicked = [datePicker date];
        if(datePicked != nil)
        {
            NSDateFormatter *niceLookingDate = [[NSDateFormatter alloc]init];
            if (niceLookingDate != nil)
            {
                [niceLookingDate setDateFormat:@"MMMM dd, h:mm a \n"];
            }
            dateText = [niceLookingDate stringFromDate:datePicked];
            NSLog(@"%@ \n", dateText);
        }
        
        //save text that user entered so we can
        //show in main view screen later
        NSString *eventDetails = eventTextField.text;
        
        //show event text entered in log for now
        NSLog(@"Event Details: %@", eventDetails);
        
        //close addEventView and show Main ViewController with all the saved events
        [self dismissViewControllerAnimated:TRUE completion:nil];
        if (delegate != nil)
        {
            newEvent = [NSString stringWithFormat:@"New Event: %@ \n%@\n\n", eventTextField.text, dateText];
            [delegate setEvent:newEvent];
        }
    }
    
    //close keyboard button
    else if (addEventButton.tag == 2)
    {
        //make keyboard the first responder if it's not already
        //so we can close the keyboard
        [eventTextField resignFirstResponder];
        
        //close the keyboard
        [eventTextField setFrame:eventTextFieldFrame];
    }
    
    [eventTextField resignFirstResponder];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)viewDidLoad
{
    //setup visuals and labels
    self.view.backgroundColor = [UIColor whiteColor];

    //make sure datePicker shows todays date as the min. date
    datePicker.minimumDate = [NSDate date];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated
{
    leftSwiperGestureRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipe:)];
    leftSwiperGestureRecognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [leftSwiperLabel addGestureRecognizer:leftSwiperGestureRecognizer];
    [super viewWillAppear:animated];
    //when I swipe left I must save all from this view over to main view
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
