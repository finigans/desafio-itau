//
//  CategoryListViewController.swift
//  desafio-Itau
//
//  Created by Jonathan Pereira Almeida on 30/03/22.
//

import UIKit

class   segundaViewController: UIViewController {
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        view.backgroundColor = .white
        let label = UILabel(frame:CGRect (x: 10, y: 10, width: 300, height: 300))
        label.font = UIFont(name: "Halvetica", size: 17)
        label.text = "Contas Fixas"
      
        
        
        // ----------------
    
        
        let label1 = UILabel(frame:CGRect (x: 10, y: 50, width: 300, height: 300))
        label1.font = UIFont(name: "Halvetica", size: 17)
        label1.text = "Sem Categoria"
        
        
        
        
        
        
        view.addSubview(label)
        view.addSubview(label1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
 
   
}

