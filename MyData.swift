//
//  MyData.swift
//  SampleCustomClassDataStorage
//
//  Created by 國友翔次 on 2016/11/20.
//  Copyright © 2016年 com.kunitomo. All rights reserved.
//

import Foundation

class MyData : NSObject, NSCoding {
    var valueString: String?
    
    override init() {
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(valueString, forKey: "valueString")
    }
    
    public required init?(coder aDecoder: NSCoder) {
        valueString = aDecoder.decodeObject(forKey: "valueSring") as? String
    }
}
