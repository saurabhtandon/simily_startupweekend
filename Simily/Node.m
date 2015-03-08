//
//  Node.m
//  Simily
//
//  Created by Chris Li on 3/7/15.
//  Copyright (c) 2015 Simily. All rights reserved.
//

#import "Node.h"

@implementation Product
-(NSString *)displayPrice {
    NSInteger price = self.price.integerValue;
    int dollars = price / 100;
    int cents = price % 100;

    return [NSString stringWithFormat:@"$%d.%d", dollars, cents];
}
@end

@implementation Node

- (id) init {
    if ( self = [super init] ) {
        [self setChildNodes:[[NSMutableArray alloc] initWithCapacity:5]];
        [self setProducts:[[NSMutableArray alloc] init]];
    }
    return self;
}

+(Node *)createDefaultNodes {
    /* mackbook */
    Product *macbook = [[Product alloc] init];
    macbook.title = @"MacBook Pro MGX72LL/A 13.3-Inch Laptop with Retina Display";
    macbook.brand = @"Apple";
    macbook.price = @120099;
    macbook.like = YES;
    macbook.endorsements = 5;
    macbook.image = @"http://ecx.images-amazon.com/images/I/41T8syQSr9L._AA200_.jpg";

    Product *macbookAir = [[Product alloc] init];
    macbookAir.title = @"Apple MacBook Air MD760LL/B 13.3-Inch Laptop NEWEST VERSION";
    macbookAir.brand = @"Apple";
    macbookAir.price = @92049;
    macbookAir.like = YES;
    macbookAir.endorsements = 9;
    macbookAir.image = @"http://ecx.images-amazon.com/images/I/51gy9VdYCeL._SX466_.jpg";

    /* traveler + touch */
    Product *acerTouchUltrabook = [[Product alloc] init];
    acerTouchUltrabook.title = @"Acer 15.6\" Aspire Touchscreen Ultrabook Laptop i5-4210U";
    acerTouchUltrabook.brand = @"Acer";
    acerTouchUltrabook.price = @50100;
    acerTouchUltrabook.like = NO;
    acerTouchUltrabook.endorsements = 0;
    acerTouchUltrabook.image = @"http://ecx.images-amazon.com/images/I/31qXXEkzMnL.jpg";

    Product *asusTouchTransformer = [[Product alloc] init];
    asusTouchTransformer.title = @"ASUS Transformer Book 10.1 Detachable 2-in-1 Touchscreen Laptop";
    asusTouchTransformer.brand = @"ASUS";
    asusTouchTransformer.price = @25900;
    asusTouchTransformer.like = YES;
    asusTouchTransformer.endorsements = 14;
    asusTouchTransformer.image = @"http://ecx.images-amazon.com/images/I/91hr23mzCkL._SL1500_.jpg";

    /* traveler + no touch*/
    Product *vizioUltrabook = [[Product alloc] init];
    vizioUltrabook.title = @"VIZIO CT14-A4 14-Inch Thin + Light Ultrabook";
    vizioUltrabook.brand = @"VIZIO";
    vizioUltrabook.price = @64480;
    vizioUltrabook.like = NO;
    vizioUltrabook.endorsements = 1;
    vizioUltrabook.image = @"http://ecx.images-amazon.com/images/I/81axvZ%2BmByL._SL1500_.jpg";

    Product *dellUltrabook = [[Product alloc] init];
    dellUltrabook.title = @"Dell XPS13 Ultrabook Computer";
    dellUltrabook.brand = @"Dell";
    dellUltrabook.price = @96495;
    dellUltrabook.like = YES;
    dellUltrabook.endorsements = 2;
    dellUltrabook.image = @"http://ecx.images-amazon.com/images/I/51vQxoCGyuL.jpg";

    /* no travel + <500*/
    Product *toshibaSatellite = [[Product alloc] init];
    toshibaSatellite.title = @"Toshiba Satellite C75D-B7304 17.3\" Laptop PC";
    toshibaSatellite.brand = @"Toshiba";
    toshibaSatellite.price = @38999;
    toshibaSatellite.like = YES;
    toshibaSatellite.endorsements = 4;
    toshibaSatellite.image = @"http://ecx.images-amazon.com/images/I/317hEb3QBkL.jpg";

    Product *asusTouchConvertible = [[Product alloc] init];
    asusTouchConvertible.title = @"ASUS Flip 15.6-Inch 2-in-1 Convertible Touchscreen Laptop";
    asusTouchConvertible.brand = @"ASUS";
    asusTouchConvertible.price = @40499;
    asusTouchConvertible.like = NO;
    asusTouchConvertible.endorsements = 7;
    asusTouchConvertible.image = @"http://ecx.images-amazon.com/images/I/41gQRHhLrxL.jpg";

    Product *hpTouchSmart = [[Product alloc] init];
    hpTouchSmart.title = @"HP Touchsmart 15-f010dx 15.6\" Touch Screen Laptop";
    hpTouchSmart.brand = @"HP";
    hpTouchSmart.price = @37799;
    hpTouchSmart.like = NO;
    hpTouchSmart.endorsements = 0;
    hpTouchSmart.image = @"http://ecx.images-amazon.com/images/I/419D3D9aeqL.jpg";

    /* no travel + >500*/
    Product *dell17 = [[Product alloc] init];
    dell17.title = @"Dell Inspiron 17 5000 Series Laptop i5749-3333SLV";
    dell17.brand = @"Dell";
    dell17.price = @75253;
    dell17.like = NO;
    dell17.endorsements = 8;
    dell17.image = @"http://ecx.images-amazon.com/images/I/71RNjimiH7L._SL1500_.jpg";

    Product *asus17 = [[Product alloc] init];
    asus17.title = @"ASUS K751MA-DS21TQ 17.3-Inch Pentium Touchscreen Laptop";
    asus17.brand = @"ASUS";
    asus17.price = @59900;
    asus17.like = NO;
    asus17.endorsements = 4;
    asus17.image = @"http://ecx.images-amazon.com/images/I/91x6%2B0KIlgL._SL1500_.jpg";

    Product *dellTouch = [[Product alloc] init];
    dellTouch.title = @"Dell Inspiron 15 5000 Series i5547 15-Inch Laptop";
    dellTouch.brand = @"Dell";
    dellTouch.price = @58888;
    dellTouch.like = YES;
    dellTouch.endorsements = 2;
    dellTouch.image = @"http://ecx.images-amazon.com/images/I/41UKd2K-vdL.jpg";


    /* gaming >1000 */
    Product *alienware15 = [[Product alloc] init];
    alienware15.title = @"Alienware 15 ANW15-1421SLV 15.6-Inch Gaming Laptop";
    alienware15.brand = @"Alienware";
    alienware15.price = @116299;
    alienware15.like = NO;
    alienware15.endorsements = 12;
    alienware15.image = @"http://ecx.images-amazon.com/images/I/31KQ98LQlVL.jpg";

    Product *alienware17 = [[Product alloc] init];
    alienware17.title = @"Alienware 13 ANW13-7275SLV 13-Inch Gaming Laptop";
    alienware17.brand = @"Alienware";
    alienware17.price = @179999;
    alienware17.like = NO;
    alienware17.endorsements = 4;
    alienware17.image = @"http://ecx.images-amazon.com/images/I/31HnRED47ZL.jpg";

    Product *razor = [[Product alloc] init];
    razor.title = @"Razer Blade 14\" QHD+ Touchscreen Gaming Laptop";
    razor.brand = @"Razer";
    razor.price = @189999;
    razor.like = YES;
    razor.endorsements = 7;
    razor.image = @"http://ecx.images-amazon.com/images/I/71lkzMdvGeL._SL1500_.jpg";

    /*  gaming <1000 */
    Product *msi = [[Product alloc] init];
    msi.title = @"MSI GP60 GP60 LEOPARD-472 15.6-Inch Laptop";
    msi.brand = @"MSI";
    msi.price = @79900;
    msi.like = NO;
    msi.endorsements = 12;
    msi.image = @"http://ecx.images-amazon.com/images/I/41pMloBneGL.jpg";

    /* Admin with software */
    Product *hpElitebook = [[Product alloc] init];
    hpElitebook.title = @"HP - EliteBook Folio 1040 G1 14\" Laptop";
    hpElitebook.brand = @"HP";
    hpElitebook.price = @170199;
    hpElitebook.like = NO;
    hpElitebook.endorsements = 23;
    hpElitebook.image = @"http://pisces.bbystatic.com/image2/BestBuy_US/images/mp/products/1309/1309532/1309532391/1309532391_500x500cv11a.jpg;canvasHeight=500;canvasWidth=500";

    Product *hpElitebook2 = [[Product alloc] init];
    hpElitebook2.title = @"HP - EliteBook 850 G1 15.6\" Laptop";
    hpElitebook2.brand = @"MSI";
    hpElitebook2.price = @141499;
    hpElitebook2.like = NO;
    hpElitebook2.endorsements = 2;
    hpElitebook2.image = @"http://pisces.bbystatic.com/image2/BestBuy_US/images/products/3166/3166038_sa.jpg;canvasHeight=500;canvasWidth=500";

    /* Admin no software */
    Product *dellbusiness1 = [[Product alloc] init];
    dellbusiness1.title = @"Latitude 14 3000 Series (3450)";
    dellbusiness1.brand = @"Dell";
    dellbusiness1.price = @44900;
    dellbusiness1.like = NO;
    dellbusiness1.endorsements = 4;
    dellbusiness1.image = @"http://i.dell.com/sites/imagecontent/products/PublishingImages/latitude-3450-laptop/notebook_latitude_14_3450_love_pdp_2.jpg";

    Product *dellbusiness2 = [[Product alloc] init];
    dellbusiness2.title = @"Latitude 12 7000 Series Ultrabook™ (E7240)";
    dellbusiness2.brand = @"Dell";
    dellbusiness2.price = @109900;
    dellbusiness2.like = NO;
    dellbusiness2.endorsements = 14;
    dellbusiness2.image = @"http://i.dell.com/images/global/products/latit/latit_highlights/laptop-latitude-e7240-overview3-new.jpg";

    /* power >1200 */
    Product *workstation1 = [[Product alloc] init];
    workstation1.title = @"Dell Precision M6800 Mobile Workstation";
    workstation1.brand = @"Dell";
    workstation1.price = @271000;
    workstation1.like = NO;
    workstation1.endorsements = 32;
    workstation1.image = @"http://i.dell.com/images/global/products/precn/workstation_precision_highlights/precision-m6800-overview4.jpg";

    Product *workstation2 = [[Product alloc] init];
    workstation2.title = @"Dell Precision M3800 Mobile Workstation";
    workstation2.brand = @"Dell";
    workstation2.price = @173430;
    workstation2.like = YES;
    workstation2.endorsements = 23;
    workstation2.image = @"http://i.dell.com/sites/imagecontent/products/PublishingImages/precision-m3800-new/laptop-precision-m3800mlk-love-pdp-design-3.jpg";

    Product *dellRugged = [[Product alloc] init];
    dellRugged.title = @"Latitude 14 Rugged Notebook";
    dellRugged.brand = @"Dell";
    dellRugged.price = @159900;
    dellRugged.like = NO;
    dellRugged.endorsements = 22;
    dellRugged.image = @"http://i.dell.com/sites/imagecontent/products/PublishingImages/latitude-14-rugged/laptop-latitude-14-rugged-pdp-love-01.jpg";

    /* power <1200 */
    Product *dellPrecision = [[Product alloc] init];
    dellPrecision.title = @"Dell Precision M2800 Mobile Workstation";
    dellPrecision.brand = @"Dell";
    dellPrecision.price = @99900;
    dellPrecision.like = NO;
    dellPrecision.endorsements = 19;
    dellPrecision.image = @"http://i.dell.com/sites/imagecontent/business/large-business/PublishingImages/laptop-precision-m2800-pdp-love-1.jpg";

    Product *xps13 = [[Product alloc] init];
    xps13.title = @"XPS 13";
    xps13.brand = @"Dell";
    xps13.price = @89900;
    xps13.like = NO;
    xps13.endorsements = 22;
    xps13.image = @"http://i.dell.com/sites/imagecontent/products/PublishingImages/xps-13-9343-laptop/laptop-xps-13-love-pdp-design-7.jpg";

    Product *zbook = [[Product alloc] init];
    zbook.title = @"HP ZBook 14 Mobile Workstation";
    zbook.brand = @"HP";
    zbook.price = @119900;
    zbook.like = NO;
    zbook.endorsements = 8;
    zbook.image = @"http://www.www8-hp.com/us/en/images/zbook14_innovation_tcm_245_1484055.jpg";

    /**************************/

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

    Node *less1200 = [[Node alloc] init];
    less1200.question = nil;
    less1200.selectedOption = @"< $1200";

    Node *more1200 = [[Node alloc] init];
    more1200.question = nil;
    more1200.selectedOption = @">$1200";


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
    [powerUser.childNodes addObject: less1200];
    [powerUser.childNodes addObject: more1200];

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
    windowsMac.question = @"PC or Mac?";
    [windowsMac.childNodes addObject: PC];
    [windowsMac.childNodes addObject: mac];


    /**********************************************/

    /* All */
    [windowsMac.products addObject: macbook];
    [windowsMac.products addObject: macbookAir];
    [windowsMac.products addObject: acerTouchUltrabook];
    [windowsMac.products addObject: asusTouchConvertible];
    [windowsMac.products addObject: asusTouchTransformer];
    [windowsMac.products addObject: hpTouchSmart];
    [windowsMac.products addObject: dellTouch];
    [windowsMac.products addObject: dellUltrabook];
    [windowsMac.products addObject: vizioUltrabook];
    [windowsMac.products addObject: toshibaSatellite];
    [windowsMac.products addObject: dell17];
    [windowsMac.products addObject: asus17];
    [windowsMac.products addObject: alienware15];
    [windowsMac.products addObject: alienware17];
    [windowsMac.products addObject: razor];
    [windowsMac.products addObject: msi];
    [windowsMac.products addObject: hpElitebook];
    [windowsMac.products addObject: hpElitebook2];
    [windowsMac.products addObject: dellRugged];
    [windowsMac.products addObject: dellbusiness1];
    [windowsMac.products addObject: dellbusiness2];
    [windowsMac.products addObject: workstation1];
    [windowsMac.products addObject: workstation2];
    [windowsMac.products addObject: xps13];
    [windowsMac.products addObject: dellPrecision];
    [windowsMac.products addObject: zbook];

    /* mac */
    [mac.products addObject: macbook];
    [mac.products addObject: macbookAir];

    /* PC */
    [PC.products addObject: acerTouchUltrabook];
    [PC.products addObject: asusTouchConvertible];
    [PC.products addObject: asusTouchTransformer];
    [PC.products addObject: hpTouchSmart];
    [PC.products addObject: dellTouch];
    [PC.products addObject: dellUltrabook];
    [PC.products addObject: vizioUltrabook];
    [PC.products addObject: toshibaSatellite];
    [PC.products addObject: dell17];
    [PC.products addObject: asus17];
    [PC.products addObject: alienware15];
    [PC.products addObject: alienware17];
    [PC.products addObject: razor];
    [PC.products addObject: msi];
    [PC.products addObject: hpElitebook];
    [PC.products addObject: hpElitebook2];
    [PC.products addObject: dellRugged];
    [PC.products addObject: dellbusiness1];
    [PC.products addObject: dellbusiness2];
    [PC.products addObject: workstation1];
    [PC.products addObject: workstation2];
    [PC.products addObject: xps13];
    [PC.products addObject: dellPrecision];
    [PC.products addObject: zbook];

    /* work */
    [work.products addObject: hpElitebook];
    [work.products addObject: hpElitebook2];
    [work.products addObject: dellRugged];
    [work.products addObject: dellbusiness1];
    [work.products addObject: dellbusiness2];
    [work.products addObject: workstation1];
    [work.products addObject: workstation2];
    [work.products addObject: xps13];
    [work.products addObject: dellPrecision];
    [work.products addObject: zbook];

    /* personal */
    [personal.products addObject: acerTouchUltrabook];
    [personal.products addObject: asusTouchConvertible];
    [personal.products addObject: asusTouchTransformer];
    [personal.products addObject: hpTouchSmart];
    [personal.products addObject: dellTouch];
    [personal.products addObject: dellUltrabook];
    [personal.products addObject: vizioUltrabook];
    [personal.products addObject: toshibaSatellite];
    [personal.products addObject: dell17];
    [personal.products addObject: asus17];
    [personal.products addObject: alienware15];
    [personal.products addObject: alienware17];
    [personal.products addObject: razor];
    [personal.products addObject: msi];

    /* power pc */
    [powerUser.products addObject: dellRugged];
    [powerUser.products addObject: workstation1];
    [powerUser.products addObject: workstation2];
    [powerUser.products addObject: xps13];
    [powerUser.products addObject: dellPrecision];
    [powerUser.products addObject: zbook];

    /* admin pc */
    [adminUser.products addObject: hpElitebook];
    [adminUser.products addObject: hpElitebook2];
    [adminUser.products addObject: dellbusiness1];
    [adminUser.products addObject: dellbusiness2];

    /* admin + software */
    [yes_admin.products addObject: hpElitebook];
    [yes_admin.products addObject: hpElitebook2];

    /* admin - software */
    [no_admin.products addObject: dellbusiness1];
    [no_admin.products addObject: dellbusiness2];

    /* power pc less 1200 */
    [less1200.products addObject: xps13];
    [less1200.products addObject: dellPrecision];
    [less1200.products addObject: zbook];

    /* power pc more 1200 */
    [more1200.products addObject: dellRugged];
    [more1200.products addObject: workstation1];
    [more1200.products addObject: workstation2];

    /* gamer */
    [yesGamer.products addObject: alienware15];
    [yesGamer.products addObject: alienware17];
    [yesGamer.products addObject: razor];
    [yesGamer.products addObject: msi];

    /* no gamer */
    [noGamer.products addObject: acerTouchUltrabook];
    [noGamer.products addObject: asusTouchConvertible];
    [noGamer.products addObject: asusTouchTransformer];
    [noGamer.products addObject: hpTouchSmart];
    [noGamer.products addObject: dellTouch];
    [noGamer.products addObject: dellUltrabook];
    [noGamer.products addObject: vizioUltrabook];
    [noGamer.products addObject: toshibaSatellite];
    [noGamer.products addObject: dell17];
    [noGamer.products addObject: asus17];

    /* gamer more 1000 */
    [more1000.products addObject: alienware15];
    [more1000.products addObject: alienware17];
    [more1000.products addObject: razor];

    /* gamer less 1000 */
    [less1000.products addObject: msi];

    /* traveler */
    [yesTravel.products addObject: acerTouchUltrabook];
    [yesTravel.products addObject: asusTouchTransformer];
    [yesTravel.products addObject: dellUltrabook];
    [yesTravel.products addObject: vizioUltrabook];

    /* no traveler */
    [noTravel.products addObject: asusTouchConvertible];
    [noTravel.products addObject: hpTouchSmart];
    [noTravel.products addObject: dellTouch];
    [noTravel.products addObject: toshibaSatellite];
    [noTravel.products addObject: dell17];
    [noTravel.products addObject: asus17];

    /* yes touch */
    [yes.products addObject: acerTouchUltrabook];
    [yes.products addObject: asusTouchTransformer];

    /* no touch */
    [no.products addObject: dellUltrabook];
    [no.products addObject: vizioUltrabook];

    /* no travel less 500 */
    [less500.products addObject: asusTouchConvertible];
    [less500.products addObject: hpTouchSmart];
    [less500.products addObject: toshibaSatellite];

    /* no travel more 500 */
    [more500.products addObject: dellTouch];
    [more500.products addObject: dell17];
    [more500.products addObject: asus17];

    return windowsMac;


}

@end

