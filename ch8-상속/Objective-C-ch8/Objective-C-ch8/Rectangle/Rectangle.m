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
    origin = pt;
}

- (XYPoint *)origin {
    return origin;
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
