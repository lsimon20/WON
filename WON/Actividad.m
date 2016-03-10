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
    self.ui = [[UIRelated alloc]init];
    self.backgroundColor = self.ui.grisclaro;
    self.Friends = [[UILabel alloc]initWithFrame:CGRectMake(self.bounds.size.height/8,self.bounds.size.height/16,self.bounds.size.width/16,self.bounds.size.width/16)];
    self.Friends.layer.cornerRadius = self.Friends.bounds.size.width/1.9;
    self.Friends.backgroundColor = self.ui.social;
    self.Friends.clipsToBounds = YES;
    [self addSubview:self.Friends];
    
    self.Title = [[UILabel alloc]initWithFrame:CGRectMake(self.bounds.size.width/6,self.bounds.size.height/16,self.bounds.size.width-self.bounds.size.width/2.5,self.bounds.size.width/16)];
    self.Title.backgroundColor = self.ui.grisclaro;
    [self addSubview:self.Title];
    
    self.Allowance = [[UILabel alloc]initWithFrame:CGRectMake(self.bounds.size.width*6.5/8,self.bounds.size.height/16,self.bounds.size.width*1/8,self.bounds.size.width/16)];
    self.Allowance.backgroundColor = self.ui.grisclaro;
    [self addSubview:self.Allowance];
    
    UIView *separador = [[UIView alloc]initWithFrame:CGRectMake(0,self.bounds.size.height/3,self.bounds.size.width,1)];
    separador.backgroundColor = self.ui.gris;
    [self addSubview:separador];

    self.Pic = [[UIImageView alloc]initWithFrame:CGRectMake(self.bounds.size.width/8,self.bounds.size.height/2,self.bounds.size.width*1/8,self.bounds.size.width/8)];
    self.Pic.layer.cornerRadius = self.Pic.bounds.size.width/1.9;
    self.Pic.backgroundColor = self.ui.gris;
    self.Pic.clipsToBounds = YES;
    [self addSubview:self.Pic];
    
    
    self.Creator = [[UILabel alloc]initWithFrame:CGRectMake(self.bounds.size.width/3.5,self.bounds.size.height/2,self.bounds.size.width-self.bounds.size.width/1.90,self.bounds.size.width/16)];
    self.Creator.backgroundColor = self.ui.grisclaro;
    [self addSubview:self.Creator];
    
    self.lvl = [[UILabel alloc]initWithFrame:CGRectMake(self.bounds.size.width/3.5,self.bounds.size.height/1.4,self.bounds.size.width/4,self.bounds.size.width/16)];
    self.lvl.backgroundColor = self.ui.grisclaro;
    [self addSubview:self.lvl];
    
    self.Asist = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.Asist.frame = CGRectMake(self.bounds.size.width*6.5/8,self.bounds.size.height/2,self.bounds.size.width*1/8,self.bounds.size.width/8);
    self.Asist.backgroundColor = self.ui.gris;
    self.Asist.layer.cornerRadius = self.Asist.bounds.size.width/3.5;
    [self addSubview:self.Asist];

    UIView *separador2 = [[UIView alloc]initWithFrame:CGRectMake(0,self.bounds.size.height-1,self.bounds.size.width,1)];
    separador2.backgroundColor =self.ui.naranja;
    [self addSubview:separador2];
   
    self.status = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width-5, self.bounds.size.height/3, 5, self.bounds.size.height*2/3)];
    self.status.backgroundColor = self.ui.full;
    [self addSubview:self.status];
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
