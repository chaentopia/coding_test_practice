import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var newArray = words
    var member = 0 // 틀린 멤버 번호
    var wrong = 0 // 틀린 멤버 몇 차례
    var count = 0
    
    // 앞에서부터 하면 겹치는 쌍이 두 개 이상 있을 때 더 앞에 처음 등장하는 단어에 해당하는 번째로 반환함
    // 뒤에서부터 판단
//    newArray.reverse()
//    for i in newArray {
//        print(newArray)
//        if let index = words.lastIndex(of: i) {
//            count = index + 1
//            break
//        }
//    }
    
    for i in 0..<words.count {
        let last = words[i].suffix(1)
        let first = words[i+1].prefix(1)
        print(last)
        print(first)
        if last != first {
            count = i + 2
            break
        }
    }
    
    member = (count % n == 0) ? n : count % n
    wrong = (count / n) + 1
    
    print(count)
    print([member, wrong])
    return [member, wrong]
}
