//
//  UIVIewController+TabBar.swift
//  BottomLayoutGuideBug
//
//  Created by hirokazu.sawada on 2018/01/18.
//  Copyright © 2018年 hirokazu.sawada. All rights reserved.
//

import UIKit

extension UIViewController {

    func hideTabBar(animated: Bool) {
        if let tabBar = tabBarController?.tabBar {
            if animated {
                UIView.animate(withDuration: 0.25, animations: {
                    tabBar.frame.origin.y = self.view.frame.height
                }, completion: { _ in
                    tabBar.isHidden = true
                })
            } else {
                tabBar.frame.origin.y = self.view.frame.height
                tabBar.isHidden = true
            }
        }
    }

    func showTabBar(animated: Bool) {
        if let tabBar = tabBarController?.tabBar {
            tabBar.isHidden = false
            if animated {
                UIView.animate(withDuration: 0.25, animations: {
                    tabBar.frame.origin.y = self.view.frame.height - tabBar.frame.height
                })
            } else {
                tabBar.frame.origin.y = self.view.frame.height - tabBar.frame.height
            }
        }
    }
    
}
