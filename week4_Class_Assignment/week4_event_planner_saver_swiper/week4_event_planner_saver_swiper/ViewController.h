//
//  ViewController.h
//  week4_event_planner_saver_swiper
//
//  Created by Monica Peters on 10/10/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEventViewController.h"

@interface ViewController : UIViewController <PassEventDetails>
{
    IBOutlet UIButton *saveEventsButton;
    IBOutlet UITextView *eventDetails;
    //don't forget to enable user interaction
    //for label with swipe gesture in xib view
    IBOutlet UILabel *swipeRightLabel;
    UISwipeGestureRecognizer *swipeRight;
}

-(IBAction)onSave:(id)sender;
-(void)onSwipe:(UISwipeGestureRecognizer *)recognizer;

@end
