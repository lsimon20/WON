//
//  UIRelated.m
//  
//
//  Created by Simon L on 28/11/15.
//
//

#import "UIRelated.h"

@implementation UIRelated

-(instancetype)init
{
    if (!self){
       self = [super init];
        float p = 255.0;
        self.promo = [UIColor colorWithRed:91/p green:230/p blue:255/p alpha:1];
        self.social = [UIColor colorWithRed:54/p green:127/p blue:255/p alpha:1];
        self.completa = [UIColor colorWithRed:91/p green:230/p blue:106/p alpha:1];
        self.disponible = [UIColor colorWithRed:255/p green:230/p blue:29/p alpha:1];
        self.inscrita = [UIColor colorWithRed:255/p green:134/p blue:70/p alpha:1];
        self.full = [UIColor colorWithRed:255/p green:56/p blue:56/p alpha:1];
        self.naranja = [UIColor colorWithRed:255/p green:74/p blue:60/p alpha:1];
        self.gris = [UIColor colorWithRed:204/p green:204/p blue:204/p alpha:1];
    }
    return self;
}

@end
