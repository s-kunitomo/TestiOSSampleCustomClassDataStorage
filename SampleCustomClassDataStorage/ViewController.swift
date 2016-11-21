//
//  ViewController.swift
//  SampleCustomClassDataStorage
//
//  Created by 國友翔次 on 2016/11/20.
//  Copyright © 2016年 com.kunitomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = UserDefaults.standard
        let data = MyData()
        data.valueString = "test"
        let archiveData = NSKeyedArchiver.archivedData(withRootObject: data)
        userDefaults.set(archiveData, forKey: "data")
        userDefaults.synchronize()
        
        if let storedData = userDefaults.object(forKey: "data") as? Data {
            if let unarchiveData = NSKeyedUnarchiver.unarchiveObject(with: storedData) as? MyData {
            
                if let valueString = unarchiveData.valueString {
                    print("デシリアライズデータ：\(valueString)")
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

