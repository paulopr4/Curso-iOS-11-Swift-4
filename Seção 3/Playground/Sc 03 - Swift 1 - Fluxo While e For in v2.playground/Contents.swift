import UIKit

var str = "Hello, playground"

let grades = [10.0, 9.0, 7.0, 9.5, 5.0, 1.0, 6.5, 10.0, 7.0, 8.0]
for grade in grades {
    print(grades)
    if grade < 0.0 || grade > 10.0 {
        print("Nota inválida")
        break
    }
}
