//
//  File.swift
//  
//
//  Created by Spock on 2022/10/31.
//

import Foundation
import MyLibrary2

final class ConcreteMyPod2Interface: MyPod2Interface {
    
    init() {}
    
    func input(for name: String, age: Int) -> MyLibrary2 {
        return MyLibrary2(name: name, age: age)
    }
}
