import Foundation

// https://www.fullstack.cafe/interview-questions/stacks

/*
 Giving a String, write a function that reverses the String
 using a stack.
 */

func solution(_ text: String) -> String {
    // Do your work here...
    var textArray = Array(text)
    var reversedText = ""
    
    for _ in 0..<textArray.count {
        reversedText = reversedText + String(textArray.popLast()!)
    }
    
    return reversedText
}

print(solution("abc")) // cba
print(solution("Would you like to play a game?"))
