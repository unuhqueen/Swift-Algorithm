//
//  main.swift
//  Swift Algorithm
//
//  Created by Seungwon Choi on 2024/01/28.
//

import Foundation

final class FileIO {
    // 입력을 byte 배열로 바꾸어서 저장
    private var buffer: [UInt8]
    // 현재 읽어야 할 byte 위치 저장
    private var index: Int = 0
    
    // FileHandle: 파일 데이터에 접근
    // standardInput: 표준 입력인 키보드 입력에 대한 인스턴스
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        // 현재 파일을 끝까지 읽어와서 buffer에 저장
        // 마지막에 0을 추가해서 buffer의 끝부분임을 알림
        self.buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)]
    }
    
    // 인라인 함수: 함수를 사용할 때 호출 -> 실행의 두 가지 단계를 따르는데
    // 컴파일 할 때 함수의 코드를 호출할 자리에 바로 삽입하여 호출이 필요 없게 함
    
    // byte를 읽어오는 함수
    @inline(__always) private func read() -> UInt8 {
        // 읽고 나서 index 추가
        defer { index += 1 }
        
        return buffer[index]
    }
    
    // 연속된 byte 값을 Int로 변환해서 읽어오는 함수
    @inline(__always) func readInt() -> Int {
        // 결과를 저장하는 변수
        var sum = 0
        // 현재 index의 byte값
        var now = read()
        // 부호를 저장하는 변수
        var isPositive = true
        
        // 공백과 줄바꿈 무시
        while now == 10
                || now == 32 { now = read() }
        
        // "-"가 나오면 음수 처리
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        
        // 0 ~ 9 에 해당하는 byte일 경우
        while now >= 48, now <= 57 {
            // 현재까지의 합 * 10하고 다음 숫자 더하기 (자릿수 적용)
            sum = sum * 10 + Int(now-48)
            // 다음 byte 읽기
            now = read()
        }
        
        // 부호까지 계산해서 반환
        return sum * (isPositive ? 1:-1)
    }
    
    // String으로 읽어오는 함수
    @inline(__always) func readString() -> String {
        var now = read()
        
        // 공백과 줄바꿈 무시
        while now == 10 || now == 32 { now = read() }
        
        // 공백과 줄바꿈이 아니라면 해당 index 기록
        // index는 다음에 읽을 byte를 가리키고 있으므로 -1
        let beginIndex = index-1
        
        // 공백, 줄바꿈, 혹은 파일의 끝이 나오기 전까지 read
        while now != 10,
              now != 32,
              now != 0 { now = read() }
        
        // 공백, 줄바꿈, 혹은 파일의 끝이 나와서 while문을 벗어나면
        // 지금 index까지 Array를 잘라서 String으로 타입 변환
        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }
}


let fileIO = FileIO()
let numberOfTestcase = fileIO.readInt()

for _ in 0..<numberOfTestcase {
    let firstNumber = fileIO.readInt()
    let secondNumber = fileIO.readInt()
    print(firstNumber + secondNumber)
}
