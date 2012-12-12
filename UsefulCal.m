//
//  UsefulCal.m
//  MyCal
//
//  Created by AA AA on 12/12/12.
//  Copyright (c) 2012年 AA AA. All rights reserved.
//

#import "UsefulCal.h"

@implementation UsefulCal


-(void) nextMonth{
  
  
  if(month ==12){
    month = 1;
    year++;
    
  }else{
    month++;
  }
  
}

-(void)prevMonth{
  
  if(month == 1){
    
    month = 12;
    year--;
    
  }else{
    month--;
    
  }
  
  
}

@end
