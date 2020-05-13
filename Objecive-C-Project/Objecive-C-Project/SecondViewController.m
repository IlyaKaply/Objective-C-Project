//
//  SecondViewController.m
//  Objecive-C-Project
//
//  Created by Илья on 12.05.2020.
//  Copyright © 2020 Илья. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-75, 100, 200, 50)];
    label.highlighted = YES;
    label.numberOfLines = 1;
    label.textColor = [UIColor blackColor];
    label.text = @"Second View Controller";
        
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(30, 150, 350, 50)];
    slider.maximumValue = 100.00;
    slider.value = 50.00;
    [slider setMaximumTrackTintColor:[UIColor greenColor]];
        
    UIProgressView *progressView = [[UIProgressView alloc] initWithProgressViewStyle: UIProgressViewStyleDefault];
    progressView.progressTintColor = [UIColor blackColor];
    CGRect frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2-100, [UIScreen mainScreen].bounds.size.height/2-25, 200.0, 50.0);
    progressView.frame = frame;
    progressView.progress = 0.35;
    
    
    CGRect frameForImageView = CGRectMake(100, 200, 200, 200);
    UIImageView *imageView = [[UIImageView alloc] initWithFrame: frameForImageView];
    imageView.image = [UIImage imageNamed:@"image"];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.backgroundColor = [UIColor whiteColor];
    
    
    UIActivityIndicatorView *activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle: UIActivityIndicatorViewStyleLarge];
    activityIndicatorView.color = [UIColor blackColor];
    activityIndicatorView.frame = self.view.bounds;
    activityIndicatorView.hidesWhenStopped = YES;
    [activityIndicatorView startAnimating];
    
    
    CGRect frameForSegmentedControl = CGRectMake([UIScreen mainScreen].bounds.size.width/2-100, [UIScreen mainScreen].bounds.size.height/2+100, 200.0, 50.0);
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"First", @"Second"]];
    segmentedControl.frame = frameForSegmentedControl;
    segmentedControl.tintColor = [UIColor blackColor];
    segmentedControl.selectedSegmentIndex = 0;
    
    [self.view addSubview:label];
    [self.view addSubview:slider];
    [self.view addSubview:segmentedControl];
    [self.view addSubview:progressView];
    [self.view addSubview:imageView];
    [self.view addSubview:activityIndicatorView];
    [self.view addSubview:segmentedControl];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
