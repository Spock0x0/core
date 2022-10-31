//
//  File.swift
//  
//
//  Created by Spock on 2022/10/31.
//

import Foundation

public final class Resolver {
    static let shared = Resolver()

    private init() {}
    
    public func resolve<Service>(type: Service.Type) -> Service? {
        return Registry.shared.services["\(type)"] as? Service
    }
}
