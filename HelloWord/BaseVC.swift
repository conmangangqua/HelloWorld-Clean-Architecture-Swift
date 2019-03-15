//
//  BaseVC.swift
//  HelloWord
//
//  Created by Thành Bùi Bá on 3/15/19.
//  Copyright © 2019 Ominext. All rights reserved.
//

import UIKit

class BaseVC: UIViewController, BaseView {

    var basePresenter: BasePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        basePresenter.attachView(self)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        basePresenter.detachView()
        super.viewDidDisappear(animated)
    }

}
