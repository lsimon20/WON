//
//  DetailViewController.h
//  WON
//
//  Created by Simon L on 21/11/15.
//  Copyright (c) 2015 Simon L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

