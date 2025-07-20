//
//  ChatListViewController.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/19/25.
//

import UIKit

class ChatListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var chatListCollectionView: UICollectionView!
    
    private var chatList = ChatList.list
    private let cellIdentifier = "ChatListCollectionViewCell"
    private let dateForamt = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNib(identifier: cellIdentifier, object: chatListCollectionView)
        
        chatListCollectionView.delegate = self
        chatListCollectionView.dataSource = self
        
        configureCellLayout()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chatList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! ChatListCollectionViewCell
        
        cell.profileImage.image = UIImage(named: chatList[indexPath.row].chatroomImage)
        cell.chatRoomNameLabel.text = chatList[indexPath.row].chatroomName
        cell.chatPreviewLabel.text = chatList[indexPath.row].chatList.last?.message
        cell.dateLabel.text = dateForamt.convertDateFormat(stringDate: chatList[indexPath.row].chatList.last?.date ?? "날짜 없음")
        
        return cell
    }
    
    func configureCellLayout() {
        let layout = UICollectionViewFlowLayout()
        let deviceBounds = UIScreen.main.bounds
        let cellWidth = deviceBounds.width
        let cellHeight = deviceBounds.height
        
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight/7.5)
        layout.sectionInset = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        
        chatListCollectionView.collectionViewLayout = layout
    }
}

