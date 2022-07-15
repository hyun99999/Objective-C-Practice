//
//  Complex.h
//  Objective-C-ch9
//
//  Created by kimhyungyu on 2022/07/15.
//

#import <Foundation/Foundation.h>

// MARK: -  Complex

@interface Complex : NSObject

@property double real, imaginary;
- (void)print;
- (void)setReal:(double)a andImaginary:(double)b;
- (Complex *)add:(Complex *)f;

@end
