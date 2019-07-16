//
//  person.m
//  MyProtocol
//
//  Created by 大碗豆 on 17/5/19.
//  Copyright © 2017年 大碗豆. All rights reserved.
//

#import "person.h"

@implementation person

- (void)aDayCodeOneHour{
    NSLog(@"我的协议内容是“每天练习一小时OC编程”");
}
- (void)show{
    NSLog(@"这是一个协议的例子。");
}


- (void)wantToEat:(NSString *)food{  //选好吃什么
    NSLog(@"顾客：我想吃 %@",food);
    [self.delegate sendFood];
}
- (void)give:(int)money{ //买家付款
    //注意这里的 self.delegate
    [self.delegate getMoney:money]; //付款给给我送餐的卖家
}

@end
