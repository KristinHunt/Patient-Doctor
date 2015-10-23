//
//  Patient.m
//  Patient Doctor
//
//  Created by Kristin Hunt on 10/22/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import "Patient.h"

@implementation Patient


- (instancetype)initWithName:(NSString *)name age:(int)age symptoms:(NSString *)symptoms validIdCard:(BOOL)validIdCard {
  
  self = [super init];
  if (self) {
    _name = name;
    _age = age;
    _symptoms = symptoms;
    _validIdCard = validIdCard;
  }
  return self;
}

-(BOOL)HaveValidId {
  if (self.validIdCard == YES) {
    return YES;
  } else {
    return NO;
  }
}

//-(instancetype)init {
//  _name = @"Joe";
//  _age = 40;
//  _symptoms = @"cough";
////_requestMeds =
//
//  return self;
//}


@end
