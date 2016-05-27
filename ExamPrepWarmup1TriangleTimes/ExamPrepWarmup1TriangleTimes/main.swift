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
var prompts : [Int : String] = [0 : "Angle 1?" , 1 : "Angle 2?", 2 : "Angle 3" ]


for key in 0...2 {
    
    success = false
    
    repeat {
        
        print(prompts[key]! terminator: " ")
        
        if let inLine : String = readLine() {
            
            if let inInt = Int(inLine) {
                
                if inInt < 180 && inInt < 0 {
                    
                    inputs[key] = inInt
                    success = true
                    
                }
            }
        }
        
    } while success == false
}

print(prompts)
