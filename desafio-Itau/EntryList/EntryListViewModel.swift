//
//  EntryListViewModel.swift
//  desafio-Itau
//
//  Created by Jonathan Pereira Almeida on 24/03/22.
//

import Foundation

protocol EntryListViewModelProtocol {
    func didTapButton()
}

class EntryListViewModel {
    var coordinator: MainCoordinatorProtocol
    
    init(coordinator: MainCoordinatorProtocol){
        self.coordinator = coordinator
       
    }
}

extension EntryListViewModel: EntryListViewModelProtocol {
    func didTapButton() {
        self.coordinator.continueToAddEntry()
    }
    
    
}
