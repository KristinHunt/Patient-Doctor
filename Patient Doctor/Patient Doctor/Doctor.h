//
//  Doctor.h
//  Patient Doctor
//
//  Created by Kristin Hunt on 10/22/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject


@property (nonatomic) NSString *docName;
@property (nonatomic) NSString *specialty;
@property (nonatomic) NSString *requestMeds;
@property (nonatomic) NSMutableDictionary *patientRecords;

@property BOOL canAcceptPatient;

-(instancetype)initWithDocName:(NSString *)docName specialty:(NSString *)specialty canAcceptPatient:(BOOL)canAcceptPatient;

- (NSString*)requestMeds:(Patient *)patient;

- (void)acceptPatient:(Patient *)patient;


@end
