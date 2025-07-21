//
//  DateFormatter.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/20/25.
//

import Foundation

extension DateFormatter {
    func convertDateFormat_yyMMdd(stringDate: String) -> String {
        self.dateFormat = "yyyy-MM-dd HH:mm"
        
        let date = self.date(from: stringDate)
        
        self.dateFormat = "yy.MM.dd"
        return self.string(from: date ?? Date())
    }
    
    func convertDateFormat_HHmma(stringDate: String) -> String {
        self.dateFormat = "yyyy-MM-dd HH:mm"
        
        let date = self.date(from: stringDate)
        
        self.dateFormat = "hh:mm a"
        return self.string(from: date ?? Date())
    }
}
