import UIKit

var str = "Hello, playground"

//Operadores lógicos 23/06/2019

// Operador E ou AND (&&)
var boughtBanana: Bool = true
var boughtTomato: Bool = true
var boughtApple = false

var isHappy = boughtBanana && boughtTomato && boughtApple

true &&  true
true && false
false && false
false && true

//Operador OU (OR): ||
var likesMeat = false
var likesBeer = true
var canInviteBarbecue = likesBeer || likesMeat

true || false
true || true
false || true
false || false

var grade1 = 8.5
var grade2 = 7.0
let result = (grade1+grade2)/2

// Operador Unário e aquele que opera em apenas um , NEGAÇÃO (NOT) !

var knowSwift = true
var enrolSwiftCourse = !knowSwift

// Operador Ternário

var grade = 7.95
var gradeResult = (grade <= 7.0) ? "Aprovado" : "Reprovado"

// Verificando números pares e impares

let number = 12
let type = (number % 2 == 0) ? "Par" : "Impar"






