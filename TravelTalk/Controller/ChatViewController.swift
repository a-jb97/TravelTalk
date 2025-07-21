//
//  ChatViewController.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/20/25.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var chatTableView: UITableView!
    
    static let identifier = "ChatViewController"
    private var chatList = ChatList.list
    private let dateFormat = DateFormatter()
    
    var chatData = ChatRoom(chatroomId: 0, chatroomImage: "", chatroomName: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let meXib = UINib(nibName: ChatMeTableViewCell.identifier, bundle: nil)
        chatTableView.register(meXib, forCellReuseIdentifier: ChatMeTableViewCell.identifier)
        
        let otherXib = UINib(nibName: ChatOthersTableViewCell.identifier, bundle: nil)
        chatTableView.register(otherXib, forCellReuseIdentifier: ChatOthersTableViewCell.identifier)
        
        chatTableView.delegate = self
        chatTableView.dataSource = self
        
        chatTableView.rowHeight = UITableView.automaticDimension
        chatTableView.estimatedRowHeight = UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatData.chatList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if chatData.chatList[indexPath.row].user.image == "Me" {
            let meCell = tableView.dequeueReusableCell(withIdentifier: ChatMeTableViewCell.identifier, for: indexPath) as! ChatMeTableViewCell
            meCell.configureData(chatData.chatList[indexPath.row])
            
            return meCell
        } else {
            let othersCell = tableView.dequeueReusableCell(withIdentifier: ChatOthersTableViewCell.identifier, for: indexPath) as! ChatOthersTableViewCell
            othersCell.configureData(chatData.chatList[indexPath.row])
            
            return othersCell
        }
    }
}
