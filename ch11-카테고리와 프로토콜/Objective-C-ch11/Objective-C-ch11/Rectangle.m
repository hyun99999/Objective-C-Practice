//
//  Rectangle.m
//  Objective-C-ch11
//
//  Created by kimhyungyu on 2022/08/15.
//

#import "Rectangle.h"

@implementation Rectangle {
    XYPoint *origin;
}

@synthesize width, height;

- (void)setOrigin:(XYPoint *)pt {
    if (!origin)
        origin = [[XYPoint alloc] init];
    origin.x = pt.x;
    origin.y = pt.y;
}

- (XYPoint *)origin {
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
