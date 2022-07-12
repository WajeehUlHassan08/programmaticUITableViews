//
//  MainViewController.swift
//  ProgramaticUiHomeworkAssignment
//
//  Created by Wajeeh Ul Hassan on 10/07/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var table: UITableView = {
        let table = UITableView(frame: .zero)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .white
        table.dataSource = self
        table.delegate = self
        table.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.reuseID)
        
        return table
    }()

    var names: [String] = ["Jeff","Elon","Bill","Mark"]

    override func viewDidLoad() {
        self.view.backgroundColor = .white
        super.viewDidLoad()
        self.setUpUI()
    }
    
    private func setUpUI() {
        self.view.addSubview(table)
        self.table.bindToSuperView()
    }
}


extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseID, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        print("Hi this is \(indexPath.row)")
        
        cell.progTopLabel.text = self.names[indexPath.row]
        cell.progImageView.image = UIImage(named: self.names[indexPath.row])
        
        return cell
        
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController(text: self.names[indexPath.row])
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
