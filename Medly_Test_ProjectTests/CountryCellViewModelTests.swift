//
//  CountryCellViewModelTests.swift
//  Medly_Test_ProjectTests
//
//  Created by Lee Pollard on 4/11/21.
//

@testable import Medly_Test_Project
import XCTest

class CountryCellViewModelTests: XCTestCase {
    private var sut: CountryCellViewModel!
    
    override func setUp() {
        super.setUp()
        sut = CountryCellViewModel(country: Country(name: "United States",
                                                    capital: "Washington D.C.",
                                                    region: "Americas",
                                                    alpha2Code: "US"))
    }
    
    func test_name() {
        XCTAssertEqual(sut.name, "United States")
    }
    
    func test_capital() {
        XCTAssertEqual(sut.capital, "Capital: Washington D.C.")
    }
    
    func test_region() {
        XCTAssertEqual(sut.region, "Region: Americas")
    }
    
    func test_imageURL() {
        XCTAssertEqual(sut.imageURL.absoluteString, "https://www.countryflags.io/US/flat/64.png")
    }
}
