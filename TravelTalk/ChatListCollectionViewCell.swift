//
//  ChatListCollectionViewCell.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/19/25.
//

import UIKit

class ChatListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var chatPreviewLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureUI()
    }
    
    func configureUI() {
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        
        nameLabel.font = .boldSystemFont(ofSize: 17)
        
        chatPreviewLabel.textColor = .darkGray
        
        dateLabel.font = .systemFont(ofSize: 15)
        dateLabel.textColor = .gray
    }
}
