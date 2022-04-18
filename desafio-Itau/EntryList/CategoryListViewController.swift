//
//  CategoryListViewController.swift
//  desafio-Itau
//
//  Created by Jonathan Pereira Almeida on 30/03/22.
//

import UIKit

class segundaViewController: UIViewController  {
    // MARK: - Botton
    
    lazy var addButton: UIImageView = {

        lazy var addButton = UIImageView()
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.image = UIImage.add
        addButton.tintColor = .black
        addButton.contentMode = .scaleAspectFill

           return addButton
       }()
    
    var button:UIButton = {
        let button:UIButton = UIButton()
        button.backgroundColor = .black
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: buttonClicK, for: .touchUpInside)
   
        func buttonClick(_ : UIButton){
            print("botao clicado ")
        }
        
    }()
    
    
    
    private func constraintsAddBotton(){

        view.addSubview(addButton)
        addButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        addButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 370).isActive = true
        addButton.widthAnchor.constraint(equalToConstant: 32).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 32).isActive = true
    }
    
    

    
        override func viewDidLoad() {
        super.viewDidLoad()
          
        view.backgroundColor = .white
            view.addSubview(tableView)
            setupConstrants()
            tableView.dataSource = self
            tableView.delegate = self
            constraintsAddBotton()
            view.addSubview(button)
    }
    
    //MARK: -  tableview
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
       return tableView
    }()
    
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
   //   cell.imageView?.image = UIImage(named: "banknote")
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}


