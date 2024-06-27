//
//  240627_12909.swift
//  
//
//  Created by 정채은 on 6/27/24.
//

import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var openCount : Int = 0
    var closeCount : Int = 0
    var string = s.map { String($0) }
    var isStartOpen : Bool = true
    
    string.forEach {
        if $0 == "(" {
            openCount += 1
        } else if $0 == ")" {
            if openCount != 0 {
                openCount -= 1
            } else {
                isStartOpen = false
            }
        }
    }
    
    if isStartOpen {
        ans = openCount == 0 ? true : false
    } else {
        ans = false
    }
    return ans
}
