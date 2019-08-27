//
//  REST.swift
//  Carangas
//
//  Created by paulopr4 on 25/08/19.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import Foundation

enum CarError {
    case url
    case taskError(error: Error)
    case noREsponse
    case noData
    case responseStatusCode(code: Int)
    case invalIdJSON
}

enum RESTOperation {
    case save
    case update
    case delete
}

class REST {
    // Criando uma sessão e quando criamos uma maneira de conectar o nosso App em um servidor
    private static let basePath = "https://carangas.herokuapp.com/cars"
    private static let configuration: URLSessionConfiguration = {
        print("sessão ativada\(basePath)")
        let config = URLSessionConfiguration.default
        config.allowsCellularAccess = false
        config.httpAdditionalHeaders = ["Content-Type": "aplication/json"]
        config.timeoutIntervalForRequest = 30.0
        config.httpMaximumConnectionsPerHost = 5
        return config
    }()
    
    private static let session = URLSession(configuration: configuration)                  //URLSession.shared
    
    class func loadBrands(onComplete: @escaping ([Brand]?) -> Void) {
      guard let url = URL(string: "https://fipeapi.appspot.com/api/1/carros/marcas.json") else {
           print("sessão loadBrands")
            onComplete(nil)
            return
            
        }
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onComplete(nil)
                    return
                    
                }
                if response.statusCode == 200 {
                    
                    guard let data = data else {return}
                    do {
                        let  brands = try JSONDecoder().decode([Brand].self, from: data)
                        onComplete(brands)
                    } catch {
                        print(error.localizedDescription)
                        onComplete(nil)
                        
                    }
                    
                } else {
                    print("Algum status inválido pelo servidor")
                    onComplete(nil)
                }
                
            } else {
                print(error!)
                onComplete(nil)
            }
            
        }
        dataTask.resume()
    }
    
    class func loadCars(onComplete: @escaping ([Car]) -> Void, onError: @escaping (CarError) -> Void) {
        guard let url = URL(string: basePath) else {
            onError(.url)
            return
            
        }
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noREsponse)
                    return
                    
                }
                if response.statusCode == 200 {
                    
                    guard let data = data else {return}
                    do {
                        let  cars = try JSONDecoder().decode([Car].self, from: data)
                        onComplete(cars)
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalIdJSON)
                        
                    }
                    
                } else {
                    print("Algum status inválido pelo servidor")
                    onError(.responseStatusCode(code: response.statusCode))
                }
                
            } else {
                print(error!)
                onError(.taskError(error: error!))
            }
            
        }
        dataTask.resume()
    }
    
    class func save(car: Car, onComplete: @escaping (Bool) -> Void) {
        applyOperation(car: car, operation: .save, onComplete: onComplete)
        print("save")
    }
    
    class func update(car: Car, onComplete: @escaping (Bool) -> Void) {
        applyOperation(car: car, operation: .update, onComplete: onComplete)
        print("update")
    }
    
    class func delete(car: Car, onComplete: @escaping (Bool) -> Void) {
        applyOperation(car: car, operation: .delete, onComplete: onComplete)
         print("delete")
    }
    
    private class func applyOperation(car: Car, operation: RESTOperation , onComplete: @escaping (Bool) -> Void) {
         print("applyOperation")
        let urlString = basePath + "/" + (car._id ?? "")
        
        guard let url = URL(string: urlString) else {
            onComplete(false)
            return
        }
        var httpMethod: String = ""
        var request = URLRequest(url: url)
        
        switch operation {
        case .save:
            httpMethod = "POST"
        case .update:
            httpMethod = "PUT"
        case .delete:
            httpMethod = "DELETE"
            
        }
        
        request.httpMethod = httpMethod
        guard let json = try? JSONEncoder().encode(car) else {
            onComplete(false)
            return
        }
        request.httpBody = json
        
        let  dataTask  = session.dataTask(with: request) { (data, response, error) in
            if error == nil {
                guard let response = response as? HTTPURLResponse, response.statusCode == 200, let _ = data else {
                    onComplete(false)
                    return
                }
                
            }else {
                onComplete(false)
            }
        }
        dataTask.resume()
        
    }
    
}


// Get solicita um recurso
// POST cria recurso no servidor
// PUT modifica informacoes
// Delete  remove a informação
// erros no servidor 200/404/500/ etc
