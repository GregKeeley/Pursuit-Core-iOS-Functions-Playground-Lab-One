import UIKit

// Question One

// Write a function named double(_:) that takes in a Double and returns that number times two

func double(_ num: Double) -> Double {
    let expectedOutput = num * 2
    return expectedOutput
}

let testCasesOne: [(Double, Double)] = [
    (input: 3.0, expectedOutput: 6.0),
    (input: 0, expectedOutput: 0),
    (input: -2, expectedOutput: -4),
    (input: 99, expectedOutput: 198)
]

for (input, expectedOutput) in testCasesOne {
    let output = double(input)
   assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}



// Question Two

// Write a function named smallest(of:and:) that takes in two Doubles and returns the smaller number

func smallest(of num1: Double, and num2: Double) -> Double {
    if num1 > num2 {
        return num2
    } else {
        return num1
    }
}

let testCasesTwo: [(Double, Double, Double)] = [
    (inputOne: 8.0, inputTwo: 3.0, expectedOutput: 3.0),
    (inputOne: 0, inputTwo: 0, expectedOutput: 0),
    (inputOne: -5, inputTwo: -3, expectedOutput: -5),
    (inputOne: 2.3, inputTwo: 2.03, expectedOutput: 2.03)
]

for (inputOne, inputTwo, expectedOutput) in testCasesTwo {
    let output = smallest(of: inputOne, and: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
}

// Question Three

// Write a function named smallestValue(in:) that takes in an array of Doubles and returns the smallest Double

func smallestValue(in x: [Double]) -> Double {
    var result = x[0]
    for num in x {
        if num < result {
           result = num
        }
    }
    return result
}


let testCasesThree: [([Double], Double)] = [
    (input: [1.0,2,3,4,5,5], expectedOutput: 1.0),
    (input: [6,5,4,3,2,1], expectedOutput: 1),
    (input: [0,0,0,0,0,0,0,0,0,0], expectedOutput: 0),
    (input: [-4,-59,-348,-34,-4], expectedOutput: -348),
]


for (input, expectedOutput) in testCasesThree {
    let output = smallestValue(in: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}
// Assert didn't work because - Cannot convert value of type '[Double]' to expected argument type 'Double'


// Question Four

// Write a function named occurrances(of:in:) that counts how many characters in a String match a specific character.

func occurrances(of inputOne: (Character), in inputTwo: String) -> Int {
   var result = (0)
    for char in inputTwo {
        if char == inputOne {
            result += 1
        }
    }
            return result
}



let testCasesFour: [(Character, String, Int)] = [
    (inputOne: "l", inputTwo: "hello", expectedOutput: 2),
    (inputOne: "r", inputTwo: "hello world!", expectedOutput: 1),
    (inputOne: " ", inputTwo: "Now with some spaces", expectedOutput: 3),
    (inputOne: "E", inputTwo: "cApItAlS aRe DiFfErEnT", expectedOutput: 2),
]

for (inputOne, inputTwo, expectedOutput) in testCasesFour {
    let output = occurrances(of: inputOne, in: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
}


// Question Five

// Write a function called removeNils(from:) that takes an array of optional Ints and returns an array with them unwrapped with any nil values removed.

//func removeNils(from: [Int]?) -> [Int]  {
//    var result = ()
//    for num in from ?? 0 {
//        if num == [Int] {
//            arrNum = num
//        }
//    }
//    return result
//}

let testCasesFive: [([Int?], [Int])] = [
    (input: [1, nil, 9, nil, 10, nil], expectedOutput: [1,9,10]),
    (input: [1, 2, 3], expectedOutput: [1,2,3]),
    (input: [nil], expectedOutput: []),
    (input: [], expectedOutput: []),
]

//for (input, expectedOutput) in testCasesFive {
//    let output = removeNils(from: input)
//    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
//}
