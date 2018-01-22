//
//  ThirdViewController.swift
//  BottomLayoutGuideBug
//
//  Created by hirokazu.sawada on 2018/01/18.
//  Copyright © 2018年 hirokazu.sawada. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.hideTabBar(animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        self.showTabBar(animated: animated)
    }
}
