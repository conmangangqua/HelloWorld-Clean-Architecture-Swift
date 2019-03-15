//
//  BasePresenter.swift
//  HelloWord
//
//  Created by Thành Bùi Bá on 3/15/19.
//  Copyright © 2019 Ominext. All rights reserved.
//

import Foundation

class BasePresenter : Presenter{
    typealias T = BaseView
    
    var view: BaseView?
    
    func attachView(_ view: BaseView) {
        self.view = view
    }
    
    func detachView() {
        self.view = nil
    }

    
}
