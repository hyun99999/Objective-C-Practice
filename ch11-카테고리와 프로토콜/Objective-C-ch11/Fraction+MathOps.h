//
//  Fraction+MathOps.h
//  Objective-C-ch11
//
//  Created by kimhyungyu on 2022/08/11.
//

#import "Fraction.h"

NS_ASSUME_NONNULL_BEGIN

@interface Fraction (MathOps)

- (Fraction *)add:(Fraction *)f;
- (Fraction *)mul:(Fraction *)f;
- (Fraction *)sub:(Fraction *)f;
- (Fraction *)div:(Fraction *)f;

@end
NS_ASSUME_NONNULL_END
