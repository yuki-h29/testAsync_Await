//
//  FirstViewController+ModelDelegate.swift
//  testAsync_Await
//
//  Created by 平野裕貴 on 2023/06/29.
//

import Foundation

extension FirstViewController: FirstViewControllerModelDelegate {
    
    func TransitionNextViewController() {
        Task {
            let success = await model.fetchData()
            print(success ? "データの取得に成功しました" : "データの取得に失敗しました")
            
            if success == false{
                // メインスレッドで画面遷移を行う
                DispatchQueue.main.async {
                    let secondViewController = SecondViewController(model: SecondViewControllerModel())
                    self.navigationController?.pushViewController(secondViewController, animated: true)
                }
            }
        }
        
    }
    
}
