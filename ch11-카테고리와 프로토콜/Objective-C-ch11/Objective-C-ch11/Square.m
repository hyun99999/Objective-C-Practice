//
//  Square.m
//  Objective-C-ch11
//
//  Created by kimhyungyu on 2022/08/16.
//

#import "Square.h"

@implementation Square

// Square 를 인스턴스화하면 변수 rect 의 메모리 할당을 책임지지 않기 때문에 이니셜라이저를 재정의.
- (Square *)initWithSide:(int)s {
    self = [super init];
    
    if (rect)
        [self setSide:s];
    
    return self;
}
- (Square *)init {
    return [self initWithSide:-1];
}
// side 에 대한 게터, 세터 메소드.
- (void)setSide:(int)s {
    [rect setWidth:s andHeight:s];
}
- (int)side {
    return rect.width;
}
- (int)area {
    return [rect area];
}
- (int)perimeter {
    return [rect perimeter];
}

@end
