//
//  HTTPProviding.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

protocol HTTPProviding {
    func task(request: URLRequest, completion: @escaping ((Data?, URLResponse?, Error?) -> Void))
}
