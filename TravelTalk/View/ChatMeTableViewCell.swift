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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureUI()
    }
    
    func configureUI() {
        messageLabel.layer.borderWidth = 1
        messageLabel.layer.borderColor = UIColor.gray.cgColor
        messageLabel.layer.backgroundColor = UIColor.systemGray2.cgColor
        
        dateLabel.font = .systemFont(ofSize: 15)
        dateLabel.textColor = .gray
    }
}
