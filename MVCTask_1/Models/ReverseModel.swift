//
//  ReverseModel.swift
//  MVCTask_1
//
//  Created by Вадим Амбарцумян on 06.05.2023.
//

import Foundation
import UIKit

class ReverseText {
    var reversesText: String = ""
    
    public func reverseText() {
        let word = reversesText.components(separatedBy: " ")
        let reversedWords = word.map {String($0.reversed()) }
        let reversedText = reversedWords.joined(separator: " ")
        reversesText = reversedText
    }
        
}

