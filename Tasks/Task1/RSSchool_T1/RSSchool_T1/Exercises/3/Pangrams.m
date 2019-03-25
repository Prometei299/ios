#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {

    NSString *lowerStr = [string lowercaseString];
    NSUInteger length = [lowerStr length];
    unichar buffer[length + 1];
    int count = 0;
    NSMutableArray *arrayLetters = @[@'q',@'w', @'e', @'r', @'t', @'y',@'u',@'i', @'o', @'p', @'a', @'s',@'d',@'f', @'g', @'h', @'j', @'k', @'l',@'z', @'x', @'c', @'v', @'b', @'n',@'m'];

    [lowerStr getCharacters:buffer range:NSMakeRange(0, length)];

    for (int i = 0; i < arrayLetters.count; i++) {
      char val = [[arrayLetters objectAtIndex:i] charValue];
      for (int j = 0; j < length; j++) {
        if (buffer[j] == val) {
          count++;
          break;
        }
      }
    }
  
    if (count >= 26) {
      return YES;
    } else {
      return NO;
    }
  
    return NO;
}

@end
