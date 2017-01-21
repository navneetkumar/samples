//
//  FailedBankInfo.h
//  FailedBankCD
//
//  Created by Navneet Kumar on 11/06/15.
//  Copyright (c) 2015 Adam Burkepile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "FailedBankAbstract.h"


@interface FailedBankInfo : FailedBankAbstract

@property (nonatomic, retain) NSString * city;

@end
