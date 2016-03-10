//
//  Actividad.h
//  WON
//
//  Created by Simon L on 24/12/15.
//  Copyright © 2015 Simon L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIRelated.h"
@interface Actividad : UITableViewCell


@property UILabel *Friends;
@property UILabel *Title;
@property UILabel *Allowance;
@property UILabel *Creator;
@property UILabel *lvl;
@property UIImageView *Pic;
@property UIButton *Asist;
@property UIView *status;
@property UIRelated *ui;


-(void)create;

@end
