//
//  main.swift
//  SequencePlay
//
//  Created by Tharzeez on 11/2/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

import Foundation

print("Hello, World!")

struct SomeStruct: Sequence, IteratorProtocol {
    typealias Element = (Int?, String?)
    
    
    var count: Int
    var names : [String]
    mutating func next() -> (Int?,String?)? {
        if count == 0 {
            return nil
        }else {
            defer { count -= 1 }
            return (count,names[count-1])
        }
    }
}

var firstNames = ["MOhammed","Asife","JohnAppleseed", "John","Doe"]
var inst = SomeStruct(count: 5, names:firstNames)
for i in inst {
    print(i)
}

func display(myname name: inout String){
    name = name + "Mohammed"
    print(name)
}
var tharzeez = "Tharzeez"
display(myname: &tharzeez)
print(tharzeez)
