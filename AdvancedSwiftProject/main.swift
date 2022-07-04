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


//Function vs Mutating FUnction

print(classJames.age)
classJames.happyBirthday()
print(classJames.age)


print(structJames.age)
structJames.happyBirthday()
print(structJames.age)

