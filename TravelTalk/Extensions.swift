//
//  Extension.swift
//  TravelTalk
//
//  Created by 전민돌 on 7/20/25.
//

import Foundation

extension DateFormatter {
    func convertDateFormat(stringDate: String) -> String {
        self.dateFormat = "yyyy-MM-dd HH:mm"
        
        let date = self.date(from: stringDate)
        
        print("\(String(describing: date))")
        
        self.dateFormat = "yy.MM.dd"
        return self.string(from: date ?? Date())
    }
}
