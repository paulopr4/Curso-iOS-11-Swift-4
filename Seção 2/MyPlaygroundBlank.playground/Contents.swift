import UIKit

var str = "Hello, playground"

 var name = " Paulo Ricardo "
var number = 7 + 5

print("A soma de 7 com 5 é ", number)

var age = 39

var a = 0
for i in 1...15 {
    a = a + i
}
print(a)

let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 120))
view.backgroundColor = .lightGray

let button = UIButton(type: .system)
button.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
button.setTitle("Toque aqui", for: .normal)
view.addSubview(button)




