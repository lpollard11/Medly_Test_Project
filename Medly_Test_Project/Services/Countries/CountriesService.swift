//
//  CountriesService.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

protocol CountriesService {
    func countries(completion: @escaping (ResponseResult<[Country]>) -> Void)
}
