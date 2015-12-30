//
//  Actividad.m
//  WON
//
//  Created by Simon L on 24/12/15.
//  Copyright © 2015 Simon L. All rights reserved.
//

#import "Actividad.h"

@implementation Actividad

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)create{
//    
//    @property UILabel *Friends;
//    @property UILabel *Title;
//    @property UILabel *Allowance;
//    @property UILabel *Creator;
//    @property UILabel *lvl;
//    @property UIImageView *Pic;
//    @property UIButton *Asist;
   
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    for (UIView *subview in self.contentView.superview.subviews) {
        if ([NSStringFromClass(subview.class) hasSuffix:@"SeparatorView"]) {
            subview.hidden = NO;
        }
    }
}
@end
