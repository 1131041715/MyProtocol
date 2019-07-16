//
//  person.h
//  MyProtocol
//
//  Created by 大碗豆 on 17/5/19.
//  Copyright © 2017年 大碗豆. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyP.h"

//在主动方拟定协议
@protocol BuyFood <NSObject>
- (void)sendFood;//卖家送餐
- (void)getMoney:(int)money;//卖家得到饭钱
@end

@interface person : NSObject <MyP>

- (void)wantToEat:(NSString *)food;//买家想吃饭  什么饭
- (void)give:(int)money;//买家给卖家多少钱
//声明一个带有协议指针的属性
@property (nonatomic,weak) id<BuyFood>delegate;


@property (nonatomic,assign) int a;

@end
