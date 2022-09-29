//
//  SearchBarComponentView.swift
//  SearchBarComponent
//
//  Created by Gabriel Paschoal on 29/09/22.
//

import Foundation
import UIKit

class SearchBarComponentView: UIView {
    
    lazy var textFieldComponent: TextFieldComponent = {
        let text = TextFieldComponent()
        text.layer.backgroundColor = UIColor.lightGray.cgColor
        text.layer.cornerRadius = 15
        text.placeholder = "O que você procura"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    lazy var searchIconComponent: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(systemName: "magnifyingglass")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    lazy var imageContainer: UIView = {
        let img = UIView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.backgroundColor = .green
        img.layer.cornerRadius = 15
        return img
    }()
    
    func render() {
        imageContainer.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(searchClick)))
        addSubview(textFieldComponent)
        textFieldComponent.addSubview(imageContainer)
        imageContainer.addSubview(searchIconComponent)
        makeConstraints()
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            textFieldComponent.centerXAnchor.constraint(equalTo: centerXAnchor),
            textFieldComponent.centerYAnchor.constraint(equalTo: centerYAnchor),
            textFieldComponent.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            textFieldComponent.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            textFieldComponent.heightAnchor.constraint(equalToConstant: 35),
            
            imageContainer.trailingAnchor.constraint(equalTo: textFieldComponent.trailingAnchor),
            imageContainer.topAnchor.constraint(equalTo: textFieldComponent.topAnchor),
            imageContainer.bottomAnchor.constraint(equalTo: textFieldComponent.bottomAnchor),
            imageContainer.widthAnchor.constraint(equalToConstant: 35),
            
            searchIconComponent.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor),
            searchIconComponent.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
        ])
    }
    
    @objc func searchClick() { }
    
}
