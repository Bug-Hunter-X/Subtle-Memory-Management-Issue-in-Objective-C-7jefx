Using ARC (Automatic Reference Counting) is the recommended solution.  If you're not using ARC, you need to carefully manage the memory yourself.  In this example, the proper solution is to use `strong` and allow ARC to handle memory management:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, strong) NSString *myString; // Use strong instead of retain
@end

@implementation MyClass
// dealloc is no longer needed when using ARC
@end

// ... in some other method ...
MyClass *myObject = [[MyClass alloc] init];
myObject.myString = [[NSString alloc] initWithString:@