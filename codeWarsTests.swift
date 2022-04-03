//
//  codeWarsTests.swift
//  codeWarsTests
//
//  Created by Максим Неверовский on 29.03.2022.
//
import Foundation
import XCTest

class FoldArray{
    func foldArray(array: Array<Int>, times: Int = 1) -> [Int]{
        var nums = array
        for _ in 0..<1{
            for row in 0..<(nums.count / 2) {
                nums[row] += nums.popLast()!
            }
        }
        return nums
    }
}

class codeWarsTests: XCTestCase {
    var foldArray = FoldArray()
    
    func testWhenInputIsEmptyArray() {
        let array = [] as [Int]
        let result = foldArray.foldArray(array: array)
        XCTAssertEqual(result, [])
    }
    
    func testWhenInputIsNegativeAndPositiveNumbers() {
        let array = [-9,9,-8,8,66,23] as [Int]
        let result = foldArray.foldArray(array: array)
        XCTAssertEqual( result, [14,75,0])
    }
    
    
    
}
