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
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "UITableViewCell")
        cell.textLabel?.text = "Salario"
        cell.detailTextLabel?.text = "Contas Fixas"
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
    
    let tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
       
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
 
        var testeView: UIView
        testeView = UIView(frame: CGRect(x: 10, y: 190, width: 190, height: 190))
        testeView.backgroundColor = UIColor(red: 0.622, green: 0.783, blue: 0.9, alpha: 1)
        testeView.layer.cornerRadius = 9
        
        
        var teste1View: UIView
        teste1View = UIView(frame: CGRect(x: 230, y: 190, width: 190, height: 190))
        teste1View.backgroundColor = UIColor(red: 0.965, green: 0.666, blue: 0.647, alpha: 1)
        teste1View.layer.cornerRadius = 9
        
        
        view.addSubview(testeView)
        view.addSubview(teste1View)
        view.addSubview(tableView)
        creatSuitSegmentedControl()

        tableView.dataSource = self
        tableView.delegate = self
        
        
        tableView.topAnchor.constraint(equalTo: testeView.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
}
    
    init(viewModel: EntryListViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

   
    
    func creatSuitSegmentedControl(){
        let items = ["Essa semana" , "Esse mês ", "Todos"]
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.addTarget(self, action: #selector(suitDidChange(_:)), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)

          NSLayoutConstraint.activate ([
        segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        segmentedControl.topAnchor.constraint(equalTo: view.topAnchor , constant: 140),
        
    ])
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
