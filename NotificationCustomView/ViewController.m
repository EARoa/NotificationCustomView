//
//  ViewController.m
//  NotificationCustomView
//
//  Created by Efrain Ayllon on 6/27/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *notificationView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    notificationView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:notificationView];

    // swipe down
    UISwipeGestureRecognizer *swipeDownGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    
    swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    
    [notificationView addGestureRecognizer:swipeDownGestureRecognizer];
    
    
    // swipe up
    UISwipeGestureRecognizer *swipeUpGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    
    swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    
    [notificationView addGestureRecognizer:swipeUpGestureRecognizer];
    
}







-(void) swipeDown:(UIGestureRecognizer *)recognizer {
    NSLog(@"Swiped Down");
}

-(void) swipeUp:(UIGestureRecognizer *)recognizer {
    NSLog(@"Swiped Up");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
