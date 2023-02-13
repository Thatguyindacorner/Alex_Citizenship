//
//  TestTemplate.swift
//  Alex_Citizenship
//
//  Created by Alex Olechnowicz on 2023-02-08.
//

import Foundation

protocol TestTemplate{
    var category: String {get}
    func doSection()
    func printResults() throws -> String
}
