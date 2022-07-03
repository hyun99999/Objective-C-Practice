//
//  Rectangle.h
//  Objective-C-ch8
//
//  Created by kimhyungyu on 2022/07/03.
//

#import <Foundation/Foundation.h>

@interface Rectangle: NSObject

@property int width, height;
- (int)area;
- (int)perimeter;
- (void)setWidth:(int)w andHeight:(int)h;
@end
