//
//  ViewController.m
//  week4_event_planner_saver_swiper
//
//  Created by Monica Peters on 10/10/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//save event strings from secondary view
//that are showing in the textfield on this main view
-(IBAction)onSave:(id)sender
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (userDefaults != nil)
    {
        NSString *eventString = eventDetails.text;
        [userDefaults setObject:eventString forKey:@"event"];
        [userDefaults synchronize];
        NSLog(@"onSave Action");
    }
}

//make sure the swipe enabled label is ready
-(void)viewWillAppear:(BOOL)animated
{
    swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRightLabel addGestureRecognizer:swipeRight];
    
    [super viewWillAppear:animated];
}

//set the Event strings for this view
-(void)setEvent:(NSString *)eventString
{
    eventDetails.text = [eventDetails.text stringByAppendingString:eventString];
    NSLog(@"setEvent %@", eventDetails.text);
}

//show the secondary view when
//the label is swiped
-(void)onSwipe:(UISwipeGestureRecognizer *)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        addEventViewController *addEventView = [[addEventViewController alloc]initWithNibName:@"addEventViewController" bundle:nil];
        NSLog(@"Swiped Right");
        if (addEventView != nil)
        {
            addEventView.delegate = self;
            [self presentViewController:addEventView  animated:TRUE completion:nil];
            NSLog(@"Swiped Right");
        }
    }
    //if label is swiped the wrong way
    //give me a hint in my log
    else if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        NSLog(@"Please Swipe Right");
    }
}

//load up & show the saved event strings into this main view
//load up the event strings from the secondary view that are not
//saved yet but were just created.
//must click that save button to keep the event strings in this
//view the next time this app is run.
- (void)viewDidLoad
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (defaults != nil)
    {
        NSString *eventString = [defaults objectForKey:@"event"];
        eventDetails.text = eventString;
    }
    else
    {
        NSString *eventString = [defaults objectForKey:@"No Events Added Yet."];
        eventDetails.text = eventString;
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
