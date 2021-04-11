//
//  URLRequestProviding.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

protocol URLRequestProviding {
    func request(endpoint: RestEndpoint) -> URLRequest
}
