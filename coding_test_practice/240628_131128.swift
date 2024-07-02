//
//  240628_131128.swift
//  
//
//  Created by 정채은 on 6/28/24.
//
/// https://school.programmers.co.kr/learn/courses/30/lessons/131128

import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var xString = X.map { $0 }
    var yString = Y.map { $0 }
    var arr: [String] = []
    
    var xCount = [Character : Int]()
    var yCount = [Character : Int]()
    
    for item in xString {
        xCount[item, default: 0] += 1
    }
    
    for item in yString {
        yCount[item, default: 0] += 1
    }
    
    for (key, xValue) in xCount {
        if let yValue = yCount[key] {
            let commonCount = min(xValue, yValue)
            for _ in 0..<commonCount {
                arr.append(String(key))
            }
        }
    }
    
    if arr.isEmpty {
        return "-1"
    }
    
    if arr.allSatisfy { $0 == "0" } {
        return "0"
    }
    
    arr.sort(by: >)
    let answer = arr.joined(separator: "")
    
    return answer
}
