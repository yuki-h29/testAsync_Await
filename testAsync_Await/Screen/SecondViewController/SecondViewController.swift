//
//  SecondViewController.swift
//  testAsync_Await
//
//  Created by 平野裕貴 on 2023/06/29.
//

import UIKit

class SecondViewController: UIViewController,ViewControllerProtocol {
    
    var model: SecondViewControllerModel!
    
    func updateView(data: Person) {
        
    }
    
    init(model: SecondViewControllerModel) {
        super.init(nibName: nil, bundle: nil)
        self.model = model
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var OKButton: UIButton! {
        didSet {
            // ここでbuttonのプロパティを設定します
            OKButton.backgroundColor = .purple
            OKButton.setTitle("Click me", for: .normal)
        }
    }

}
