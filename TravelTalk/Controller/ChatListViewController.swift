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
    private let chatListCellIdentifier = "ChatListCollectionViewCell"
    private let chatViewIdentifier = "ChatViewController"
    private let dateForamt = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNib(identifier: chatListCellIdentifier, object: chatListCollectionView)
        
        chatListCollectionView.delegate = self
        chatListCollectionView.dataSource = self
        
        configureCellLayout()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chatList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: chatListCellIdentifier, for: indexPath) as! ChatListCollectionViewCell
        
        cell.profileImage.image = UIImage(named: chatList[indexPath.row].chatroomImage)
        cell.chatRoomNameLabel.text = chatList[indexPath.row].chatroomName
        cell.chatPreviewLabel.text = chatList[indexPath.row].chatList.last?.message
        cell.dateLabel.text = dateForamt.convertDateFormat_yyMMdd(stringDate: chatList[indexPath.row].chatList.last?.date ?? "날짜 없음")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: chatViewIdentifier) as! ChatViewController
        
        viewController.chatData = chatList[indexPath.row]
        
        navigationController?.pushViewController(viewController, animated: true)
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

