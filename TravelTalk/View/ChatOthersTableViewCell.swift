//
//  ChatOthersTableViewCell.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/20/25.
//

import UIKit

class ChatOthersTableViewCell: UITableViewCell {
    
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureUI()
    }
    
    func configureUI() {
        userImage.clipsToBounds = true
        userImage.layer.cornerRadius = userName.frame.width / 2
        userImage.contentMode = .scaleAspectFill
        
        messageLabel.layer.borderWidth = 1
        messageLabel.layer.borderColor = UIColor.gray.cgColor
        messageLabel.layer.cornerRadius = 10
        
        dateLabel.font = .systemFont(ofSize: 15)
        dateLabel.textColor = .gray
    }
}
