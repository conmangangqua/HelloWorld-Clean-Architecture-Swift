//
//  AppDIContainer.swift
//  HelloWord
//
//  Created by Thành Bùi Bá on 3/15/19.
//  Copyright © 2019 Ominext. All rights reserved.
//

import Swinject
import SwinjectStoryboard

class AppDIContainer {
    
    static let instance = AppDIContainer()
    
    let main: Container = SwinjectStoryboard.defaultContainer
    
    private init() {
        setupMain()
        Container.loggingFunction = nil
    }
    
    func resolve<Service>(_ serviceType: Service.Type) -> Service?
    {
        if Thread.isMainThread
        {
            return self.main.resolve(serviceType)
        }
        else
        {
            var service:Service?
            
            DispatchQueue.main.sync {[weak self] in
                service = self?.main.resolve(serviceType)
            }
            
            return service
        }
    }
    
    private func setupMain() {
        main.register(MessageRepos.self) { _ in
            MessageReposImpl()
        }
        
        main.register(MessageUsecase.self) { r in
            MessageUsecase(repos: r.resolve(MessageRepos.self)!)
        }
    }
    
}
