//
//  CountriesViewModel.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import Foundation

final class CountriesViewModel {
    var rowCount: Int {
        return countries.count
    }
    
    var reloadData: (() -> Void)?
    var showError: ((Error) -> Void)?
    
    private var countries: [Country] = []
    
    private let service: CountriesService
    
    init(service: CountriesService) {
        self.service = service
    }
    
    func loadData() {
        service.countries { [weak self] result in
            switch result {
            case .success(let countries):
                self?.countries = countries
                self?.reloadData?()
            case .failure(let error):
                self?.showError?(error)
            }
        }
    }
    
    func cellViewModel(for indexPath: IndexPath) -> CountryCellViewModel {
        let country = countries[indexPath.row]
        return CountryCellViewModel(country: country)
    }
}
