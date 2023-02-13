//
//  main.swift
//  Alex_Citizenship
//
//  Created by Alex Olechnowicz on 2023-02-08.
//

import Foundation

var results: [String] = []

let s1 = History()
let s2 = Politics()
let s3 = Culture()

do{
    s1.doSection()
    try results.append(s1.printResults())
    s2.doSection()
    try results.append(s2.printResults())
    s3.doSection()
    print("----------Results----------\n")
    do{
        try results.append(s3.printResults())
        results.forEach { section in
            print(section)
        }
        print("You have Passed! Congratulations!")
    }
    catch QuizError.QuizFailed{
        results.append(s3.results)
        results.forEach { section in
            print(section)
        }
        print("You have Failed the test! Better luck next time..")
    }
    
}
catch QuizError.SectionNotComplete(let msg){
    //in case a section's printResults is called before it is completed
    print(msg)
}
catch QuizError.SectionFailed(let section, let msg){
    print(msg)
    print("\nYou have Failed \(section)! The test is over.")
}

