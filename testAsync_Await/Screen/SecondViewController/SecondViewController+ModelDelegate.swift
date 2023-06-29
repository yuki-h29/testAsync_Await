//
//  SecondViewController+ModelDelegate.swift
//  testAsync_Await
//
//  Created by 平野裕貴 on 2023/06/29.
//

import Foundation
import UIKit

extension SecondViewController: SecondViewControllerModelDelegate {
    
    func fetchData(for button: UIButton) async -> Bool {
        do {
            let success = try await model.fetchData(for: button)
            return success
        } catch {
            print("Error: \(error)")
            return false
        }
    }
    
    
}
