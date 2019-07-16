//
//  MyP.h
//  MyProtocol
//
//  Created by 大碗豆 on 17/5/19.
//  Copyright © 2017年 大碗豆. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyP <NSObject>

- (void)aDayCodeOneHour;

@required  //缺省属性，必须要实现
- (void)show; //show 是必须要实现

@property (nonatomic,assign) int a;

@optional      // 可选实现
- (void)show1; //show1 是可实现也可不实现

@end
