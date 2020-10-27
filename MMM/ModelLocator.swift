//
//  ModelLocator.swift
//  MMM
//
//  Created by Yoshiki Izumi on 2020/10/27.
//

import UIKit
import RxSwift
import RxCocoa

class ModelLocator {
    var name: BehaviorRelay<String>?
    
    static let shared = ModelLocator()
    private init() {
    }
}
