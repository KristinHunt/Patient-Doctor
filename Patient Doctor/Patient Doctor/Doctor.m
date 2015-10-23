//
//  Doctor.m
//  Patient Doctor
//
//  Created by Kristin Hunt on 10/22/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@interface Doctor ()

@property (nonatomic) NSMutableArray *listOfPatients;

@end

@implementation Doctor


- (instancetype)initWithDocName:(NSString *)docName specialty:(NSString *)specialty canAcceptPatient:(BOOL)canAcceptPatient
{
  self = [super init];
  if (self) {
    _docName = docName;
    _specialty = specialty;
    _canAcceptPatient = canAcceptPatient;
    _listOfPatients = [NSMutableArray array];
  }
  return self;
}

- (void)acceptPatient:(Patient *)patient {
  if ([patient HaveValidId] && self.canAcceptPatient) {
    [self.listOfPatients addObject:patient];
    NSLog(@"%@: Yes, I'll accept you %@", self.docName, patient.name);
  } else {
    NSLog(@"%@: Get outta here %@!", self.docName, patient.name);
  }
}

- (NSString*)requestMeds:(Patient *)patient {
  
  BOOL canBeTreated = [self.listOfPatients containsObject:patient];
  if (canBeTreated) {
    if ([patient.symptoms isEqualToString:@"cough"]) {
      NSString *drops = @"drops";
      [self.patientRecords setObject:drops forKey:patient.name];
      return drops;
    }
    else if ([patient.symptoms isEqualToString:@"ebola"]) {
      NSString *quarantine = @"quarantine";
      [self.patientRecords setObject:quarantine forKey:patient.name];
      return quarantine;
    }
    else {
      NSLog(@"You're not my patient");
      return nil;
    }
  }
  
  return nil;
}


//-(instancetype)initWithRequestMeds:(NSString *)requestMeds {
//  self = [super init];
//  if (self) {
//    _requestMeds = requestMeds;
//  }
//  return self;
//}

//-(instancetype)init{
//  _specialty = @"Sports Medicine";
//  _docName = @"Dr. Smith";
//  
//  return self;
//}

   // NSMutableArray *listOfPatients = [[NSMutableArray alloc] init];


@end
