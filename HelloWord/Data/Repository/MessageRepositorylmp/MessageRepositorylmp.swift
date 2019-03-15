//
//  MessageRepositorylmp.swift
//  HelloWord
//
//  Created by Thành Bùi Bá on 3/14/19.
//  Copyright © 2019 Ominext. All rights reserved.
//

import Foundation

class MessageReposImpl: MessageRepos {
    
    func getMessage() -> Message {
        return Message(title: "Hello World")
    }
}
