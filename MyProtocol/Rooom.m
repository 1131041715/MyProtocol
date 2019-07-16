//
//  Rooom.m
//  MyProtocol
//
//  Created by 大碗豆 on 17/5/19.
//  Copyright © 2017年 大碗豆. All rights reserved.
//

#import "Rooom.h"

@implementation Rooom

{
    int  _money;
}

- (void)sendFood{ //卖家送餐
    NSLog(@"店家：好的我马上给您派送");
}
- (void)getMoney:(int)money{
    _money = money; //卖家得到饭钱就放进他自己的口袋了
}
- (void)wantToGetMyMoney{
    //卖家想得到饭钱就需要买家付款  买家付款给对应的卖家
    //这里就是代理的回调
    person *p1 = [[person alloc] init];
    p1.delegate = self;   //注意这里的self  谁调用这个方法self就是谁
    [p1 give:15];       //give是主动方的方法  买家付款15元
}
- (void)show{
    NSLog(@"店家：我得到了我的money:%d",_money);
}

@end
