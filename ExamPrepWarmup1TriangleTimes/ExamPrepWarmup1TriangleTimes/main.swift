//
//  main.swift
//  ExamPrepWarmup1TriangleTimes
//
//  Created by Mark on 2016-05-27.
//  Copyright © 2016 Clutch Industries. All rights reserved.
//

import Foundation

var inputs : [Int : Int] = [:]
var success : Bool = false
var prompts : [Int : String] = [0 : "Angle 1?" , 1 : "Angle 2?", 2 : "Angle 3?" ]


for key in 0...2 {
    
    success = false
    
    repeat {
        
        print(prompts[key]!, terminator: " ")
        
        if let inLine : String = readLine() {
            
            //print("str")
            
            if let inInt = Int(inLine) {
                
                //print("int")
                
                if inInt < 180 && inInt > 0 {
                    
                    //print("tested")
                    
                    inputs[key] = inInt
                    success = true
                    
                }
            }
        }
        
    } while success == false
}

//print(inputs)

if (inputs[0]! + inputs[1]! + inputs[2]!) == 180{
    
    if inputs[0] == inputs[1] || inputs[1] == inputs[2] || inputs[0] == inputs[2] {
        //isosceles
        
        if inputs[0] == inputs[1] && inputs[1] == inputs[2] {
            
            //equilateral
            print("Equilateral")
            
        } else {
            
            print("Isosceles")
            
        }
        
    } else {
        //scalene
        print("Scalene")
        
    }
} else {
    
    print("Error")
    
}
