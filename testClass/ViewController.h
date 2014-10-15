//
//  ViewController.h
//  testClass
//
//  Created by KBH on 10/15/14.
//  Copyright (c) 2014 Yohei Okubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(id)hogehogeWithNum:num; //ここで型指定しなくてもnumは投げられて


@property(strong,nonatomic)UIButton *buttonA;
@property(strong,nonatomic)UIButton *buttonB;
@property(strong,nonatomic)UIAlertView *al;

@end

