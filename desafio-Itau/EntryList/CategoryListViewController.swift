//
//  CategoryListViewController.swift
//  desafio-Itau
//
//  Created by Jonathan Pereira Almeida on 30/03/22.
//

import UIKit

class segundaViewController: UIViewController  {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
       return tableView
    }()
    
        override func viewDidLoad() {
        super.viewDidLoad()
          
        view.backgroundColor = .white
            view.addSubview(tableView)
            setupConstrants()
            tableView.dataSource = self
            tableView.delegate = self
    }
    
    private func setupConstrants(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
}

extension segundaViewController : UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "UITableViewCell" )
        
        cell.textLabel?.text = "Contas Fixas"
        cell.detailTextLabel?.text = "Categorias"
        cell.imageView?.image = UIImage(named: "banknote")
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}


