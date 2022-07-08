//
//  Square.m
//  Objective-C-ch8
//
//  Created by kimhyungyu on 2022/07/04.
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
