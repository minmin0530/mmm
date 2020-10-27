//
//  ViewController.swift
//  MMM
//
//  Created by Yoshiki Izumi on 2020/10/27.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    let viewModel: ViewModel = ViewModel()
    let disposeBag: DisposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.rx.text.orEmpty.bind(to: viewModel.getName()).disposed(by: disposeBag)
    }


}

