//
//  SecondViewControllerModel.swift
//  testAsync_Await
//
//  Created by 平野裕貴 on 2023/06/29.
//

import Foundation
import UIKit

class SecondViewControllerModel: SecondViewControllerModelDelegate {

    var delegate: SecondViewControllerModelDelegate!
    
    func fetchData(for button: UIButton) async -> Bool {
        
        return true
        
    }
}
