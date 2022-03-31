//
//  MainCoordinator.swift
//  desafio-Itau
//
//  Created by Jonathan Pereira Almeida on 24/03/22.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    
    func start()
}

protocol MainCoordinatorProtocol {
    func continueToAddEntry()
}

class MainCoordinator : Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.navigationBar.prefersLargeTitles = true
    }
    
    func start() {
        let viewModel = EntryListViewModel(coordinator: self)
        let viewController = EntryListViewController(viewModel: viewModel)
        let navigationViewController = UINavigationController(rootViewController: viewController)
        let segundaviewcontroller = segundaViewController()
        viewController.navigationItem.title = "Meus Gastos"
        
        
        let tabBar = UITabBarController()
   
        tabBar.setViewControllers([navigationViewController,segundaviewcontroller], animated: false)
        
        
        
        guard let items = tabBar.tabBar.items else {
            return
        }
        
        
        
        let images = ["banknote", "list.bullet"]
        let label = ["Lancamento", "Categorias"]
        
        for x in 0..<images.count {
            items[x].image = UIImage(systemName: images[x])
            items[x].title = label[x]
                }
        
        navigationController.pushViewController(tabBar, animated: false)
        
        // segunda view controller
     
        
    }
    
}

extension MainCoordinator:MainCoordinatorProtocol {
    func continueToAddEntry() {
        let viewController = ViewController2()
        navigationController.pushViewController(viewController, animated: true)
        
    }
}
