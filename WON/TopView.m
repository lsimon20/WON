//
//  topView.m
//  WON
//
//  Created by Simon L on 5/12/15.
//  Copyright © 2015 Simon L. All rights reserved.
//

#import "topView.h"
#import "UIRelated.h"
@implementation topView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
     UIRelated *uirelated = [[UIRelated alloc]init];
    
    self.Perfil = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.Actividad = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.Crear = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.Perfil.frame = CGRectMake(self.bounds.size.width/12,self.bounds.size.width/10,self.bounds.size.width/12,self.bounds.size.width/12);
    self.Actividad.frame= CGRectMake((self.bounds.size.width-self.bounds.size.width*3/12),self.bounds.size.width/10,self.bounds.size.width/12,self.bounds.size.width/12);
    self.Crear.frame = CGRectMake((self.bounds.size.width-self.bounds.size.width*1.5
                                   /12),self.bounds.size.width/10,self.bounds.size.width/12,self.bounds.size.width/12);
    
    self.Perfil.layer.cornerRadius = self.Perfil.bounds.size.width/1.9;
    self.Actividad.layer.cornerRadius = self.Perfil.bounds.size.width/1.9;
    self.Crear.layer.cornerRadius = self.Perfil.bounds.size.width/1.9;
    
    self.Perfil.backgroundColor = uirelated.gris;
    self.Actividad.backgroundColor = uirelated.gris;
    self.Crear.backgroundColor = uirelated.gris;
    [self addSubview:self.Perfil];
    [self addSubview:self.Actividad];
    [self addSubview:self.Crear];
    
    UIView * linea = [[UIView alloc]initWithFrame:CGRectMake(0, self.bounds.size.height-2, self.bounds.size.width, 2)];
    linea.backgroundColor = uirelated.naranja;
    [self addSubview:linea];
    self.backgroundColor = uirelated.fondo;
    return self;
}


@end
