//
//  AppDelegate.h
//  Objecive-C-Project
//
//  Created by Илья on 12.05.2020.
//  Copyright © 2020 Илья. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

