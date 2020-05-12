//
//  BoundariesTests.swift
//  BoundariesTests
//
//  Created by Frank Valbuena on 7/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import XCTest
import Boundaries

class BoundariesTests: XCTestCase {
    var application: Application.Resolved!

    override func setUpWithError() throws {
        self.application = .init()
    }

    override func tearDownWithError() throws {
        self.application = nil
    }

    func testExample() throws {
        XCTAssertEqual(application?.lookUpToPlugin, "[Application][UseCase][Plugin][Service][AFramework]")
    }
}
