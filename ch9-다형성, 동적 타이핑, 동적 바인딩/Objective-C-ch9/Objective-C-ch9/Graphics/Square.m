//
//  Square.m
//  Objective-C-ch9
//
//  Created by kimhyungyu on 2022/07/15.
//

#import "Square.h"

@implementation Square: Rectangle

- (void)setSide:(int)s {
    [self setWidth:s andHeight:s];
}

- (int)side {
    return self.width;
}

@end
