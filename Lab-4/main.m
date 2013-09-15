#import<Foundation/Foundation.h>
#import "Phone.h"
#import "PhoneBook.h"

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	Phone *p1 = [[Phone alloc] init];
	Phone *p2 = [[Phone alloc] init];
	Phone *p3 = [[Phone alloc] init];
	
	PhoneBook *book = [[PhoneBook alloc]init];
	[book initial];
	[p1 setName:@"praveen"];
	[p1 setEmail:@"praveen@gmail.com"];
	[p1 setNum:992323121];
	
	[p2 setName:@"yuvi"];
	[p2 setEmail:@"yuvi@gmail.com"];
	[p2 setNum:123456];
	
	[p3 setName:@"singh"];
	[p3 setEmail:@"singh@gmail.com"];
	[p3 setNum:4356363363];
	//PhoneBook *mybook =[[PhoneBook alloc]initWithName:@"praveen's  address book"];
	//NSLog(@"Enteries %i ",[mybook addEntry]);
	
	[book addEntry:p1];
	[book addEntry:p2];
	[book addEntry:p3];
	
	
	
	//remove
	[book delEntry:p2];
	
	//list all
	[book listAll];
	
	//count
	NSLog(@"Number of Entries: %d\n", [book countAll]);
	
	//Compare
	[book searchWithName:@"praveen"];
	
	[pool release];
	
	return 0;
}
