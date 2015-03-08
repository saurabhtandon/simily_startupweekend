//
//  Node.h
//  Simily
//
//  Created by Chris Li on 3/7/15.
//  Copyright (c) 2015 Simily. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
@property (nonatomic) NSString *selectedOption;
@property (nonatomic) NSString *question;
@property (nonatomic) NSMutableArray *childNodes;

+(Node*)createDefaultNodes;

@end