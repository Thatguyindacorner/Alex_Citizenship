//
//  QuizError.swift
//  Alex_Citizenship
//
//  Created by Alex Olechnowicz on 2023-02-08.
//

import Foundation

enum QuizError: Error{
    case SectionFailed(section: String, msg: String)
    case SectionNotComplete(msg: String)
    case QuizFailed
}
