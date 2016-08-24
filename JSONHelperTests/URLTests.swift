//
//  URLTests.swift
//  JSONHelper
//
//  Created by Diogo Ribeiro de Oliveira on 8/24/16.
//  Copyright © 2016 Baris Sencan. All rights reserved.
//

import Foundation
import XCTest
import JSONHelper

class URLTests: XCTestCase {
    let urlString = "https://facebook.com"
    let urlHost = "facebook.com"
    
    func testStringConversion() {
        var url = URL(string: "http://google.com")
        url <-- (urlString as Any)
        XCTAssertEqual(url?.host, urlHost)
    }
}
