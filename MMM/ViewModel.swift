//
//  ViewModel.swift
//  MMM
//
//  Created by Yoshiki Izumi on 2020/10/27.
//

import UIKit
import RxSwift
import RxCocoa

class ViewModel {
    init() {
        let modelLocator = ModelLocator.shared
        
        modelLocator.name = BehaviorRelay<String>(value: "")
    }
    func getName() -> BehaviorRelay<String> {
        let modelLocator = ModelLocator.shared
        return modelLocator.name!
    }
}
