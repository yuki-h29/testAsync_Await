//
//  ViewControllerModelProtocol.swift
//  testAsync_Await
//
//  Created by 平野裕貴 on 2023/06/29.
//

import Foundation

protocol ViewControllerModelProtocol {
    
    var delegate: ViewControllerProtocol? { get set }
    func fetchData() async -> Bool
}
