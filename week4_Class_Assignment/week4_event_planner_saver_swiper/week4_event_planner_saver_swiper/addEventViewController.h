//
//  addEventViewController.h
//  week4_event_planner_saver_swiper
//
//  Created by Monica Peters on 10/10/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassEventDetails <NSObject>

@required
-(void)setEvent:(NSString *)eventString;
@end

@interface addEventViewController : UIViewController
{
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UILabel *swipeLeftLabel;
    IBOutlet UITextField *eventTextField;
    IBOutlet UIButton *closeKeyboard;
    NSString *text;
    NSString *event;
    UISwipeGestureRecognizer *swipeLeft;
    id <PassEventDetails> delegate;
    CGRect eventTextFieldFrame;
}

@property (strong) id<PassEventDetails> delegate;
@property (nonatomic, retain)IBOutlet UIDatePicker *datePicker;

-(IBAction)onSwipe:(UISwipeGestureRecognizer *)recognizer;
-(IBAction)closeKeyboard:(id)sender;

@end
