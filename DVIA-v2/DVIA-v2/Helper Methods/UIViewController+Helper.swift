//
//  UIViewController+Helper.swift
//  DVIA - Damn Vulnerable iOS App (damnvulnerableiosapp.com)
//  Created by Prateek Gianchandani on 23/11/17.
//  Copyright © 2018 HighAltitudeHacks. All rights reserved.
//  You are free to use this app for commercial or non-commercial purposes
//  You are also allowed to use this in trainings
//  However, if you benefit from this project and want to make a contribution, please consider making a donation to The Juniper Fund (www.thejuniperfund.org/)
//  The Juniper fund is focusing on Nepali workers involved with climbing and expedition support in the high mountains of Nepal. When a high altitude worker has an accident (death or debilitating injury), the impact to the family is huge. The juniper fund provides funds to the affected families and help them set up a sustainable business.
//  For more information,  visit www.thejuniperfund.org
//  Or watch this video https://www.youtube.com/watch?v=HsV6jaA5J2I
//  And this https://www.youtube.com/watch?v=6dHXcoF590E
 

import Foundation
import UIKit

protocol ContainerViewControllerProtocol: class {
    
    var visibleViewController: UIViewController? { get set }
    
    func addControllerAsChild(childController: UIViewController, insideView containerView: UIView)
    
}

extension ContainerViewControllerProtocol where Self: UIViewController {
    
    func addControllerAsChild(childController: UIViewController, insideView containerView: UIView) {
        DispatchQueue.main.async {
            self.addChild(childController)
            childController.view.frame = containerView.bounds
            childController.willMove(toParent: self)
            containerView.addSubview(childController.view)
            childController.didMove(toParent: self)
        }
    }
}
