//
//  main.m
//  MyCal
//
//  Created by AA AA on 12/12/11.
//  Copyright (c) 2012年 AA AA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyCal.h"


int main(int argc, const char * argv[])
{

  @autoreleasepool {

    MyCal *myCal =[MyCal new];
    NSString *str = [myCal calStr];
    
    NSLog(@"year:%d month:%d",myCal.year,myCal.month);
    NSLog(@"%@",str);
    
    
    
    //2008/02
    myCal.year  =2008;
    myCal.month =2;
    str =myCal.calStr;
    
    
    NSLog(@"year:%d month:%d",myCal.year,myCal.month);
    NSLog(@"%@",str);
    
    // insert code here...
    NSLog(@"Hello, World!");
      
  }
    return 0;
}

