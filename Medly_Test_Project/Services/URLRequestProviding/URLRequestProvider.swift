//
//  URLRequestProvider.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

final class URLRequestProvider: URLRequestProviding {
    func request(endpoint: RestEndpoint) -> URLRequest {
        let url = URL(string: endpoint.path)!
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        return request
    }
}
