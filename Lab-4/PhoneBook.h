#import<Foundation/Foundation.h>

@interface PhoneBook: NSObject
{
	NSMutableArray *Nb;
		NSMutableArray *arr;
NSString *Na;
	
}

//-(id)init;

//-(PhoneBook*)initWithObject;

-(void)initial;

-(void)addEntry:(id)obj;

-(void)delEntry:(id)obj;

-(void)listAll;

-(int)countAll;

-(void)searchWithName:(NSString *)nm;



-(id)initWithName:(NSString*)name;
-(id)initWithName:(NSString*)email;
-(id)initWithString:(NSString*)number;
-(id)init;


@end	
