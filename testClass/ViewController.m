//
//  ViewController.m
//  testClass
//
//  Created by KBH on 10/15/14.
//  Copyright (c) 2014 Yohei Okubo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *str;
}

@end

@implementation ViewController

-(id)hogehogeWithNum:num{ //numの型はとりあえずなんでも受け付ける
    
    NSString *obj;
    if([num isKindOfClass:[NSString class]]){
        obj = @"num is NSString.";
    }else{
        obj = @"num is NSINumber.";
    }
    
    return obj;
}
///////////////////////////////////////////////////////////

- (void)viewDidLoad {

    UIScreen *sc = [UIScreen mainScreen];
    CGRect disp = sc.bounds;
    
    self.view = [[UIView alloc]initWithFrame:CGRectMake(0,0,disp.size.height,disp.size.width)];
    
    
    self.view.backgroundColor = [UIColor grayColor];
    
    _buttonA=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _buttonB=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    _buttonA.frame = CGRectMake(50, 200, 10, 20);
    _buttonB.frame = CGRectMake(100, 200, 10, 20);

    
    [_buttonA setTitle:@"A" forState:UIControlStateNormal];
    [_buttonB setTitle:@"B" forState:UIControlStateNormal];

    
    _al = [[UIAlertView alloc]initWithTitle:@"うふふ" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    [_buttonA addTarget:self action:@selector(pushA:) forControlEvents:UIControlEventTouchDown];
    [_buttonB addTarget:self action:@selector(pushB:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:_buttonA];
    [self.view addSubview:_buttonB];
    
    
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//pushEvents
-(void)pushA:(UIButton *)button{
    NSString *num = @"2";

    str =[self hogehogeWithNum:num];
    
    _al.message =str;
    [_al show];
}
-(void)pushB:(UIButton *)button{
    NSNumber *num=[NSNumber numberWithInt:3];

    str =[self hogehogeWithNum:num];
    
    _al.message =str;
    [_al show];
}



@end
