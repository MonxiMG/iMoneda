//
//  codigo.swift
//  IMoneda
//
//  Created by Monse Muñoz Garcia
//

import Foundation

// Enumeración con las dos posibilidades
enum Tirada {
    case cara
    case cruz
}

// Clase Moneda con un método para lanzar la moneda
class Moneda {
    func lanzar() -> Tirada {
        let resultadoAleatorio = Bool.random()
        if resultadoAleatorio {
            return Tirada.cara
        } else {
            return Tirada.cruz
            // = return .cruz
        }
        
        /*
         func lanzar() -> Tirada {
             let valor = Int.random(in: 0...1)
             return valor == 0 ? .cara : .cruz
         }
         */
    }
}
