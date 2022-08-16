//
//  Square.m
//  Objective-C-ch11
//
//  Created by kimhyungyu on 2022/08/16.
//

#import "Square.h"

@implementation Square

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
