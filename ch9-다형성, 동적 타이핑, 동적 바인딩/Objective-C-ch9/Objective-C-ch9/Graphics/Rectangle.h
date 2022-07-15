//
//  Rectangle.h
//  Objective-C-ch9
//
//  Created by kimhyungyu on 2022/07/15.
//

#import "XYPoint.h"

@interface Rectangle: NSObject

@property int width, height;

- (XYPoint *)origin;
- (void)setOrigin:(XYPoint *)pt;
- (int)area;
- (int)perimeter;
- (void)setWidth:(int)w andHeight:(int)h;

@end
