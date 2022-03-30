//
//  EntryListViewController.swift
//  desafio-Itau
//
//  Created by Jonathan Pereira Almeida on 24/03/22.
//

import Foundation
import UIKit

class EntryListViewController: UIViewController {
    var viewModel: EntryListViewModelProtocol
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
 
        creatSuitSegmentedControl()
    }
    
    init(viewModel: EntryListViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // segunda view contoller
    
   
    
    
    
    
    
    func creatSuitSegmentedControl(){
        let items = ["Essa semana" , "Esse mês ", "Todos"]
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.addTarget(self, action: #selector(suitDidChange(_:)), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)

        NSLayoutConstraint.activate([
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            segmentedControl.topAnchor.constraint(equalTo: view.topAnchor , constant: 140)


        ])

    }

    @objc func suitDidChange(_ segmentedControl: UISegmentedControl){
        switch segmentedControl.selectedSegmentIndex {
                case 0:
                   view.backgroundColor = .gray
               case 1:
                   view.backgroundColor = .lightGray
               case 2:
                   view.backgroundColor = .systemGreen
               default :
                   view.backgroundColor = .black
        }
    }
}
