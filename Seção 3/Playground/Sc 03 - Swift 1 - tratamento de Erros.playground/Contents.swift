    import UIKit
    
    var str = "Hello, playground"
    
    enum LoginError: Error {
        case wrongLogin
        case wrongPassaword
        case noInternetConnection
    }
    
    func login(userName: String, password: String) throws -> Bool {
        
        if checkInternetConnection() {
            if userName != "Paulo" {
                throw LoginError.wrongLogin
                
            }
            if password != "123456"  {
                throw LoginError.wrongPassaword
            }
            return true
        } else {
            throw LoginError.noInternetConnection
        }
    }
    
    func checkInternetConnection() -> Bool {
        return true
    }
    do {
        let loginResult = try login(userName: "Paulo", password: "123456")
    }catch LoginError.wrongLogin {
        print("Nome do usuário inválido!")
    }catch LoginError.wrongPassaword {
        print("senha inválida!")
    } catch LoginError.noInternetConnection {
        print("Sem conexão")
    }
    let loginResult = try! login(userName: "Paulo", password: "123456")
    
    
    
    
    
    
    
    
    
    
    
