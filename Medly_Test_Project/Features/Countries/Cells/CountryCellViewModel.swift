//
//  CountryCellViewModel.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

final class CountryCellViewModel {
    private enum Constants {
        static let imageURL = "https://www.countryflags.io/[CODE]/flat/64.png"
    }
    
    var name: String {
        return country.name
    }
    
    var capital: String {
        return "Capital: \(country.capital)"
    }
    
    var region: String {
        return "Region: \(country.region)"
    }
    
    var imageURL: URL {
        let string = Constants.imageURL.replacingOccurrences(of: "[CODE]", with: country.alpha2Code)
        return URL(string: string)!
    }
    
    private let country: Country
    
    init(country: Country) {
        self.country = country
    }
}
