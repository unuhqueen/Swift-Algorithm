import Foundation

/*
 When someone searches their contacts based on a phone number, it's nice when a list
 of contact pops up.
 
 Write an algorithm that searches you contacts for phone number strings, and returns:
  - NO CONTACT if contact can't be found
  - A contact if a contact is found
  - The first alphabetized contact if there are multiple
 
 A = ["pim", "pom"]             // Contacts (return one of these)
 B = ["999999999", "777888999"] // Phone numbers for each contact A[i] = B[i]
 P = "88999"                    // Search phrase

 Answer should be correct. Don't worry about performance.
 */

public func solution(_ A : [String], _ B : [String], _ P : String) -> String {
    // do your work here
    var phoneDict = [String: String]()
    
    for i in 0..<A.count {
        phoneDict.updateValue(B[i], forKey: A[i])
    }
    
    let condition: ((String, String)) -> Bool = {
        $0.1.contains(P)
    }
    
    let searchResult = phoneDict.filter(condition).keys
    
    if searchResult.isEmpty {
        return "NO CONTACT"
    } else {
        return searchResult.sorted()[0]
    }
}

let A = ["pim", "pom"]
let B = ["999999999", "777888999"]
let P = "88999"

print(solution(A, B, P))   // pom
print(solution(["sander", "amy", "ann"], ["12345", "23456", "123"], "1"))  // ann
print(solution(["ada,", "eva", "leo"], ["1212", "1111", "4444"], "112"))   // NO CONTACT

// edge cases
print(solution([String](), [String](), ""))
print(solution(A, B, ""))

public func solutionDict(_ A : [String], _ B : [String], _ P : String) -> String {
    // 🕹 Game on here
    return ""
}



