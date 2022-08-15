//
//  Rectangle.h
//  Objective-C-ch11
//
//  Created by kimhyungyu on 2022/08/15.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle: NSObject

@property int width, height;

- (XYPoint *)origin;
- (void)setOrigin:(XYPoint *)pt;
- (int)area;
- (int)perimeter;
- (void)setWidth:(int)w andHeight:(int)h;
@end
