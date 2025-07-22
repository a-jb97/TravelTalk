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
    @IBOutlet var messageBackgroundView: UITextView!
    
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
        
        messageLabel.numberOfLines = 0
        
        dateLabel.font = .systemFont(ofSize: 13)
        dateLabel.textColor = .gray
        dateLabel.numberOfLines = 0
        
        messageBackgroundView.clipsToBounds = true
        messageBackgroundView.layer.borderWidth = 1
        messageBackgroundView.layer.borderColor = UIColor.gray.cgColor
        messageBackgroundView.layer.cornerRadius = 10
    }
    
    func configureData(_ item: Chat) {
        userImage.image = UIImage(named: item.user.image)
        otherUserName.text = item.user.name
        messageLabel.text = item.message
        dateLabel.text = dateFormat.convertDateFormat(stringDate: item.date, wantDateFormat: DateFormat.hma)
    }
}
