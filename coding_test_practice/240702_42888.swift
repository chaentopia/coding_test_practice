//
//  240702_42888.swift
//
//
//  Created by 정채은 on 7/2/24.
//

import Foundation

func solution(_ record:[String]) -> [String] {
    let enter = "님이 들어왔습니다."
    let leave = "님이 나갔습니다."
    var member = [String : String]()
    var arr: [[String]] = []
    var result: [String] = []
    
    record.forEach {
        let text = $0.components(separatedBy: " ")
        switch text[0] {
            case "Enter":
            arr.append([text[1], enter])
            member[text[1]] = text[2]
            case "Leave":
            arr.append([text[1], leave])
            case "Change":
            member[text[1]] = text[2]
            default:
               return
        }
    }
    
    arr.forEach {
        if let name = member[$0[0]] {
            result.append(name + $0[1])
        } else {
            return
        }
    }
    
    return result
}
