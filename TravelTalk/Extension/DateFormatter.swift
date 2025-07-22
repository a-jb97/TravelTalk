//
//  DateFormatter.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/20/25.
//

import Foundation

extension DateFormatter {
    
    func convertDateFormat(stringDate: String, wantDateFormat: DateFormat) -> String {
        self.dateFormat = "yyyy-MM-dd HH:mm"
        
        let date = self.date(from: stringDate)
        
        self.dateFormat = wantDateFormat.rawValue
        return self.string(from: date ?? Date())
    }
    
//    func convertDateFormat_HHmma(stringDate: String) -> String {
//        self.dateFormat = "yyyy-MM-dd HH:mm"
//        
//        let date = self.date(from: stringDate)
//        
//        self.dateFormat = "hh:mm a"
//        return self.string(from: date ?? Date())
//    }
}

enum DateFormat: String {
    case yMd = "yy.MM.dd"
    case hma = "hh:mm a"
}
