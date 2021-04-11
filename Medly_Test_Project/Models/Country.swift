//
//  Country.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

struct Country: Decodable {
    let name: String
    let capital: String
    let region: String
    let alpha2Code: String
}
