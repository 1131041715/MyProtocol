//
//  ViewController.m
//  MyProtocol
//
//  Created by 大碗豆 on 17/5/19.
//  Copyright © 2017年 大碗豆. All rights reserved.
//

#import "ViewController.h"

#import "person.h"
#import "Rooom.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self room];


}

-(void)room{
    person * per = [[person alloc] init];
    Rooom * roo = [[Rooom alloc] init];
    
    [per wantToEat:@"鱼香肉丝饭"];  //我想吃鱼香肉丝饭
    per.delegate = roo;              //指定代理  设置代理  选店铺
    [roo sendFood];                 //卖家送餐
    [roo wantToGetMyMoney];        //买家付款 卖家得到饭钱
    [roo show];
}

- (void)person{
    person * ps = [[person alloc] init];
    [ps aDayCodeOneHour]; //默认的也是必须要实现的
    [ps show]; //调用@required 修饰的一个方法
    ps.a = 10; //给a赋值
    NSLog(@"%d",ps.a); //取a的值打印出来
    
    id<MyP>obj = ps; //使用di的方法表明obj就是一个对象ps
    [obj show];//obj 也调用show 这个方法
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
