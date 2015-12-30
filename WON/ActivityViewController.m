//
//  ActivityViewController.m
//  WON
//
//  Created by Simon L on 25/12/15.
//  Copyright © 2015 Simon L. All rights reserved.
//

#import "ActivityViewController.h"
#import "UIRelated.h"
@interface ActivityViewController ()

@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIRelated *UI = [[UIRelated alloc]init];
    self.tv = [[topView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/8)];
    UIScrollView *BaseScroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height/8, self.view.bounds.size.width, self.view.bounds.size.height*7/8)];
    BaseScroll.contentSize = self.view.bounds.size ;
    [self.view addSubview:self.tv];
    [self.view addSubview:BaseScroll];
    self.tv.Actividad.hidden = YES;
    [self.tv.Crear addTarget:self
                      action:@selector(aceptar:)
            forControlEvents:UIControlEventTouchUpInside];
    [self.tv.Perfil addTarget:self
                      action:@selector(cancelar:)
            forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/16, self.view.bounds.size.height/80, self.view.bounds.size.width*14/16, self.view.bounds.size.height/16)];
    title.text = @"Activity title";
    [BaseScroll addSubview:title];
    UITextField *titletxt = [[UITextField alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/16, self.view.bounds.size.height*6/80 , self.view.bounds.size.width*14/16, self.view.bounds.size.height/16)];
    titletxt.backgroundColor = UI.gris;
    [BaseScroll addSubview:titletxt];
    
    UILabel *desc = [[UILabel alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/16, self.view.bounds.size.height*11/80, self.view.bounds.size.width*14/16, self.view.bounds.size.height/16)];
    desc.text = @"Description";
    [BaseScroll addSubview:desc];
       UITextField *desctxt = [[UITextField alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/16, self.view.bounds.size.height*16/80 , self.view.bounds.size.width*14/16, self.view.bounds.size.height/8)];
    desctxt.backgroundColor = UI.gris;
    [BaseScroll addSubview:desctxt];
    
    UILabel *attendees = [[UILabel alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/16, self.view.bounds.size.height*26/80, self.view.bounds.size.width/4, self.view.bounds.size.height/16)];
    attendees.text = @"Attendees";
    [BaseScroll addSubview:attendees];
   
    UITextField *atttxt = [[UITextField alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/16, self.view.bounds.size.height*31/80 , self.view.bounds.size.width*14/16, self.view.bounds.size.height/16)];
    atttxt.backgroundColor = UI.gris;
    [BaseScroll addSubview:atttxt];
    
    UILabel *type = [[UILabel alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/16, self.view.bounds.size.height*36/80, self.view.bounds.size.width*14/16, self.view.bounds.size.height/16)];
    type.text = @"Type";
    [BaseScroll addSubview:type];
    
    UITextField *typetxt = [[UITextField alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/16, self.view.bounds.size.height*41/80 , self.view.bounds.size.width*14/16, self.view.bounds.size.height/8)];
    typetxt.backgroundColor = UI.gris;
    [BaseScroll addSubview:typetxt];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)aceptar:(UITapGestureRecognizer*)sender{
  
}
- (void)cancelar:(UITapGestureRecognizer*)sender{

    [self.navigationController popViewControllerAnimated:YES];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
