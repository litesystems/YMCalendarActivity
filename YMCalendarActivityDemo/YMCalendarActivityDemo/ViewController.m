//
//  ViewController.m
//  YMCalendarActivityDemo
//
//  Created by Yusuke Miyazaki on 2013/07/04.
//  Copyright (c) 2013 Yusuke Miyazaki. All rights reserved.
//

#import "ViewController.h"

#import "YMCalendarActivity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)actionButtonPushed:(id)sender {
    NSString *text = @"YMCalendarActivity";
    NSURL *url = [NSURL URLWithString:@"https://github.com/litesystems/YMCalendarActivity"];
    YMCalendarActivityEvent *event = [[YMCalendarActivityEvent alloc] init];
    
    event.title = @"My Event";
    event.location = @"Home";
    event.notes = @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";
    event.URL = [NSURL URLWithString:@"https://github.com/litesystems/YMCalendarActivity"];
    event.timeZone = [NSTimeZone localTimeZone];
    event.startDate = [NSDate dateWithTimeIntervalSinceNow:60*60];
    event.endDate = [NSDate dateWithTimeInterval:60*60 sinceDate:event.startDate];
    
    YMCalendarActivity *activity = [[YMCalendarActivity alloc] init];
    
    UIActivityViewController *avc = [[UIActivityViewController alloc] initWithActivityItems:@[text, url, event]
                                                                      applicationActivities:@[activity]];
    
    [self presentViewController:avc animated:YES completion:nil];
}

@end