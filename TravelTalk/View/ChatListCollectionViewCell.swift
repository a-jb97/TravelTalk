//
//  ChatListCollectionViewCell.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/19/25.
//

import UIKit

class ChatListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var chatRoomNameLabel: UILabel!
    @IBOutlet var chatPreviewLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureUI()
    }
    
    func configureUI() {
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        profileImage.contentMode = .scaleAspectFill
        
        chatRoomNameLabel.font = .boldSystemFont(ofSize: 17)
        
        chatPreviewLabel.textColor = .darkGray
        
        dateLabel.font = .systemFont(ofSize: 15)
        dateLabel.textColor = .gray
    }
}

/*
 1. 값 전달 코드 지우고 다시 해보기
 2. 부등호 사용해서 채팅 말풍선 너비 유동적으로 변경
 3. 오토디멘션 사용해서 셀높이 유동적으로 변경
 4. 텍스트 뷰 추가해서 데이터 넣고 테이블뷰 리로드
 
 etc. 블로그 글 잡아놓기
 */
