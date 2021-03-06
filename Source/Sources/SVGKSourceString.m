#import "SVGKSourceString.h"

@implementation SVGKSourceString

+ (SVGKSource*)sourceFromContentsOfString:(NSString*)rawString {
	NSInputStream* stream = [NSInputStream inputStreamWithData:[rawString dataUsingEncoding:NSUTF8StringEncoding]];
	[stream open];
	
	SVGKSource* s = [[SVGKSource alloc] initWithInputSteam:stream];
	
	return s;
}

@end
