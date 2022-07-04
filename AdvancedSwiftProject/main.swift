//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by Ömer Faruk Kılıçaslan on 4.07.2022.
//

import Foundation

let classJames = MusicianClass(name: "James", age: 50, instrument: "Guitarre")

//print(classJames.age)

var structJames = MusicianStruct(name: "James", age: 50, instrument: "Guitarre")

//print(structJames.age)
//
////struct immutable
////class mutable

classJames.age = 51

//print(classJames.age)
structJames.age = 51

//print(structJames.age)


//reference vs value types

let copyOfClassJames = classJames
var copyOfStructJames = structJames

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

copyOfStructJames.age = 52
copyOfClassJames.age = 52

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

//Reference type -> Class
//copy -> Same Object new reference -> 1 object 2 references

//Value Type -> Struct
//Copy -> new object -> 2 Objects


//Function vs Mutating Function

//print(classJames.age)
//classJames.happyBirthday()
//print(classJames.age)
//
//
//print(structJames.age)
//structJames.happyBirthday()
//print(structJames.age)


//TUPLE

let myTuple = (1,3)
print(myTuple.0)

var myTuple2 = (1,3,5)
myTuple2.2 = 10
print(myTuple2.2)

let myTuple3 = ("Atil", 100)

let myTuple4 = (10, [10,20,30])
print(myTuple4.1[1])

let myString: String?

let predefinedTuple: (String, String, Int)

predefinedTuple.0 = "Omer"
predefinedTuple.1 = "KUF"
predefinedTuple.2 = 21

print(predefinedTuple)


let newTuple = (name:"James", metallica: true)
print(newTuple.name)
print(newTuple.metallica)
print(newTuple)


// Guard let vs If let

//Guard -> Negative
//IF -> Positive

let myNumber = "Apple"


func convertToIntegerGuard(string: String) -> Int {
    
    guard let myInteger = Int(string) else {return 0}
    return myInteger
}

func convertToIntegerIF(string:String) -> Int {
    
    if let myInteger = Int(string) {
        return myInteger
    }
    else{
        return 0
    }
}

//print(convertToIntegerIF(string: myNumber))
//print(convertToIntegerGuard(string: myNumber))


//Switch

let myNum = 11

//remainder

let myRemainder = myNum % 4
print(myRemainder)

if myRemainder == 1 {
    print("it's 1")
}
else if myRemainder == 2 {
    print("it's 2")
}
else if myRemainder == 3 {
    print("it's 3")
}


switch myRemainder {
    
case 0:
    print("its 0// No error occured while calculating remainder")
case 1...3:
    print("its 1--3")
default:
    break
}

//Breakpoint

var x = 5

print(x)

x += 1

print(x)
