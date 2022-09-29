//
//  SearchView.swift
//  SearchBarComponent
//
//  Created by Gabriel Paschoal on 29/09/22.
//

import Foundation
import UIKit

class SearchView: UIView {
    
    lazy var searchBarComponent: SearchBarComponentView = {
        let component = SearchBarComponentView()
        component.translatesAutoresizingMaskIntoConstraints = false
        return component
    }()
    
    func render() {
        searchBarComponent.render()
        addSubview(searchBarComponent)
        makeConstraints()
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            searchBarComponent.centerXAnchor.constraint(equalTo: centerXAnchor),
            searchBarComponent.leadingAnchor.constraint(equalTo: leadingAnchor),
            searchBarComponent.trailingAnchor.constraint(equalTo: trailingAnchor),
            searchBarComponent.bottomAnchor.constraint(equalTo: bottomAnchor),
            searchBarComponent.centerXAnchor.constraint(equalTo: centerXAnchor),
            searchBarComponent.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
