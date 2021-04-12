//
//  CountriesWireframe.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import UIKit

final class CountriesWireframe {
    private let modelProvider: ModelProviding
    private let httpProvider: HTTPProviding
    private let urlRequester: URLRequestProviding
    
    init() {
        modelProvider = ModelProvider()
        httpProvider = HTTPProvider(session: URLSession(configuration: .default))
        urlRequester = URLRequestProvider()
    }

    func buildCountriesViewController() -> UIViewController {
        let networkRequester = NetworkRequester(modelProviding: modelProvider,
                                                httpProviding: httpProvider,
                                                urlRequestProviding: urlRequester)
        let countriesService = CountriesServiceAPI(networkRequester: networkRequester)
        let viewModel = CountriesViewModel(service: countriesService)
        let view = CountriesViewController(viewModel: viewModel)
        let nav = UINavigationController(rootViewController: view)
        return nav
    }
}
