//
//  ChatListViewController.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/19/25.
//

import UIKit

class ChatListViewController: UIViewController/*, UICollectionViewDelegate, UICollectionViewDataSource*/ {
    
    @IBOutlet var chatListCollectionView: UICollectionView!
    
    let cellIdentifier = "ChatListCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let xib = UINib(nibName: cellIdentifier, bundle: nil)
        
        chatListCollectionView.register(xib, forCellWithReuseIdentifier: cellIdentifier)
//        chatListCollectionView.delegate = self
//        chatListCollectionView.dataSource = self
        
        configureCellLayout()
    }
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        <#code#>
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
    
    func configureCellLayout() {
        let layout = UICollectionViewFlowLayout()
        let deviceBounds = UIScreen.main.bounds
        let cellWidth = deviceBounds.width
        let cellHeight = deviceBounds.height
        
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        layout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        layout.scrollDirection = .vertical
    }
}

