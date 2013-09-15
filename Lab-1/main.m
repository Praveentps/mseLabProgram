#import "Hello.h"

int main(int argc, const char* argv[])
{
	Hello *printer=[[Hello alloc]init];
	[printer addStringValue:"Hello World"];
	[printer print];
	[printer release];
	return 0;
}	
