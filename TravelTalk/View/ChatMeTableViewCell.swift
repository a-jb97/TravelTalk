//
//  ChatMeTableViewCell.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/20/25.
//

import UIKit

class ChatMeTableViewCell: UITableViewCell {
    
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    static let identifier = "ChatMeTableViewCell"
    private let dateFormat = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureUI()
    }
    
    func configureUI() {
        messageLabel.layer.borderWidth = 1
        messageLabel.layer.borderColor = UIColor.gray.cgColor
        messageLabel.layer.backgroundColor = UIColor.systemGray2.cgColor
        messageLabel.layer.cornerRadius = 15
        messageLabel.numberOfLines = 0
        
        dateLabel.font = .systemFont(ofSize: 13)
        dateLabel.textColor = .gray
        dateLabel.numberOfLines = 0
    }
    
    func configureData(_ item: Chat) {
        messageLabel.text = item.message
        dateLabel.text = dateFormat.convertDateFormat_HHmma(stringDate: item.date)
    }
}
