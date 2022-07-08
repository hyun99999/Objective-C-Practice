//
//  Rectangle.m
//  Objective-C-ch8
//
//  Created by kimhyungyu on 2022/07/04.
//

#import "Rectangle.h"

@implementation Rectangle {
    // 우선, setter, getter 를 만들어 보겠다.
    XYPoint *origin;
}

@synthesize width, height;

- (void)setOrigin:(XYPoint *)pt {
    // 각 Rectangle 인스턴스가 자신만의 origin 을 소유할 수 있도록 하기 위함.
    // origin 메서드를 자동 생성하지 않은 이유가 이것이다. 기본적으로, 자동 생성된 세터는 객체 자체를 복사하지 않고, 객체의 포인터만 복사한다.
    if (!origin)
        // 0 이 아니면,
        origin = [[XYPoint alloc] init];
    origin.x = pt.x;
    origin.y = pt.y;
}

- (XYPoint *)origin {
    // 객체의 사본을 만들어서 반환.
    XYPoint *theOrigin = [[XYPoint alloc] init];
    theOrigin.x = origin.x;
    theOrigin.y = origin.y;
    
    return theOrigin;
}

- (void)setWidth:(int)w andHeight:(int)h {
    width = w;
    height = h;
}

- (int)area {
    return width * height;
}

- (int)perimeter {
    return (width + height) * 2;
}
@end
