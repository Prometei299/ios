#import "SummArray.h"

@implementation SummArray

// Complete the summArray function below.
- (NSNumber *)summArray:(NSArray *)array {
  
    int sum = 0;
    NSNumber *rez;
  
    for (int i = 0; i < array.count; i++) {
      NSInteger val = [[array objectAtIndex: i] integerValue];
      sum = sum + val;
    }
  
    rez = [NSNumber numberWithInt: sum];
  
    return rez;
}

@end
