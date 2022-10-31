//
//  File.swift
//  
//
//  Created by Spock on 2022/10/31.
//

import Foundation

public final class Registry {

  static let shared = Registry()

  private init() {}

  var services: [String: Any] = [:]

  func register<Service>(type: Service.Type, service: Any) {
      services["\(type)"] = service
  }
}
