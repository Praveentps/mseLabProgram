#import "PhoneBook.h"
#import "Phone.h"

@implementation PhoneBook

/*-(id)init
{
	return self;
}

-(PhoneBook*)initWithObject
{
	//self = [super init];
	//if(self)
	//{
	arr = [[NSMutableArray alloc]init];
	//}
	return self;
}
*/

-(void)initial
{

	arr = [[NSMutableArray alloc]init];
Nb = [[NSMutableArray alloc]init];
}	
	
-(void)addEntry:(id)obj
{
	NSLog(@"Adding\n");
	[arr addObject:obj];
}

-(void)delEntry:(id)obj
{
	if(arr!=nil)
	{
		[arr removeObject:obj];
	}
	else
	{
		NSLog(@"The Phone Book is empty. Nothing to delete\n");
	}
}

-(void)listAll
{
	NSLog(@"The entries in the phone book are:\n");
	for(Phone *obj in arr)
	{
		[obj print];
	}
}

-(int)countAll
{
	int count = 0;
	for(Phone *obj in arr)
	{
		count += 1;
	}
	return count;
}

-(void)searchWithName:(NSString *)nm
{
	int flag = 0;
	for(Phone *obj in arr)
	{
		if([obj.name caseInsensitiveCompare:nm] == NSOrderedSame)
		{
			flag = 1;
			NSLog(@"The entry for %@ exists\n", nm);  
			[obj print];
		}
	}
	if(flag == 0)
	{
		NSLog(@"The entry for %@ doesnt exists\n", nm);  
	}	
}


-(id)initWithName:(NSString*)name
{
	self=[super init];
	if(self)
	{
		Nb=[[NSString alloc]initWithString:name];
		Na=[[NSMutableArray alloc]init];
	}
	return self;
}

@end
