//
//  NetworkRequesting.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

typealias ResponseResult<T> = Result<T, Error>

protocol NetworkRequesting {
    func request<ModelType: Decodable>(for endpoint: RestEndpoint, completion: @escaping (ResponseResult<ModelType>) -> Void)
}
