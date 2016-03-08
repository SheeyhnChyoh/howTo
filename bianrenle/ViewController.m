//
//  ViewController.m
//  bianrenle
//
//  Created by Longcai on 16/1/18.
//  Copyright (c) 2016年 Longcai. All rights reserved.
//

#import "ViewController.h"
#import "menu.h"

@interface ViewController ()
{
    UIButton * blackCover;
    UIView * radiusBox;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;
    self.view.backgroundColor = [UIColor redColor];
    
    UITextField * TF = [[UITextField alloc]initWithFrame:CGRectMake(0, 1, [UIScreen mainScreen].bounds.size.width, 50)];
    TF.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:TF];
    
    
    
//    UIWindow *window = [[[UIApplication sharedApplication] windows] lastObject];
//    UIWindow *windowKaka = [UIApplication sharedApplication].keyWindow;
//    
//    NSLog(@" lastWindow is %@",window);
//    NSLog(@" windowKaka is %@",windowKaka);
    
    menu * menu1 = [[menu alloc]initWithFrame:CGRectMake(0, 52, 100, 50)];
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(palik)];
    [menu1 addGestureRecognizer:tap];
    [self.view addSubview:menu1];
    
    radiusBox = [[UIView alloc] init];
    radiusBox.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, ([UIScreen mainScreen].bounds.size.height)/2);
    radiusBox.bounds = CGRectMake(0, 0, 100, 100);
    radiusBox.backgroundColor = [UIColor whiteColor];
    radiusBox.layer.cornerRadius = 20;
    
    blackCover = [[UIButton alloc]initWithFrame:[UIScreen mainScreen].bounds];
    blackCover.backgroundColor = [UIColor blackColor];
    blackCover.alpha = 0.4;
    [blackCover addTarget:self action:@selector(mark) forControlEvents:UIControlEventTouchDown];
    
    
}

- (void)palik{
    
    
    
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    UIWindow *windowKaka = [UIApplication sharedApplication].keyWindow;
    
    NSLog(@" lastWindow is %@",window);
    NSLog(@" windowKaka is %@",windowKaka);
    
    [window addSubview:blackCover];
    [window addSubview:radiusBox];
    
}

-(void)mark{
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    UIWindow *windowKaka = [UIApplication sharedApplication].keyWindow;
    
    NSLog(@" lastWindow is %@",window);
    NSLog(@" windowKaka is %@",windowKaka);
    
    [blackCover removeFromSuperview];
    [radiusBox removeFromSuperview];
}

@end
