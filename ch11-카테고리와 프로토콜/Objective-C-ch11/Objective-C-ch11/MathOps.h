//
//  MathOps.h
//  Objective-C-ch11
//
//  Created by kimhyungyu on 2022/08/11.
//

#import "Fraction.h"

// 이미 존재하는 Fraction interface 를 확장하는 것이기 때문에 (Fraction.h 헤더파일에 카테고리를 추가하지 않는 한) 원래 인터페이스를 추가해야 컴파일러가 Fraction 클래스를 이해할 수 있다.
// Fraction 클래스의 새 카테고리로 MathOps 를 정의.
@interface Fraction (MathOps)

- (Fraction *)add:(Fraction *)f;
- (Fraction *)mul:(Fraction *)f;
- (Fraction *)sub:(Fraction *)f;
- (Fraction *)div:(Fraction *)f;

@end
