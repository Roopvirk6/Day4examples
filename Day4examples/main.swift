//
//  main.swift
//  Day4examples
//
//  Created by MacStudent on 2020-02-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var p1 = Person(id: 1, name: "roop", gender: Gender.FEMALE, birthDate : Date())
var s1 = Student(id: 1, name: "virk", gender: Gender.FEMALE, marks: ["MADO3" : 50.0, "MABT" : 54.0])

s1.setmarks(code : "MADO3" , mark : 98.6)
s1.setmarks(code : "MABT" , mark : 198.6)
print(s1["MADO3"])
print(s1[0])
print(s1[1])
print(s1[2])
print(s1.marks)
s1.display()

p1.display()
