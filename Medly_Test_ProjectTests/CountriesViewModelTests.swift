//
//  CountriesViewModelTests.swift
//  Medly_Test_ProjectTests
//
//  Created by Lee Pollard on 4/11/21.
//

@testable import Medly_Test_Project
import XCTest

class CountriesViewModelTests: XCTestCase {
    private var sut: CountriesViewModel!
    private var service: CountriesServiceMock!
    
    override func setUp() {
        super.setUp()
        service = CountriesServiceMock()
        sut = CountriesViewModel(service: service)
    }
    
    func test_loadData_service_didFire() {
        sut.loadData()
        
        XCTAssertTrue(service.didFire)
    }
    
    func test_loadData_success_reload_didFire() {
        var didFire = false
        let handler = {
            didFire = true
        }
        
        sut.reloadData = handler
        service.responseResult = .success([])
        
        sut.loadData()
        
        XCTAssertTrue(didFire)
    }
    
    func test_loadData_failure_showError_didFire() {
        var didFire = false
        var error: Error?
        let handler: (Error) -> Void = { handlerError in
            didFire = true
            error = handlerError
        }
        
        sut.showError = handler
        service.responseResult = .failure(ResponseError.invalidData)
        
        sut.loadData()
        
        XCTAssertTrue(didFire)
        
        guard case .invalidData = error as! ResponseError else {
            XCTFail()
            return
        }
    }
    
    func test_rowCount() {
        service.responseResult = .success([country, country])
        
        sut.loadData()
        
        XCTAssertEqual(sut.rowCount, 2)
    }
    
    func test_cellViewModel() {
        service.responseResult = .success([country])
        
        sut.loadData()
        
        let cellViewModel = sut.cellViewModel(for: IndexPath(row: 0, section: 0))
        XCTAssertEqual(cellViewModel.name, "United States")
    }
}

extension CountriesViewModelTests {
    private var country: Country {
        return Country(name: "United States", capital: "", region: "", alpha2Code: "")
    }
}
