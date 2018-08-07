//
//  ViewController.m
//  w2d2-demo
//
//  Created by Roland on 2018-08-07.
//  Copyright © 2018 Game of Apps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Create a frame for my view, x,y is 10,10 and width/height is 100x100
    CGRect myFrame = CGRectMake(10.0, 10.0, 100.0, 100.0);
    
    // Create a view using myFrame as position and size
    UIView *myView = [[UIView alloc] initWithFrame:myFrame];
    
    UIColor *myColor = [UIColor purpleColor];
    [myView setBackgroundColor:myColor];
    
    // Add myView to my root view
    [self.view addSubview:myView];
    
    // Change the value of myLabel (which is an outlet to a label in the storyboard
    self.myLabel.text = @"Hi Bob";
    
    // Start value of animation
    myView.alpha = 1.0;
//    [UIView animateWithDuration:3.0 animations:^{
//        // End value or result of animation
////        myView.alpha = 0.0;
//        myView.frame = CGRectMake(20.0, 30.0, 20.0, 150.0);
//        myView.backgroundColor = [UIColor orangeColor];
//    }];
    
    // Another variant of animateWithDuration, this one takes a completion block, which is executed at the end of the animation
    [UIView animateWithDuration:3.0 animations:^{
        myView.frame = CGRectMake(20.0, 30.0, 20.0, 150.0);
        myView.backgroundColor = [UIColor orangeColor];
    } completion:^(BOOL finished) {
        // At this point, animation is completed
        self.myLabel.text = @"Finished animation";
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
