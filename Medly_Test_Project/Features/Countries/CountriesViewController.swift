//
//  CountriesViewController.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import UIKit

final class CountriesViewController: UIViewController {
    private let tableView = UITableView()
    private let viewModel: CountriesViewModel
    
    init(viewModel: CountriesViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTableView()
        setupHandlers()
        viewModel.loadData()
    }
    
    private func setupHandlers() {
        viewModel.reloadData = { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    private func setupUI() {
        navigationItem.title = "Countries"
    }
    
    private func setupTableView() {
        tableView.register(cell: CountryCell.self)
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        tableView.dataSource = self
        
        view.addSubview(tableView)
        tableView.addConstraints {[
            $0.topAnchor.constraint(equalTo: view.topAnchor),
            $0.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            $0.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            $0.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]}
    }
}

extension CountriesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CountryCell.identifier, for: indexPath) as! CountryCell
        cell.configure(with: viewModel.cellViewModel(for: indexPath))
        return cell
    }
}
