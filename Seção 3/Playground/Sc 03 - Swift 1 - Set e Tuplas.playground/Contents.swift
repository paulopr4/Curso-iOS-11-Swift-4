import UIKit

var str = "Hello, playground"

// Set : Coleção NÃO-ORDENADA  de objetos de mesmo tipo, que não podem ser repetir

var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Jurassic Parke",
    "De Volta para o Futuro",
    
]

var movies2 = Set<String>() // Declarando de forma explicita um Set

movies.insert("Homem-Aranha: De Volta para o lar") // inserindo elementos no set(true)
print(movies.count)

movies.insert("Homem-Aranha: De Volta para o lar") // Não aceita objetos repetidos (false)
print(movies.count)

//Um pouco sobre Tuplas

let result = movies.insert("Homem-Aranha: De Volta para o lar")
print(result.inserted, result.memberAfterInsert)

movies.remove("Homem-Aranha: De Volta para o lar")
print(movies)

for movies in movies { // Percorrendo elementos com o For
    print(movies)
}

if movies.contains("Matrix") {
    print("Matrix está na minha lista de iflmes favoritos!!") // Verificando se um objeto consta la lista
}

// Algumas funcionalidade do SET  usando Intersection

var myWifeMovies: Set<String> = [
    "De Repente 30",
    "Mensagem para você",
    "Sintonia de Amor",
    "De Volta para o Futuro",
    "Jurassic Parke"
]
// verificando o que há de igual em duas listas de objetos

print("---------------Usando Set e intersection")

let favoriteMovies = movies.intersection(myWifeMovies)
print(favoriteMovies)

print("---------------Criando uma coleção juntando todos os filmes")

let allMovies = movies.union(myWifeMovies)
print(allMovies)

print("---------------Removendo objeto similiares em SET")

movies = movies.subtracting(myWifeMovies)
print(movies)

// Tuplas o que são e para que server ? Serve para combinar elementos de tipos diferentes
// Criando uma Tupla declarando seu tipo, e atribuindo nome aos tipos e depois acessando cada elemento
let address: (type: String, name: String, number: Int, city: String, state: String, zipCode: String) = ("Av", "Paulista", 1578, "São Paulo", "SP", "01310-200")

print(address.number)

let (type, name, _, _, state, cep) = address

print(type)
print(name)


