//
//  CountriesServiceMock.swift
//  Medly_Test_ProjectTests
//
//  Created by Lee Pollard on 4/11/21.
//

@testable import Medly_Test_Project

class CountriesServiceMock: CountriesService {
    var didFire = false
    var responseResult: ResponseResult<[Country]> = .success([])
    
    func countries(completion: @escaping (ResponseResult<[Country]>) -> Void) {
        didFire = true
        completion(responseResult)
    }
}
