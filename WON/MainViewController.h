//
//  MainViewController.h
//  WON
//
//  Created by Simon L on 5/12/15.
//  Copyright © 2015 Simon L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "topView.h"
@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property topView *tv;
@property UITableView *TableView;

@end
