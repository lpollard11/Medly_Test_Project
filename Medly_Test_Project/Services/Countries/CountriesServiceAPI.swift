//
//  CountriesServiceAPI.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

final class CountriesServiceAPI: CountriesService {
    private let networkRequester: NetworkRequesting
    
    init(networkRequester: NetworkRequesting) {
        self.networkRequester = networkRequester
    }
    
    func countries(completion: @escaping (ResponseResult<[Country]>) -> Void) {
        networkRequester.request(for: CountriesEndpoint(), completion: completion)
    }
}
