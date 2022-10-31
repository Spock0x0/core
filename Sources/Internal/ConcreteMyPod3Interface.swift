//
//  File.swift
//  
//
//  Created by Spock on 2022/10/31.
//

import Foundation
import MyLibrary3

final class ConcreteMyPod3Interface: MyPod3Interface {
    
    init() {}
    
    func input(for name: String, age: Int) -> MyLibrary3 {
        return MyLibrary3(name: name, age: age)
    }
}
