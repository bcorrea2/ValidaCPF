//
//  ValidaCPFTests.m
//  ValidaCPFTests
//
//  Created by Bruno Corrêa on 04/02/14.
//  Copyright (c) 2014 Bruno Corrêa. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ValidaCPF.h"

@interface ValidaCPFTests : XCTestCase
@end

@implementation ValidaCPFTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testExample {
    XCTAssertTrue([ValidaCPF validarCPF:@"647.614.715-30"]);
    XCTAssertTrue([ValidaCPF validarCPF:@"741.764.488-06"]);
    XCTAssertTrue([ValidaCPF validarCPF:@"038.455.594-20"]);
    XCTAssertTrue([ValidaCPF validarCPF:@"874.737.105-67"]);
    XCTAssertTrue([ValidaCPF validarCPF:@"854.554.299-22"]);
    
    XCTAssertFalse([ValidaCPF validarCPF:@"854.554.299-26"]);
    XCTAssertFalse([ValidaCPF validarCPF:@"641.614.715-30"]);
    XCTAssertFalse([ValidaCPF validarCPF:@"038.452.594-20"]);
    
    XCTAssertFalse([ValidaCPF validarCPF:@"lol"]);
    XCTAssertFalse([ValidaCPF validarCPF:@"1233435354"]);
    XCTAssertFalse([ValidaCPF validarCPF:@"928912389123"]);
    XCTAssertFalse([ValidaCPF validarCPF:@"32312fldkfd"]);
}

@end
