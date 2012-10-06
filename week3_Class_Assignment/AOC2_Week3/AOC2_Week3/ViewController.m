//
//  ViewController.m
//  AOC2_Week3
//
//  Created by Monica Peters on 10/3/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(IBAction)onClick:(id)sender
{
    //click button to show Add Event view
    addEventViewController *viewController = [[addEventViewController alloc]initWithNibName:@"addEventViewController" bundle:nil];
        if (viewController != nil)
        {
            viewController.delegate = self;
            [self presentViewController:viewController animated:TRUE completion:nil];
        }
}

-(void)setEvent:(NSString *)eventsString
{
    eventDetails.text = [eventDetails.text stringByAppendingString:eventsString];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
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
