//
//  File.swift
//  
//
//  Created by Spock on 2022/10/31.
//

import Foundation
import MyLibrary2
import MyLibrary3
import MyPod1

final public class CoreManager {
    private let myPod2Interface: ConcreteMyPod2Interface
    private let myPod3interface: ConcreteMyPod3Interface
    public let container = Resolver.shared
    
    
    // init default container
    public init() {
        myPod2Interface = .init()
        myPod3interface = .init()
        Registry.shared.register(type: MyPod1.self, service: MyPod1())
    }

    public func add(myPod2InputInterface name: String, age: Int) {
        let pod2Service = myPod2Interface.input(for: name, age: age)
        Registry.shared.register(type: MyLibrary2.self, service: pod2Service)
                
        let pod3Service = myPod3interface.input(for: pod2Service.name, age: pod2Service.age)
        Registry.shared.register(type: MyLibrary3.self, service: pod3Service)
    }
    
}
