//
//  ReverseModel.swift
//  MVCTask_1
//
//  Created by Вадим Амбарцумян on 06.05.2023.
//

import Foundation
import UIKit

class TextReverser {

    public func reverseText(text: String) -> String {
        let word = text.components(separatedBy: " ")
        let reversedWords = word.map {String($0.reversed()) }
        let reversedText = reversedWords.joined(separator: " ")
        return reversedText
    }
}

