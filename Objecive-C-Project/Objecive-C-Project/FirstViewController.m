//
//  ViewController.m
//  Objecive-C-Project
//
//  Created by Илья on 12.05.2020.
//  Copyright © 2020 Илья. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-75, 150, 150, 50)];
    [button addTarget:self action:@selector(nextScreen:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"Next_Controller" forState:UIControlStateNormal];
    
    [self.view addSubview:button];
                                                
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-75, 100, 200, 50)];
    label.highlighted = YES;
    label.numberOfLines = 1;
    label.text = @"First View Controller";
    
    [self.view addSubview:label];

}

- (void)nextScreen:(UIButton *)button {
    
    SecondViewController *nextController = [[SecondViewController alloc] init];
    nextController.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:nextController animated:YES];
    
}
@end
