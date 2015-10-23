//
//  Prescriptions.m
//  Patient Doctor
//
//  Created by Kristin Hunt on 10/22/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import "Prescriptions.h"

@implementation Prescriptions

- (instancetype)initWithDocName:(NSString *)docName specialty:(NSString *)specialty canAcceptPatient:(BOOL)canAcceptPatient
{
  self = [super init];
  if (self) {
    _perscriptions = [NSMutableArray array];
  }
  return self;
}


@end
