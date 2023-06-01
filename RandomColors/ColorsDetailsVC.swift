//
//  ColorsDetailsVC.swift
//  RandomColors
//
//  Created by Mohamed Aboullezz on 20/12/2022.
//

import UIKit

class ColorsDetailsVC: UIViewController {
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
        
    }
}
