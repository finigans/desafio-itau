//
//  iconBackView.swift
//  desafio-Itau
//
//  Created by Jonathan Pereira Almeida on 14/04/22.
//

import UIKit

class iconBackView: UIView {

    lazy var iconBack: UIImageView = {

        lazy var iconBack = UIImageView()
        iconBack.translatesAutoresizingMaskIntoConstraints = false
        iconBack.image = UIImage(systemName: "arrow.up.circle.fill")
        iconBack.tintColor = .black
        iconBack.contentMode = .scaleAspectFill

           return iconBack

       }()

    lazy var valueLabel: UILabel = {

        lazy var valueLabel = UILabel()
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.text = "R$ 180.00"
        valueLabel.textColor = .black
        valueLabel.font = UIFont.systemFont(ofSize: 26, weight: .bold)

        return valueLabel

    }()
    
    lazy var infoLabel: UILabel = {

        lazy var infoLabel = UILabel()
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.text = "Saidas esse mes"
        infoLabel.textColor = UIColor(red: 0.333, green: 0.333, blue: 0.333, alpha: 1)
        infoLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return infoLabel

    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        loudElements()

    }

    

    required init?(coder: NSCoder) {

        fatalError("init(coder:) has not been implemented")

    }

    

    private func loudElements(){
        setIconIncome()
        setValueLabel()
        setInfoLabel()
    }

    

    private func setIconIncome(){

        self.addSubview(iconBack)
        iconBack.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        iconBack.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12).isActive = true
        iconBack.widthAnchor.constraint(equalToConstant: 32).isActive = true
        iconBack.heightAnchor.constraint(equalToConstant: 32).isActive = true
    }

    private func setValueLabel(){
        self.addSubview(valueLabel)
        valueLabel.topAnchor.constraint(equalTo: iconBack.bottomAnchor, constant: 12).isActive = true
        valueLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12).isActive = true
    }

    private func setInfoLabel(){
        self.addSubview(infoLabel)
        infoLabel.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 1).isActive = true
        infoLabel.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12).isActive = true
    }
}


