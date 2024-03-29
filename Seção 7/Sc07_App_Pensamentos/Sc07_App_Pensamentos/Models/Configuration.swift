//
//  Configuration.swift
//  Sc07_App_Pensamentos
//
//  Created by paulopr4 on 30/07/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import Foundation

enum UserDefaultsKeys: String {
    case timeInverval = "timveInverval"
    case colorScheme = "colorScheme"
    case autorefresh = "autorefresh"
}

class Configuration {
    
    let defaults = UserDefaults.standard
    static var  shared: Configuration = Configuration()
    
    var timeInverval: Double  {
        get {
            return defaults.double(forKey: UserDefaultsKeys.timeInverval.rawValue) // método usado para recuperar valor no Userdefauts
            
            }
        
        set {
           defaults.set(newValue, forKey: UserDefaultsKeys.timeInverval.rawValue)
        }
    }
    
    var colorScheme: Int  {
        get {
            return defaults.integer(forKey: UserDefaultsKeys.colorScheme.rawValue) // método usado para recuperar valor no Userdefauts
            
        }
        
        set {
            defaults.set(newValue, forKey: UserDefaultsKeys.colorScheme.rawValue)
        }
    }
    
    var autorefresh: Bool  {
        get {
            return defaults.bool(forKey: UserDefaultsKeys.autorefresh.rawValue) // método usado para recuperar valor no Userdefauts
            
        }
        
        set {
            defaults.set(newValue, forKey: UserDefaultsKeys.autorefresh.rawValue)
        }
    }
    
    
    private init() {
        if defaults.double(forKey: UserDefaultsKeys.timeInverval.rawValue) == 0 {
            defaults.set(8.0, forKey: UserDefaultsKeys.colorScheme.rawValue)
        }
        
        
    }
    
    
}


// Bundle é diretório no sistema de arquivos que agrupa código executavel e demais recurso
// como imagens,sons, etc em um único lugar, com uma estrutura hieráquica padrão.

// É nele que se encontram todos os recursos locais susados em um aplicativo, bem como o info.plist

// Cada tipo de recurso fica localizado em uma pasta apropriada, como por exemplo. a pasta resource para
// imagens e sons. Estas pasta podem ser localizadas.

// JSON: javaScript Objetc notation
// É um formato padrão aberto que utliza texto legível a humanos para transmitir objetos de dados,
// co,postos de conjuntos chave-valor.
//É o formato de dados mais comuemnte utilizado para comunucação assíncrona navegador/servidor.
