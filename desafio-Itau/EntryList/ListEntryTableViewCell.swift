//
//  ListCategoryTableViewCell.swift
//  desafio-Itau
//
//  Created by Jonathan Pereira Almeida on 12/04/22.
//

import UIKit

class ListEntryTableViewCell: UITableViewCell {

    static let identifier = "ListEntryTableViewCell"

    lazy var iconImgView: UIImageView = {

        lazy var iconImgView = UIImageView()

        iconImgView.translatesAutoresizingMaskIntoConstraints = false
        iconImgView.image = UIImage(systemName: "arrow.down.circle.fill")
        iconImgView.tintColor = .gray
        iconImgView.contentMode = .scaleAspectFill
        return iconImgView

    }()

    

    lazy var entryLabel: UILabel = {

        lazy var entryLabel = UILabel()

        entryLabel.translatesAutoresizingMaskIntoConstraints = false
        entryLabel.text = "Salário"
        entryLabel.textColor = .black
        entryLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)

        return entryLabel

    }()

//    lazy var categoryLabel: UILabel = {
//
//        lazy var categoryLabel = UILabel()
//
//        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
//        categoryLabel.text = "Contas Fixas"
//        categoryLabel.textColor = .white
//        categoryLabel.backgroundColor = .gray
//        categoryLabel.layer.cornerRadius = 40
//        categoryLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
//        return categoryLabel
//
//    }()
    
        lazy var categoryLabel: UIButton = {
    
            lazy var categoryLabel = UIButton()
    
            categoryLabel.translatesAutoresizingMaskIntoConstraints = false
            categoryLabel.setTitle("Contas fixas", for: .normal)
            categoryLabel.setTitleColor(.white, for: .normal)
            categoryLabel.backgroundColor = .gray
            categoryLabel.layer.cornerRadius = 8
            categoryLabel.isEnabled = false
            //categoryLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            return categoryLabel
    
        }()

    lazy var valueLabel: UILabel = {

        lazy var valueLabel = UILabel()

        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        valueLabel.text = "+R$ 3000,00"
        valueLabel.textColor = .systemPink
        valueLabel.contentMode = .left
        valueLabel.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        return valueLabel

    }()

    lazy var dateLabel: UILabel = {

        lazy var dateLabel = UILabel()

        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.text = "21 Dez"
        dateLabel.contentMode = .left
        dateLabel.textColor = UIColor(red: 0.333, green: 0.333, blue: 0.333, alpha: 1)
        dateLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return dateLabel

    }()

    



    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {

        super.init(style: style, reuseIdentifier: reuseIdentifier)
        loudElements()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func loudElements(){

        setIconImgView()
        setEntryLabel()
        setCategoryLabel()
        setValueLabel()
        setDateLabel()

    }

    

    private func setIconImgView(){

        self.addSubview(iconImgView)
        iconImgView.topAnchor.constraint(equalTo: self.topAnchor, constant: 15).isActive = true
        iconImgView.leftAnchor.constraint(equalTo: self.leftAnchor,constant: 12).isActive = true
        iconImgView.widthAnchor.constraint(equalToConstant: 32).isActive = true
        iconImgView.heightAnchor.constraint(equalToConstant: 32).isActive = true

    }

    private func setEntryLabel(){

        self.addSubview(entryLabel)
        entryLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        entryLabel.leftAnchor.constraint(equalTo: iconImgView.rightAnchor,constant: 15).isActive = true
    }

    private func setCategoryLabel(){
        self.addSubview(categoryLabel)
        categoryLabel.topAnchor.constraint(equalTo: entryLabel.bottomAnchor, constant: 0).isActive = true
        categoryLabel.leftAnchor.constraint(equalTo: iconImgView.rightAnchor,constant: 15).isActive = true
        categoryLabel.widthAnchor.constraint(equalToConstant: 110).isActive = true
        categoryLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }

    private func setValueLabel(){

        self.addSubview(valueLabel)
        valueLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        valueLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12).isActive = true
    }

    private func setDateLabel(){
        
        self.addSubview(dateLabel)
        dateLabel.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 0).isActive = true
        dateLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -12).isActive = true

    }



}
