//
//  ModelProvider.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

final class ModelProvider: ModelProviding {
    func serializeData<ModelType: Decodable>(data: Data) -> ModelType? {
        do {
            let result = try JSONDecoder().decode(ModelType.self, from: data)
            return (result)
        } catch {
            return (nil)
        }
    }
}
