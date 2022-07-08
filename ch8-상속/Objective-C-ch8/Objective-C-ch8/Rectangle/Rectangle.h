//
//  Rectangle.h
//  Objective-C-ch8
//
//  Created by kimhyungyu on 2022/07/03.
//

#import <Foundation/Foundation.h>
// @class가 제공하는 정보보다 많은 정보가 필요하기 때문에.
#import "../XYPoint/XYPoint.h"

// import 와 동일하게 컴파일러에게 무슨 클래스인지 알려준다.
//@class XYPoint;

@interface Rectangle: NSObject

@property int width, height;

- (XYPoint *)origin;
- (void)setOrigin:(XYPoint *)pt;
- (int)area;
- (int)perimeter;
- (void)setWidth:(int)w andHeight:(int)h;
@end
