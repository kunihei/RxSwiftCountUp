//
//  ViewController.swift
//  RxSwiftCountup
//
//  Created by 祥平 on 2021/11/15.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var favCountLabel: UILabel!
    @IBOutlet weak var favButton: UIButton!
    
    private var favCount = 0
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favButton.rx.tap
            .subscribe { [unowned self] _ in
                self.favCount += 1
                self.favCountLabel.text = String(self.favCount)
            }.disposed(by: disposeBag)

        
        // Do any additional setup after loading the view.
    }


}

