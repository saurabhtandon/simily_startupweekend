//
//  Node.m
//  Simily
//
//  Created by Chris Li on 3/7/15.
//  Copyright (c) 2015 Simily. All rights reserved.
//

#import "Node.h"


@implementation Node

- (id) init {
    if ( self = [super init] ) {
        [self setChildNodes:[[NSMutableArray alloc] initWithCapacity:5]];
    }
    return self;
}

+(Node *)createDefaultNodes {
    /*  L5  */
    Node *less500 = [[Node alloc] init];
    less500.question = nil;
    less500.selectedOption = @"< $500";

    Node *more500 = [[Node alloc] init];
    more500.question = nil;
    more500.selectedOption = @"I am rich!";

    Node *yes = [[Node alloc] init];
    yes.question = nil;
    yes.selectedOption = @"Yes";

    Node *no = [[Node alloc] init];
    no.question = nil;
    no.selectedOption = @"No";


    /*   L4  */
    Node *less1000 = [[Node alloc] init];
    less1000.question = nil;
    less1000.selectedOption = @"< $1000";

    Node *more1000 = [[Node alloc] init];
    more1000.question = nil;
    more1000.selectedOption = @">$1000";

    Node *yesTravel = [[Node alloc] init];
    yesTravel.question = @"Do you need a touchscreen?";
    yesTravel.selectedOption = @"Yes";
    [yesTravel.childNodes addObject: no];
    [yesTravel.childNodes addObject: yes];

    Node *noTravel = [[Node alloc] init];
    noTravel.question = @"What's your budget?";
    noTravel.selectedOption = @"No";
    [noTravel.childNodes addObject: less500];
    [noTravel.childNodes addObject: more500];

    Node *yes_admin = [[Node alloc] init];
    yes_admin.question = nil;
    yes_admin.selectedOption = @"Yes";

    Node *no_admin = [[Node alloc] init];
    no_admin.question = nil;
    no_admin.selectedOption = @"No";

    Node *less2000 = [[Node alloc] init];
    less2000.question = nil;
    less2000.selectedOption = @"< $2000";

    Node *more2000 = [[Node alloc] init];
    more2000.question = nil;
    more2000.selectedOption = @">$2000";


    /*  L3  */
    Node *yesGamer = [[Node alloc] init];
    yesGamer.question = @"What's your bugdet?";
    yesGamer.selectedOption = @"Yes";
    [yesGamer.childNodes addObject: less1000];
    [yesGamer.childNodes addObject: more1000];

    Node *noGamer = [[Node alloc] init];
    noGamer.question = @"Do you need it for travel?";
    noGamer.selectedOption = @"No";
    [noGamer.childNodes addObject: noTravel];
    [noGamer.childNodes addObject: yesTravel];


    Node *powerUser = [[Node alloc] init];
    powerUser.question = @"What's your budget?";
    powerUser.selectedOption = @"Power User";
    [powerUser.childNodes addObject: less2000];
    [powerUser.childNodes addObject: more2000];

    Node *adminUser = [[Node alloc] init];
    adminUser.question = @"Do you need Admin software?";
    adminUser.selectedOption = @"Admin User";
    [adminUser.childNodes addObject: no_admin];
    [adminUser.childNodes addObject: yes_admin];


    /*  L2  */
    Node *work = [[Node alloc] init];
    work.question = @"What is your type of work?";
    work.selectedOption = @"Work";
    [work.childNodes addObject: powerUser];
    [work.childNodes addObject: adminUser];

    Node *personal = [[Node alloc] init];
    personal.question = @"Will you play PC games?";
    personal.selectedOption = @"Personal";
    [personal.childNodes addObject: noGamer];
    [personal.childNodes addObject: yesGamer];


    /*  L1  */
    Node *PC = [[Node alloc] init];
    PC.question = @"What's your primary usage?";
    PC.selectedOption = @"PC";
    [PC.childNodes addObject: work];
    [PC.childNodes addObject: personal];

    Node *mac = [[Node alloc] init];
    mac.question = nil;
    mac.selectedOption = @"MAC";


    /*  L0  */
    Node *windowsMac = [[Node alloc] init];
    windowsMac.question = @"PC Or Mac?";
    [windowsMac.childNodes addObject: PC];
    [windowsMac.childNodes addObject: mac];

    return windowsMac;
}

@end

