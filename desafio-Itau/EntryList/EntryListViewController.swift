//
//  EntryListViewController.swift
//  desafio-Itau
//
//  Created by Jonathan Pereira Almeida on 24/03/22.
//

import Foundation
import UIKit

class EntryListViewController: UIViewController , UITableViewDataSource , UITableViewDelegate  {
  
    //MARK : TABLEVIEW 
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ListEntryTableViewCell.identifier) as! ListEntryTableViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")
        
        header?.textLabel?.text = "Lançamentos"
        header?.textLabel?.font = UIFont.systemFont(ofSize: 26)
        header?.textLabel?.textColor = .black
        
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    var viewModel: EntryListViewModelProtocol
    
    lazy var segmentedControl: UISegmentedControl = {
        let items = ["Essa semana" , "Esse mês ", "Todos"]
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.addTarget(self, action: #selector(suitDidChange(_:)), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()
    
    var testeView: incomeView = {
        
        let testeView = incomeView()
        testeView.translatesAutoresizingMaskIntoConstraints = false
        testeView.backgroundColor = UIColor(red: 0.622, green: 0.783, blue: 0.9, alpha: 1)
        testeView.layer.cornerRadius = 9
        
        return testeView
    }()
    
    
    var teste1View: iconBackView = {
        
       let teste1View = iconBackView()
        teste1View.translatesAutoresizingMaskIntoConstraints = false
        teste1View.backgroundColor = UIColor(red: 0.965, green: 0.666, blue: 0.647, alpha: 1)
        teste1View.layer.cornerRadius = 9
        
        return teste1View
    }()


    
    let tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
       
        tableView.register(ListEntryTableViewCell.self , forCellReuseIdentifier:ListEntryTableViewCell.identifier)
        tableView.allowsMultipleSelection = true
        tableView.separatorColor = .gray
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewHeaderFooterView.self,forHeaderFooterViewReuseIdentifier: "header")
        return tableView
    }()
    
    // criar testeView fora da viewdidload
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
 

        creatSuitSegmentedControl()
        setupIncomeView()
        setupoutcomeView()
        setUpTableView()
        

        tableView.dataSource = self
        tableView.delegate = self
        
        
}
    
  
   
    
    init(viewModel: EntryListViewModelProtocol) {
        self.viewModel = viewModel
      
        super.init(nibName: nil, bundle: nil)
    }
    // not ini
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func creatSuitSegmentedControl(){
        view.addSubview(segmentedControl)
        segmentedControl.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        segmentedControl.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive  = true
        segmentedControl.rightAnchor.constraint(equalTo: view.rightAnchor , constant: -16).isActive = true
}
    private func setupIncomeView(){
        view.addSubview(testeView)
        testeView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20).isActive = true
        testeView.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16).isActive = true
        testeView.heightAnchor.constraint(equalToConstant: 124).isActive = true
        testeView.widthAnchor.constraint(equalToConstant: 190).isActive = true

        }
    private func setupoutcomeView(){
        view.addSubview(teste1View)
        teste1View.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20).isActive = true
        teste1View.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16).isActive = true
        teste1View.heightAnchor.constraint(equalToConstant: 124).isActive = true
        teste1View.widthAnchor.constraint(equalToConstant: 190).isActive = true
}
    private func setUpTableView(){
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: testeView.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    

    @objc func suitDidChange(_ segmentedControl: UISegmentedControl){
        switch segmentedControl.selectedSegmentIndex {
                case 0:
                   view.backgroundColor = .white
               case 1:
                   view.backgroundColor = .white
               case 2:
                   view.backgroundColor = .white
               default :
                   view.backgroundColor = .black
        }
    }
    
   

}
