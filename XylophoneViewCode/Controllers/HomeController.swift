//
//  HomeController.swift
//  XylophoneViewCode
//
//  Created by Matheus Sousa on 28/06/23.
//

import UIKit

class HomeController: UIViewController {
    
    var screen: HomeScreen?
    
    override func loadView() {
        self.screen = HomeScreen()
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
