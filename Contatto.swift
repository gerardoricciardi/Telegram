//
//  Contatto.swift
//  Telegram
//
//  Created by Pagliaro Antonio on 24/09/2017.
//  Copyright © 2017 Ricciardi Gerardo. All rights reserved.
//

import Foundation

class Contatto{
//     var foto:UIImage!
    var nome : String!
    var lastMessage : String!
    var foto:String!
    
    init(nome: String, lastMessage:String,foto:String){
        self.nome=nome
        self.lastMessage=lastMessage
        self.foto=foto
    }
    
}
