//
//  ViewController.swift
//  desafio-Itau
//
//  Created by Jonathan Pereira Almeida on 23/03/22.
//

import UIKit
import TinyConstraints


class ViewController: UIViewController {
   
    let listaDeLancamentosView: UIView = {
        let listaDeLancamentosView = UIView()
        
        listaDeLancamentosView.translatesAutoresizingMaskIntoConstraints = false
        listaDeLancamentosView.backgroundColor = .gray
        return listaDeLancamentosView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setEntryListView()
        
    }
    
    required init?(coder: NSCoder) {

            fatalError("init(coder:) has not been implemented")

        }

        func setEntryListView(){

            self.view.addSubview(listaDeLancamentosView)

            listaDeLancamentosView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            listaDeLancamentosView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            listaDeLancamentosView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            listaDeLancamentosView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true

        }
    

    
    
    func creatSuitSegmentedControl(){
        let items = ["dia 1" , "dia 2", "dia 3"]
        let segmentedControl = UISegmentedControl(items: items)
        segmentedControl.addTarget(self, action: #selector(suitDidChange(_:)), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)

        NSLayoutConstraint.activate([
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            segmentedControl.topAnchor.constraint(equalTo: view.topAnchor , constant: 75)


        ])

    }

    @objc func suitDidChange(_ segmentedControl: UISegmentedControl){
        switch segmentedControl.selectedSegmentIndex {
                case 0:
                   view.backgroundColor = .black
               case 1:
                   view.backgroundColor = .red
               case 2:
                   view.backgroundColor = .purple
               default :
                   view.backgroundColor = .black

        }
}
}



class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     //   view.backgroundColor = .green
    }
}

