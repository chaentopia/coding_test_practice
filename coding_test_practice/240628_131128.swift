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
    
    xString.forEach {
        
    }
    
    if arr.isEmpty {
        return "-1"
    }
    
    arr.sort(by: <)
    let answer = arr.joined(separator: "")
    
    return answer
}
