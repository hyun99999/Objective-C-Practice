//
//  Rectangle.h
//  Objective-C-ch8
//
//  Created by kimhyungyu on 2022/07/03.
//

#import <Foundation/Foundation.h>
//#import "../XYPoint/XYPoint.h"

// import 와 동일하게 컴파일러에게 무슨 클래스인지 알려준다.
@class XYPoint;

@interface Rectangle: NSObject

@property int width, height;

- (XYPoint *)origin;
- (void)setOrigin:(XYPoint *)pt;
- (int)area;
- (int)perimeter;
- (void)setWidth:(int)w andHeight:(int)h;
@end
