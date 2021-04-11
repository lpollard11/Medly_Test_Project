//
//  RestEndpoint.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

enum RestMethod: String {
    case GET
}

protocol RestEndpoint {
    var path: String { get }
    var method: RestMethod { get }
}
