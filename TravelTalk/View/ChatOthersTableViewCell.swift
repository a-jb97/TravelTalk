//
//  ChatOthersTableViewCell.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/20/25.
//

import UIKit

class ChatOthersTableViewCell: UITableViewCell {
    
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var otherUserName: UILabel!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    static let identifier = "ChatOthersTableViewCell"
    private let dateFormat = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureUI()
    }
    
    func configureUI() {
        userImage.clipsToBounds = true
        userImage.layer.cornerRadius = otherUserName.frame.width / 2
        userImage.contentMode = .scaleAspectFill
        
        messageLabel.layer.borderWidth = 1
        messageLabel.layer.borderColor = UIColor.gray.cgColor
        messageLabel.layer.cornerRadius = 15
        
        dateLabel.font = .systemFont(ofSize: 13)
        dateLabel.textColor = .gray
    }
    
    func configureData(_ item: Chat) {
        userImage.image = UIImage(named: item.user.image)
        otherUserName.text = item.user.name
        messageLabel.text = item.message
        dateLabel.text = dateFormat.convertDateFormat_HHmma(stringDate: item.date)
    }
}
