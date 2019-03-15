//
//  Presenter.swift
//  HelloWord
//
//  Created by Thành Bùi Bá on 3/15/19.
//  Copyright © 2019 Ominext. All rights reserved.
//

import Foundation

protocol Presenter {
    associatedtype T
    
    func attachView(_ view: T)
    func detachView()
    
}
