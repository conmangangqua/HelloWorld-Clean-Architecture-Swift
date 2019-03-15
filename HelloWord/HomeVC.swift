//
//  HomeVC.swift
//  HelloWord
//
//  Created by Thành Bùi Bá on 3/15/19.
//  Copyright © 2019 Ominext. All rights reserved.
//

import UIKit

class HomeVC: BaseVC, HomeView {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var presenter: HomePresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter.attachView(self)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        presenter.detachView()
        super.viewDidDisappear(animated)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        self.presenter.getMessage()
    }
    
    func showLabel(message: Message) {
        label.text = message.title
    }
}
