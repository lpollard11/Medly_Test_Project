//
//  HTTPProvider.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

final class HTTPProvider: HTTPProviding {
    private let session: URLSession
    private var dataTask: URLSessionDataTask?
    
    init(session: URLSession) {
        self.session = session
    }
    
    func task(request: URLRequest, completion: @escaping ((Data?, URLResponse?, Error?) -> Void)) {
        dataTask = session.dataTask(with: request) { (data, response, error) in
            completion(data, response, error)
        }
        dataTask?.resume()
    }
}
