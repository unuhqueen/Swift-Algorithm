import Foundation

/*
 Balanced brackets
 https://www.hackerrank.com/challenges/balanced-brackets/problem
 
 A bracket is considered to be any one of the following characters: (, ), {, }, [, or ].

 Two brackets are considered to be a matched pair if the an opening bracket (i.e., (, [, or {) occurs to the left of a closing bracket (i.e., ), ], or }) of the exact same type. There are three types of matched pairs of brackets: [], {}, and ().

 A matching pair of brackets is not balanced if the set of brackets it encloses are not matched. For example, {[(])} is not balanced because the contents in between { and } are not balanced. The pair of square brackets encloses a single, unbalanced opening bracket, (, and the pair of parentheses encloses a single, unbalanced closing square bracket, ].

 By this logic, we say a sequence of brackets is balanced if the following conditions are met:

 It contains no unmatched brackets.
 The subset of brackets enclosed within the confines of a matched pair of brackets is also a matched pair of brackets.
 Given  strings of brackets, determine whether each sequence of brackets is balanced. If a string is balanced, return YES. Otherwise, return NO.
 
 */

/// Time: O(n^2)
func isBalanced(s: String) -> String { // "{[()]}"
    // 🕹 Game on here
    var arr = Array(s)
    
    while arr.isEmpty == false {
        for i in 0..<arr.count {
            if (arr[i] == "{" && arr[i+1] == "}") || (arr[i] == "[" && arr[i+1] == "]") || (arr[i] == "(" && arr[i+1] == ")"){
                arr.remove(at: i)
                arr.remove(at: i)
                break
            } else if i == arr.count - 1 {
                return "NO"
            }
        }
    }
    
    return "YES"
}

/// Time: O(n)
func isBalancedAnswer(s: String) -> String {
    // 앞괄호를 쫙 담아두고, 짝 맞는 뒷괄호가 나오면 없애는 알고리즘
    var openingBrackets = [Character]()
    
    for bracket in s {
        switch bracket {
        case "{", "(", "[":
            openingBrackets.append(bracket)
        case "}":
            // 매치할 앞괄호가 아예 없거나, 짝 맞는 앞괄호가 아닐 경우
            if (openingBrackets.isEmpty || (openingBrackets.last != "{")) {
                return "NO"
            }
            openingBrackets.popLast()
        case ")":
            if (openingBrackets.isEmpty || (openingBrackets.last != "(")) {
                return "NO";
            }
            openingBrackets.popLast()
        case "]":
            if (openingBrackets.isEmpty || (openingBrackets.last != "[")) {
                return "NO";
            }
            openingBrackets.popLast()
        default:
            print("breaking \(bracket)")
        }
    }
    
    return openingBrackets.isEmpty ? "YES" : "NO"
}

print(isBalanced(s: "{[()]}")) // Yes
print(isBalanced(s: "[()]}")) // No
print(isBalanced(s: "{}()(){}((){})({[[({({(){}{}}){}})]{({()}((())))}()]})(({}(()){[][]}){()}(({}{}))())()[](){{((){})}}()([[]])[][]()({}((([()]{})())[][[()]]())){{}}[]{()}()[][]{}([])[]{({})}{}{{}{[[]]}[]{}}{[()]}[]{(([{{[{[]}]}[{}]}]))}(){}{{}}[]((([])([{(){}[(()[]((()(){})({([]({{{[]{}}[({})()({}{([()])()()[]{}})][{[]}]{{}([]({{{(()(({}[[[{{}}]]{{[()]([[{{}([[]][([{{}}(([])[][({()}())()({}[])]{}[])]())[]]){}}[]]])([]({{[[][]{[]}[]]}}{}(){[]}))}()[]((){{}()[{[[()]]}()]}[()]{})}][]{}))())}(())}{{[]}{}}({[([{[{[[[]]]{()}[]}]{}}()((({{{{({{(){}}}[[()]()[]]())({{{[]}{{[[{{[{}]}}[][]]]([][](()(()[]){{}}))([])}}}}[{}{}])[(){{()()}{(())}()}]{(){{}[]{}[][{[]([[]()]{(){[{}[()]][{}{}]{(){}}}{[]}}{[]}[]){[]}[]}][((){}{}[[[[{{}()[([({{[[][{{()}(([[]][[[[[[[{}]][{}]]]()](())[()[][]({({[][][[]{}][]}{})}{({})([[][]({}{[]})])[([([])][[]{([])(({}))}](()[]){[[]]}({}))]}[])()]]]))([{}()()([([[{}][()]][])])][[[{}][][]({[]})][(({{()}}))]])}]]}})])]}]]]])]}}}}}})))])]})}))}}}))})))]}])))")) // Yes
