//
//  ViewController.m
//  Objecive-C-Project
//
//  Created by Илья on 12.05.2020.
//  Copyright © 2020 Илья. All rights reserved.
//

#import "FirstViewController.h"
#import ""

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 200, 100, 50)];
    [button addTarget:self action:@selector(nextScreen:) forControlEvents:UIControlEventTouchUpInside];
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"Next_window" forState:UIControlStateNormal];
    
    [self.view addSubview:button];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 400, 100, 50)];
    label.highlighted = YES;
    label.text = @"Label here";
    
    [self.view addSubview:label];

}

- (void)nextScreen:(UIButton *)button {
    
    UIViewController *controller = [[UIViewController alloc] init];
    controller.view.backgroundColor = [UIColor blueColor];
    
    [self.navigationController pushViewController:controller animated:YES];
}
@end
