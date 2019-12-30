//
//  ContainerVieeController.swift
//  decide
//
//  Created by Uditi Sharma on 12/26/19.
//  Copyright © 2019 Uditi Sharma. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    var menuController : UIViewController!
    var centereController : UIViewController!
    var isExpand = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConfigureHomeViewController()
        //        edgesForExtendedLayout = []
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
    func ConfigureHomeViewController() {
        
        let homeViewController = HomeViewController()
        homeViewController.delegate = self
        centereController = UINavigationController(rootViewController: homeViewController)
        
        view.addSubview(centereController.view)
        addChild(centereController)
        centereController.didMove(toParent: self)
    }
    
    
    func ConfigureMenuViewController() {
        if menuController == nil {
            menuController = MenuViewController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("did add menu controller")
        }
    }
    func showMenuController(shouldExpnad: Bool) {
        
        if shouldExpnad {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centereController.view.frame.origin.x = self.centereController.view.frame.width - 80
            }, completion: nil)
        }else {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centereController.view.frame.origin.x = 0                }, completion: nil)
            
        }
    }
    
}


extension ContainerViewController: HomeViewControllerDelegate{
    func handleMenuToggle(forMenuOption menuOption: MenuOption?) {
                if !isExpand {
            ConfigureMenuViewController()
        }
        isExpand = !isExpand
        showMenuController(shouldExpnad: isExpand)

    }
    
}
