//
//  ViewController.m
//  EAIToggleButtonTest
//
//  Created by Eric Ito on 12/7/13.
//  Copyright (c) 2013 Eric Ito. All rights reserved.
//

#import "ViewController.h"
#import "EAIToggleButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    EAIToggleButton *toggleBtn1 = [[EAIToggleButton alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    toggleBtn1.onTitle = @"Stop";
    toggleBtn1.onTitleColor = [UIColor redColor];
    toggleBtn1.onHandler = ^(EAIToggleButton *sender){
        NSLog(@"Turning btn1 on...");
    };
    toggleBtn1.offTitle = @"Start";
    toggleBtn1.offTitleColor = [UIColor greenColor];
    toggleBtn1.offHandler = ^(EAIToggleButton *sender){
        NSLog(@"Turning btn1 off...");        
    };
    
    [self.view addSubview:toggleBtn1];
    
    EAIToggleButton *toggleBtn2 = [[EAIToggleButton alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    toggleBtn2.onTitle = @"Stop";
    toggleBtn2.onTitleColor = [UIColor redColor];
    UIImage *onImg = [UIImage imageNamed:@"onImage"];
    toggleBtn2.onImage = onImg;
    
    toggleBtn2.onHandler = ^(EAIToggleButton *sender){
        NSLog(@"Turning btn2 on...");
    };
    toggleBtn2.offTitle = @"Start";
    toggleBtn2.offTitleColor = [UIColor greenColor];
    UIImage *offImg = [UIImage imageNamed:@"offImage"];
    toggleBtn2.offImage = offImg;
    toggleBtn2.offHandler = ^(EAIToggleButton *sender){
        NSLog(@"Turning btn2 off...");
    };
    

    [self.view addSubview:toggleBtn2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
