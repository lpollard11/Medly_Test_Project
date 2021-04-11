//
//  ModelProviding.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

protocol ModelProviding {
    func serializeData<ModelType: Decodable>(data: Data) -> ModelType?
}
