//
//  ViewController.m
//  AOC2_Week3
//
//  Created by Monica Peters on 10/3/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "ViewController.h"
#import "addEventViewController.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onClick:(id)sender
{
    //click button to show Add Event view
    addEventViewController *viewController = [[addEventViewController alloc]initWithNibName:@"addEventViewController" bundle:nil];
    //controller.delegate = self;
        if (viewController != nil)
        {
            [self presentViewController:viewController animated:TRUE completion:nil];
        }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
