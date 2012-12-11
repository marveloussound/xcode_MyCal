//
//  MyCal.h
//  MyCal
//
//  Created by AA AA on 12/12/11.
//  Copyright (c) 2012年 AA AA. All rights reserved.
//

  //#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface MyCal : NSObject{
  NSCalendar *cal;
  int year;
  int month;  
  
}

@property int year;
@property int month;

-(id) init;
-(NSString *) calStr;
-(int) firstDay;
-(int) daysOfMonth :(int)m inYear:(int)y;


@end
