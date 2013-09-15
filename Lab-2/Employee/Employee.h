#import<Foundation/Foundation.h>
@interface Employee:NSObject
{
	NSString *name;
	NSString *dept;
	int eid;
}
@property int eid;
@property (assign) NSString* name;
@property (assign) NSString* dept;

-(void) setName:(NSString*)n;	
-(void) setDept:(NSString*)d;
-(void) setEid:(int)e;
-(NSString *) getName;
-(NSString *) getDept;
-(int)getEid;
@end