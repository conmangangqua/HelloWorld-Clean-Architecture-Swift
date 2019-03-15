//
//  HomePresenter.swift
//  HelloWord
//
//  Created by Thành Bùi Bá on 3/15/19.
//  Copyright © 2019 Ominext. All rights reserved.
//

import Foundation

class HomePresenter: Presenter {
    
    typealias T = HomeView
    // MARK: - Property
    var view: HomeView?
    
    var message: Message?
    var useMessage: MessageUsecase
    
    // MARK: - Life cycle
    deinit {
        message!.title = ""
    }
    
    init(_ useMessage: MessageUsecase) {
        self.useMessage = useMessage
    }

    // MARK: - Utils
    func attachView(_ view: HomeView) {
        self.view = view
    }
    
    func detachView() {
        self.view = nil
    }
    
    func getMessage(){
        let mes = useMessage.exe()
        self.view?.showLabel(message: mes)
    }
}
