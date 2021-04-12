//
//  CountryCell.swift
//  Medly_Test_Project
//
//  Created by Lee Pollard on 4/11/21.
//

import UIKit

final class CountryCell: UITableViewCell {
    private enum Constants {
        static let imageViewHeight: CGFloat = 200
        static let standardSpacing: CGFloat = 16
        static let tightSpacing: CGFloat = 8
        static let tighterSpacing: CGFloat = 4
    }
    
    private let countryImageView = UIImageView()
    private let nameLabel = UILabel()
    private let capitalLabel = UILabel()
    private let regionLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    func configure(with viewModel: CountryCellViewModel) {
        countryImageView.load(with: viewModel.imageURL)
        nameLabel.text = viewModel.name
        capitalLabel.text = viewModel.capital
        regionLabel.text = viewModel.region
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        countryImageView.contentMode = .scaleAspectFill
        
        contentView.addSubview(countryImageView)
        countryImageView.addConstraints {[
            $0.topAnchor.constraint(equalTo: contentView.topAnchor),
            $0.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            $0.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            $0.heightAnchor.constraint(equalToConstant: Constants.imageViewHeight)
        ]}
        
        nameLabel.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.largeTitle)
        
        contentView.addSubview(nameLabel)
        nameLabel.addConstraints {[
            $0.topAnchor.constraint(equalTo: countryImageView.bottomAnchor, constant: Constants.tightSpacing),
            $0.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Constants.standardSpacing),
            $0.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ]}
        
        capitalLabel.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body)
        
        contentView.addSubview(capitalLabel)
        capitalLabel.addConstraints {[
            $0.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: Constants.tightSpacing),
            $0.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Constants.standardSpacing),
            $0.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ]}
        
        regionLabel.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body)
        
        contentView.addSubview(regionLabel)
        regionLabel.addConstraints {[
            $0.topAnchor.constraint(equalTo: capitalLabel.bottomAnchor, constant: Constants.tighterSpacing),
            $0.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: Constants.standardSpacing),
            $0.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            $0.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -Constants.standardSpacing)
        ]}
    }
}
