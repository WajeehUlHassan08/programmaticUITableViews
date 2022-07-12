//
//  DetailViewController.swift
//  ProgramaticUiHomeworkAssignment
//
//  Created by Wajeeh Ul Hassan on 11/07/2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    lazy var progLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
//        label.backgroundColor = .systemPurple
        
        return label
    }()
    
    lazy var progImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .systemMint
        
        return imageView
    }()
    
    
    let text: String
    
    init(text: String) {
        self.text = text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.setUpUI()
        self.progLabel.text = self.text
        self.progImageView.image = UIImage(named: self.text)
    }
    

    private func setUpUI() {
        self.view.addSubview(self.progImageView)
        self.view.addSubview(self.progLabel)
        
        self.progImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        self.progImageView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        self.progImageView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.progImageView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
//        self.progImageView.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: -44).isActive = true
        
        
        self.progImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        self.progImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        self.progLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 45).isActive = true
//        self.progLabel.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        self.progLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.progLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        self.progLabel.heightAnchor.constraint(equalToConstant: 44).isActive = true
//        self.progLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -44).isActive = true
        
        
        
    }

}
