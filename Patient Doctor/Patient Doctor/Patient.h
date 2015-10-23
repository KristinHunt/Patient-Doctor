//
//  Patient.h
//  Patient Doctor
//
//  Created by Kristin Hunt on 10/22/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

//@property (nonatomic) NSString *docName;
//@property (nonatomic) NSString *specialty;
//@property (nonatomic) NSString *requestMeds;

@property (nonatomic) NSString *name;
@property (nonatomic) int age;
@property (nonatomic) NSString *symptoms;
@property (assign) BOOL validIdCard;



- (instancetype)initWithName:(NSString *)name age:(int)age symptoms:(NSString *)symptoms validIdCard:(BOOL)validIdCard;
-(BOOL)HaveValidId;

@end
