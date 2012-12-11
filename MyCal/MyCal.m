//
//  MyCal.m
//  MyCal
//
//  Created by AA AA on 12/12/11.
//  Copyright (c) 2012年 AA AA. All rights reserved.
//

#import "MyCal.h"

@implementation MyCal

@synthesize year,month;

-(id)init{
  
  if(self =[super init]){
    
    NSDate *today = [NSDate date];
    
    
    cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    unsigned int unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit ;
    NSDateComponents *comps = [cal components:unitFlags fromDate:today];
    
    year = [comps year];
    month =[comps month];
    
    
    
  }
  return self;
  
}

-(NSString *) calStr{
  
  int column = 1;
  NSMutableString *calStr = [NSMutableString stringWithCapacity:40];
  [calStr appendString:@"\n Su Mo Tu We Th Fr Sa\n"];
  
  for (int i=1;i<[self firstDay]; i++) {
    [calStr appendString:@"   "];
    column++;
  }
  
  
  NSString *day;
  
  for(int i=1;i<=[self daysOfMonth:month inYear:year];i++){
    
    if(i<10){
      day=[NSString stringWithFormat:@"  %d",i];
      
    }else{
      day=[NSString stringWithFormat:@" %d",i];
    }
    
    [calStr appendString:day];
    
    if(column ==7) {
      [calStr appendString:@"\n"];
      column =0;
    }
    column++;
  }
  return calStr;
}


-(int)firstDay{
  
  
  NSDateComponents *comps =[NSDateComponents new];
  
  [comps setDay:1];
  [comps setMonth:month];
  [comps setYear:year];
  
  NSDate *theDay =[cal dateFromComponents:comps];
  
  
  NSDateComponents *weekdayComps =[cal components:NSWeekdayCalendarUnit fromDate:theDay];
  return [weekdayComps weekday];
  
  
}

- (int) daysOfMonth:(int)m inYear:(int)y{
  
  NSDateComponents *theDay= [NSDateComponents new];
  
  [theDay setYear:year];
  [theDay setMonth:month+1];
  [theDay setDay:0];
  
  NSDate *date = [cal dateFromComponents:theDay];
  
  return ([[cal components:NSDayCalendarUnit fromDate:date] day]);
  
  
  
  
  
  
  
}


@end
