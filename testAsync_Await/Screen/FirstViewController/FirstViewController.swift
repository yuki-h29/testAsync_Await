//
//  FirstViewController.swift
//  testAsync_Await
//
//  Created by 平野裕貴 on 2023/06/29.
//

import UIKit

class FirstViewController: UIViewController,ViewControllerProtocol {
    func updateView(data: Person) {
        
    }
    
    
    var model: FirstViewControllerModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TransitionNextViewController()
    }
    
    init(model: FirstViewControllerModel) {
        super.init(nibName: nil, bundle: nil)
        self.model = model
 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateView(data: String) {
        // ここでビューを更新します
    }
    

}
