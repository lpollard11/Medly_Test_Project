//
//  CountriesEndpoint.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

struct CountriesEndpoint: RestEndpoint {
    let path: String = Constants.baseURL
    let method: RestMethod = .GET
}
