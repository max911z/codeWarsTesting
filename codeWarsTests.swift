//
//  codeWarsTests.swift
//  codeWarsTests
//
//  Created by Максим Неверовский on 29.03.2022.
//
import Foundation
import XCTest

class FoldArray{
    func foldArray(arr: Array<Int>, times: Int = 1) -> [Int]{
        var nums = arr
        for _ in 0..<times{
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
        let result = foldArray.foldArray(arr: array)
        XCTAssertEqual(result, [])
    }
    
    func testWhenInputIsNegativeAndPositiveNumbers() {
        let array = [-9, 10, -100, -234, 34, 5] as [Int]
        let result = foldArray.foldArray(arr: array)
        XCTAssertEqual( result, [-4, 44, -334])
    }
    
    func testWhenInputIsTimesMoreLengthArray() {
        let array = [1, 2, 3, 4, 5] as [Int]
        let result = foldArray.foldArray(arr: array, times: 10)
        XCTAssertEqual( result, [15])
    }
    
    func testWhenInputIsTimesEqualZero() {
        let array = [1, 2, 3, 4, 5] as [Int]
        let result = foldArray.foldArray(arr: array, times: 0)
        XCTAssertEqual( result, [1, 2, 3, 4, 5])
    }
    
    func testWhenInputArrayModified() {
        let array = [1, 2, 3, 4, 5] as [Int]
        _ = foldArray.foldArray(arr: array, times: 10)
        XCTAssertEqual( array, [1, 2, 3, 4, 5])
    }
        
        
    func testWhenTimesLessZero() {
        let array = [1, 2, 3, 4, 5] as [Int]
        XCTAssertNoThrow(foldArray.foldArray(arr: array, times: -1))
        
    }
    
}
