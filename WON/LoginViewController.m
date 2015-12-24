//
//  LoginViewController.m
//  WON
//
//  Created by Simon L on 6/12/15.
//  Copyright © 2015 Simon L. All rights reserved.
//

#import "LoginViewController.h"
#import "UIRelated.h"
#import <Parse/Parse.h>
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.Scroll = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    self.Scroll.contentSize =CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height*2);
    
    
    [self.view addSubview:self.Scroll];
    
    UIRelated *UI = [[UIRelated alloc]init];
    self.Scroll.backgroundColor = UI.fondo;
    
    self.Username = [[UITextField alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/8, self.view.bounds.size.height*9/16, self.view.bounds.size.width*6/8, self.view.bounds.size.height/16)];
    self.Password = [[UITextField alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/8, self.view.bounds.size.height*11/16, self.view.bounds.size.width*6/8, self.view.bounds.size.height/16)];
    
    self.Username.placeholder = @"username";
    self.Password.placeholder = @"password";
    self.Username.textAlignment = NSTextAlignmentCenter;
    self.Password.textAlignment = NSTextAlignmentCenter;
    self.Password.secureTextEntry = true;
    self.Username.backgroundColor = UI.gris;
    self.Password.backgroundColor = UI.gris;
    self.Login = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.FBLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.FBLogin.backgroundColor = UI.social;
    self.Login.backgroundColor = UI.naranja;
    [self.Login setTitle:@"Login/Register" forState:UIControlStateNormal];
    self.Login.frame = CGRectMake(self.view.bounds.size.width/8, self.view.bounds.size.height*12.5/16, self.view.bounds.size.width*6/8, self.view.bounds.size.height/16);
    self.FBLogin.frame = CGRectMake(self.view.bounds.size.width/8, self.view.bounds.size.height*14/16, self.view.bounds.size.width*6/8, self.view.bounds.size.height/16);
    [self.Scroll addSubview:self.Username];
    [self.Scroll addSubview:self.Password];
    [self.Scroll addSubview:self.Login];
    [self.Scroll addSubview:self.FBLogin];
    [self.Login addTarget:self action:@selector(Loginorregister:) forControlEvents:UIControlEventTouchUpInside];
    self.Username.delegate = self;
    self.Password.delegate = self;
    self.Scroll.delegate = self;
    UITapGestureRecognizer *Done = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cerrar:)];
    
    [self.Scroll addGestureRecognizer:Done];
    
    // Do any additional setup after loading the view.
}
- (void)Loginorregister:(UITapGestureRecognizer*)sender{
    [self.Scroll setContentOffset:CGPointMake(0, 0) animated:YES];
    if([self.Username hasText]&&[self.Password hasText]){
    [PFUser logInWithUsernameInBackground:self.Username.text password:self.Password.text block:^(PFUser *user, NSError *error) {
        if (!error) {
            [self dismissViewControllerAnimated:YES completion:nil];
        } else {
            // The login failed. Check error to see why.
            NSLog(@"%@",error);
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:(@"Login Error")                                                            message:@"do you want to register with this credentials"
                                                           delegate:self
                                                  cancelButtonTitle:@"No"
                                                  otherButtonTitles:@"Yes", nil];
            [alert show];
            
        }
    }];
    }
    [[self view] endEditing:YES];
}
-(void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 1){
        NSError *error = nil;
        PFUser *newUser = [PFUser user];
        newUser.username = self.Username.text;
        newUser.password = self.Password.text;
        [newUser signUp:&error];
        if(error){
            UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:(@"Register Error")                                                            message:@"the username you are trying to use is already taken"
                                                           delegate:self
                                                  cancelButtonTitle:@"No"
                                                  otherButtonTitles:nil, nil];
            [alert2 show];
        }
        else{
            if( [PFUser currentUser]!=nil){
                NSLog(@"loged in");
                [self dismissViewControllerAnimated:YES completion:nil];
            }
            
        }
    }
}

- (void)cerrar:(UITapGestureRecognizer*)sender{
    [self.Scroll setContentOffset:CGPointMake(0, 0) animated:YES];
    [[self view] endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    //Has Focus
    [self.Scroll setContentOffset:CGPointMake(0, textField.frame.origin.y-300) animated:YES];
    return YES;
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
