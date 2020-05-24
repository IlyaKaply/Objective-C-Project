//
//  ViewController.h
//  Objecive-C-Project
//
//  Created by Илья on 20.05.2020.
//  Copyright © 2020 Илья. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonnull) UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
