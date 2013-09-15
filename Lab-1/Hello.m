#import "Hello.h"
@implementation Hello 

-addStringValue:(const char *)astring
{
	strcat(BUFF,astring);
	return 0;
}

-print
{
	printf("%s\n", BUFF);
	return 0;
}

@end		