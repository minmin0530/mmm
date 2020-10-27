//
//  SecondViewController.swift
//  MMM
//
//  Created by Yoshiki Izumi on 2020/10/27.
//

import UIKit
import RxSwift
import RxCocoa

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    let viewModel: ViewModel = ViewModel()
    let disposeBag: DisposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getName().bind(to: nameLabel.rx.text).disposed(by: disposeBag)
    }


}

