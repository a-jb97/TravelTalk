//
//  UIViewController.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/20/25.
//

import UIKit

extension UIViewController {
    func configureNib(identifier: String, object: UITableView) {
        let nib = UINib(nibName: identifier, bundle: nil)
        
        object.register(nib, forCellReuseIdentifier: identifier)
    }
    
    func configureNib(identifier: String, object: UICollectionView) {
        let nib = UINib(nibName: identifier, bundle: nil)
        
        object.register(nib, forCellWithReuseIdentifier: identifier)
    }
}
