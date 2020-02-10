//
//  Student.swift
//  Day4examples
//
//  Created by MacStudent on 2020-02-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Student: Person
{
    
    lazy var marks = [String : Double]()
    init(id: Int, name: String, gender: Gender, marks : [String : Double] ) {
        super.init(id: id, name: name, gender: gender)
        self.marks = marks
    }
    subscript(code : String) -> Double
    {
        get{
            self.marks[code] ?? 0.0
        }
        set(newValue)
        {
            self.marks.updateValue(newValue, forKey: code)
        }
    }
    subscript(code : Int)-> Any
    {
        get{
            if code == 0
            {
                return self.id
            }
            else if code == 1
            {
                return self.name
            }
            else
            {
                return self.gender
            }
        }
    }
    var total : Double
    {
        return 0.0
    }
    var result : String
    {
        return "pass"
    }
    var per : Double
    {
        return 0.0
    }
    func setmarks(code : String, mark : Double)  {
        self.marks.updateValue(mark, forKey: code)
    }
    
    private func calculatetotal() -> Double
    {
        var t = 0.0
        for m in self.marks
        {
            t = t + m.value
        }
        return t
        
    }
    private func calculatepercentage() -> Double
    {
        return self.total / Double(self.marks.count)
    }
}
