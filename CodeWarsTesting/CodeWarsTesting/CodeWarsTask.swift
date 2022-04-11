//
//  ViewController.swift
//  CodeWarsTesting
//
//  Created by Максим Неверовский on 08.04.2022.
//

import Foundation

class CodeWarsTask{
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

