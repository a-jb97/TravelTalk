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
    @IBOutlet var messageBackgroundView: UITextView!
    
    static let identifier = "ChatMeTableViewCell"
    private let dateFormat = DateFormatter()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureUI()
    }
    
    func configureUI() {
        
        messageLabel.numberOfLines = 0
        
        dateLabel.font = .systemFont(ofSize: 13)
        dateLabel.textColor = .gray
        dateLabel.numberOfLines = 0
        
        messageBackgroundView.clipsToBounds = true
        messageBackgroundView.layer.borderWidth = 1
        messageBackgroundView.layer.borderColor = UIColor.gray.cgColor
        messageBackgroundView.layer.backgroundColor = UIColor.systemGray2.cgColor
        messageBackgroundView.layer.cornerRadius = 10
    }
    
    func configureData(_ item: Chat) {
        messageLabel.text = item.message
        dateLabel.text = dateFormat.convertDateFormat_HHmma(stringDate: item.date)
    }
}
