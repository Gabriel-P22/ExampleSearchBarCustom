//
//  ViewController.swift
//  SearchBarComponent
//
//  Created by Gabriel Paschoal on 29/09/22.
//

import UIKit

class SearchViewController: UIViewController {

    let customView = SearchView()
    
    override func viewDidLoad() {
        view = customView
        customView.render()
        view.backgroundColor = .white
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

