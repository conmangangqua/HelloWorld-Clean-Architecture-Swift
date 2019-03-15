//
//  MessageUsecase.swift
//  HelloWord
//
//  Created by Thành Bùi Bá on 3/14/19.
//  Copyright © 2019 Ominext. All rights reserved.
//

import Foundation

class MessageUsecase {
    
    let repos: MessageRepos
    
    init(repos: MessageRepos) {
        self.repos = repos
    }
    
    func exe() -> Message {
         return self.repos.getMessage()
    }
}

