/*
 The MIT License (MIT)
 Copyright © 2016 Ivan Rodriguez. All rights reserved.
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software
 and associated documentation files (the "Software"), to deal in the Software without restriction,
 including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
 and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
 subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial
 portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
 LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
 OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#import <XCTest/XCTest.h>
#import "IRErrorProvider.h"

@interface IRErrorProviderSpec : XCTestCase

@end

@implementation IRErrorProviderSpec

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testGeneratingAGenericError {
    NSError *error = [IRErrorProvider genericError];
    XCTAssertEqualObjects(error.userInfo[NSLocalizedDescriptionKey],@"An Error has occurred");
}

- (void)testReturningAnErrorWithACustomMessage {
    NSError *error = [IRErrorProvider errorWithMessage:@"my-message" errorCode:1000];
    XCTAssertEqualObjects(error.userInfo[NSLocalizedDescriptionKey],@"my-message");
    XCTAssertEqual(error.code,1000);
}

@end