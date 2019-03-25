#import "Encryption.h"

@implementation Encryption

// Complete the encryption function below.
- (NSString *)encryption:(NSString *)string {
  
  NSString *stringWithoutSpaces = [[string componentsSeparatedByString:@" "] componentsJoinedByString:@""];

  double tempLength = sqrt([stringWithoutSpaces length]);
  int rows = (int)floor(tempLength);
  int columns = (int)ceil(tempLength);

  if (rows *columns < [stringWithoutSpaces length]) {
    if(rows < columns){
      rows++;
    }
    else{
      columns++;
    }
  }

  NSMutableArray *encrypt = [[NSMutableArray alloc] initWithCapacity:rows];

  for (int i = 0; i < rows; i++) {
    
    NSUInteger range = columns;

    if (rows - 1 == i) {
      range = [stringWithoutSpaces length] - columns * i;
    }

    encrypt[i] = [[NSString alloc] initWithString:[stringWithoutSpaces substringWithRange:NSMakeRange(i * columns, range)]];
  }

  NSMutableString *result = [[NSMutableString alloc] initWithCapacity: [stringWithoutSpaces length] + rows];

  for (NSUInteger col = 0; col < columns; col++) {
    for (NSUInteger row = 0; row < rows; row++) {
      
      NSString *newRecRow = encrypt[row];

      if ([newRecRow length] > col) {
        [result appendString:[NSString stringWithFormat:@"%c", [newRecRow characterAtIndex:col]]];
      }
    }
    
    if (col != columns - 1){
      [result appendString:@" "];
    }
  }
  
  return result;
}

@end
