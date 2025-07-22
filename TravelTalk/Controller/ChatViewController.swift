//
//  ChatViewController.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/20/25.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var chatTableView: UITableView!
    @IBOutlet var inputMessageTextView: UITextView!
    @IBOutlet var sendButton: UIButton!
    
    static let identifier = "ChatViewController"
    private var chatList = ChatList.list
    private let dateFormat = DateFormatter()
    
    var chatData = ChatRoom(chatroomId: 0, chatroomImage: "", chatroomName: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputMessageTextView.text = "메세지를 입력하세요"
        inputMessageTextView.textColor = .gray
        inputMessageTextView.textContainerInset = UIEdgeInsets(top: 16, left: 8, bottom: 16, right: 8)
        
        inputMessageTextView.delegate = self
        
        configureUiInputMessageTextView()
        
        let meXib = UINib(nibName: ChatMeTableViewCell.identifier, bundle: nil)
        chatTableView.register(meXib, forCellReuseIdentifier: ChatMeTableViewCell.identifier)
        
        let otherXib = UINib(nibName: ChatOthersTableViewCell.identifier, bundle: nil)
        chatTableView.register(otherXib, forCellReuseIdentifier: ChatOthersTableViewCell.identifier)
        
        chatTableView.delegate = self
        chatTableView.dataSource = self
        
        chatTableView.rowHeight = UITableView.automaticDimension
        chatTableView.estimatedRowHeight = UITableView.automaticDimension
    }
    
    @IBAction func sendButtonTapped(_ sender: UIButton) {
        
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
    
    func configureUiInputMessageTextView() {
        inputMessageTextView.clipsToBounds = true
        inputMessageTextView.layer.backgroundColor = UIColor.systemGray6.cgColor
        inputMessageTextView.layer.cornerRadius = 10
    }
}

extension ChatViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if inputMessageTextView.textColor == UIColor.gray {
            inputMessageTextView.text = nil
            inputMessageTextView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if inputMessageTextView.text.isEmpty {
            inputMessageTextView.text = "메세지를 입력하세요"
            inputMessageTextView.textColor = UIColor.gray
        }
    }
}
