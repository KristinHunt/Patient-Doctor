//
//  main.m
//  Patient Doctor
//
//  Created by Kristin Hunt on 10/22/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    Doctor *doctor = [[Doctor alloc] initWithDocName:@"Doctor Smith" specialty:@"Sports Med" canAcceptPatient:YES];

    Doctor *doctor2 = [[Doctor alloc] initWithDocName:@"Doctor Jones" specialty:@"Enternal Med" canAcceptPatient:YES];
    
    NSMutableDictionary *patientRecords = [[NSMutableDictionary alloc]init];
    doctor.patientRecords = patientRecords;
    doctor2.patientRecords = patientRecords;
    
    NSLog(@"Hello, I'm %@", doctor.docName);
    
    Patient *patient1 = [[Patient alloc] initWithName:@"Joe" age:49 symptoms:@"cough" validIdCard:YES];
    
    NSLog(@"Hello, I'm %@", patient1.name);
    
    Patient *patient2 = [[Patient alloc] initWithName:@"Susan" age:32 symptoms:@"stomach ache" validIdCard:YES];
    NSLog(@"Hi, I'm %@", patient2.name);
    
    [doctor acceptPatient:patient1];
    [doctor acceptPatient:patient2];
  
    [doctor requestMeds:patient1];
    
    
    
//    [patient1 validIdCard];
//    NSLog(@"Do you have a valid ID?", patient1.validIdCard);

    
    
  }
    return 0;
}
