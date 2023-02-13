//
//  Classes.swift
//  Alex_Citizenship
//
//  Created by Alex Olechnowicz on 2023-02-08.
//

import Foundation

extension Double{
    func percent() -> String{
        return "\(Int(self * 100))%"
    }
}

class History: Section{
    
    override var category: String {
        get {return "HISTORY"}
    }
    
    override init() {
        super.init()
        self.passingGrade = 1
        self.questions["Question 1"] = ("Aboriginal, French and British are the three founding peoples of Canada", true)
        self.questions["Question 2"] = ("The 'Magna Carta' was signed in 1215", true)
        self.questions["Question 3"] = ("The Constitution of Canada amended to entrench the 'Canadian Charter of Rights and Freedoms' in 1999", false)
        
    }
    
    override func printResults() throws -> String {
        
        print("You got a \((Double(self.score) / Double(self.questions.count)).percent()) in \(Self.self)")

        return try super.printResults()
    }
}

class Politics: Section{
    
    override var category: String {
        get {return "POLITICS"}
    }
    
    override init() {
        super.init()
        self.passingGrade = 2
        self.questions["Question 1"] = ("No person or group is above the law", true)
        self.questions["Question 2"] = ("Military service is compulsory in Canada", false)
        self.questions["Question 3"] = ("In Canada, men and women are equal under the law", true)
        
    }
    
    override func printResults() throws -> String {
        
        print("You got a \((Double(self.score) / Double(self.questions.count)).percent()) in \(Self.self)")

        return try super.printResults()
    }
}

class Culture: Section{
    
    override var category: String {
        get {return "CULTURE"}
    }
    
    override init() {
        super.init()
        self.passingGrade = 3
        self.questions["Question 1"] = ("The women's suffrage movement founder was Justin Trudeau", false)
        self.questions["Question 2"] = ("Poets and songwriters have hailed Canada as the Great Dominion", true)
        self.questions["Question 3"] = ("Labour Day is on the first Monday of September", true)
    }
    
    override func printResults() throws -> String {
        do{
            return try super.printResults()
        }
        catch{
            throw QuizError.QuizFailed
        }
    }
}




class Section: TestTemplate{
    static var currentQuestion: Int = 0
    static var totalQuestions: Int = 0
    
    var results: String = "Section not completed yet"
    
    var category: String {
        get{
            return "CATEGORY"
        }
    }
    
    fileprivate var questions: [String: (String, Bool)] = ["Question 1": ("1", true), "Question 2": ("1", true), "Question 3": ("1", true)]
    
    fileprivate var isComplete: Bool
    
    fileprivate var score: Int
    fileprivate var passingGrade: Int = 1
    
    init(){
        self.score = 0
        self.isComplete = false
        Section.totalQuestions += self.questions.count
    }
    
    func doSection() {
        print("----------\(self.category)----------")
        self.questions.forEach { question in
            var input = false
            var answer: String?
            Section.currentQuestion += 1
            print("Question \(Section.currentQuestion) out of \(Section.totalQuestions): \(question.value.0)")
            if question.value.1{
                print("a: True*")
                print("b: False\n")
            }
            else{
                print("a: True")
                print("b: False*\n")
            }
            while !input{
                print("a or b? ", terminator: "")
                answer = readLine()
                if answer != nil{
                    if answer == "a"{
                        if (question.value.1){
                            self.score += 1
                        }
                        input = true
                        print()
                    }
                    else if answer == "b"{
                        if (!question.value.1){
                            self.score += 1
                        }
                        input = true
                        print()
                    }
                    else{
                        print("Not a valid answer, try again")
                    }
                }
                else{
                    print("No answer recieved, try again")
                }
            }
        }
        self.isComplete = true
    }
    
    func printResults() throws -> String{
        guard isComplete else{
            throw QuizError.SectionNotComplete(msg: self.results)
        }
        
        self.results = """
        Category: \(self.category)
        You needed: \(self.passingGrade) out of \(self.questions.count)
        You scored: \(self.score) out of \(self.questions.count)
        
        """
        guard self.score >= self.passingGrade else{
            throw QuizError.SectionFailed(section: "\(Self.self)", msg: "You needed at least a \((Double(self.passingGrade) / Double(self.questions.count)).percent())")
        }
        
        return self.results

    }
    
}
