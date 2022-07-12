//
//  TableViewCell.swift
//  ProgramaticUiHomeworkAssignment
//
//  Created by Wajeeh Ul Hassan on 10/07/2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let reuseID = "\(TableViewCell.self)"

    lazy var progImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .systemMint
        
        return imageView
    }()

    lazy var progTopLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
//        label.backgroundColor = .systemOrange
        
        return label
    }()
    
//    lazy var progMidLabel: UILabel = {
//        let label = UILabel(frame: .zero)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.numberOfLines = 0
//        label.backgroundColor = .systemYellow
//
//        return label
//    }()
//
//    lazy var progBottomLabel: UILabel = {
//        let label = UILabel(frame: .zero)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.numberOfLines = 0
//        label.backgroundColor = .systemIndigo
//
//        return label
//    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setUpUi()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUi() {
        let vStackview = UIStackView(frame: .zero)
        self.backgroundColor = .clear
        vStackview.translatesAutoresizingMaskIntoConstraints = false
        vStackview.spacing = 8
        vStackview.axis = .vertical
        vStackview.distribution = .fillEqually
        
        vStackview.addArrangedSubview(self.progTopLabel)
//        vStackview.addArrangedSubview(self.progMidLabel)
//        vStackview.addArrangedSubview(self.progBottomLabel)
        
        
        let hStackView = UIStackView(frame: .zero)
        hStackView.translatesAutoresizingMaskIntoConstraints = false
        hStackView.spacing = 8
        hStackView.axis = .horizontal
        
        hStackView.addArrangedSubview(progImageView)
        hStackView.addArrangedSubview(vStackview)
        
        self.progImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        self.progImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        self.contentView.addSubview(hStackView)
        hStackView.bindToSuperView()
        
    }
    
    
}
