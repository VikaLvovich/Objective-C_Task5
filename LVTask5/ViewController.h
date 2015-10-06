//
//  ViewController.h
//  LVTask5
//
//  Created by fpmi on 04.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LVBasket.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) LVBasket *basket;

@end

