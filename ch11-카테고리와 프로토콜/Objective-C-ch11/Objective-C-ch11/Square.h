//
//  Square.h
//  Objective-C-ch11
//
//  Created by kimhyungyu on 2022/08/16.
//

#import "Rectangle.h"

@interface Square : NSObject {
    Rectangle *rect;
}
- (void)setSide:(int)s;
- (int)side;
- (int)area;
- (int)perimeter;
@end
