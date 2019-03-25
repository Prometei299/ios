#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
  
    NSArray *arr = [NSArray array];
    int sumFirstDiagonal = 0;
    int sumSecondDiagonal = 0;
    int k = 0;
    int j = array.count - 1;
    NSNumber *rez;
  
    for (int i = 0; i < array.count; i++) {
      NSString *str = array[i];
      arr = [str componentsSeparatedByString:@" "];
      NSInteger val = [[arr objectAtIndex: k] integerValue];
      sumFirstDiagonal += val;
      k++;
      
      NSInteger valNext = [[arr objectAtIndex: j] integerValue];
      sumSecondDiagonal += valNext;
      j--;
    }

    int rezult = abs(sumFirstDiagonal - sumSecondDiagonal);
  
    rez = [NSNumber numberWithInt: rezult];
  
    return rez;
}

@end
