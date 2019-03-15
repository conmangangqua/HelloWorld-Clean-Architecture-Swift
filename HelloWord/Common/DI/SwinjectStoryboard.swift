//
//  SwinjectStoryboard.swift
//  HelloWord
//
//  Created by Thành Bùi Bá on 3/15/19.
//  Copyright © 2019 Ominext. All rights reserved.
//

import Foundation
import SwinjectStoryboard

extension SwinjectStoryboard {
    class func setup() {
        let container = AppDIContainer.instance.main
        
        container.storyboardInitCompleted(HomeVC.self) { r, c in
            c.basePresenter = BasePresenter()
            c.presenter = HomePresenter(r.resolve(MessageUsecase.self)!)
        }
    }
}
