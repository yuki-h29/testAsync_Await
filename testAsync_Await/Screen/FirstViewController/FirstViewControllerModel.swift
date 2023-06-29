//
//  FirstViewControllerModel.swift
//  testAsync_Await
//
//  Created by 平野裕貴 on 2023/06/29.
//

import Foundation
class FirstViewControllerModel: ViewControllerModelProtocol {
    
    
    // delegateはweak参照にします。これにより循環参照を防ぎます。
    weak var delegate: ViewControllerProtocol?
    
    func fetchData() async -> Bool {
        do {
            // 取得するデータのURLを設定します。
            let url = URL(string: "https://www.mediawiki.org/w/api.php")!
            
            // URLSessionを用いて非同期にデータを取得します。
            let (data, _) = try await URLSession.shared.data(from: url)
            
            // 取得したデータを指定したデータ型（ここではPerson）にデコードします。
            let decodedData = try JSONDecoder().decode(Person.self, from: data)
            
            // メインスレッドでデータを更新します。これはUIの更新はメインスレッドで行う必要があるためです。
            DispatchQueue.main.async {
                self.delegate?.updateView(data: decodedData)
            }

            // データの取得と更新が成功したので、trueを返します。
            return true
        } catch {
            // エラーが発生した場合はそのエラーを出力します。本番のコードではより適切なエラーハンドリングが必要です。
            print("Error: \(error)")

            // データの取得または更新に失敗したので、falseを返します。
            return false
        }
    }}
