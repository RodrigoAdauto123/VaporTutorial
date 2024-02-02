//
//  File.swift
//  
//
//  Created by Rodrigo Adauto Ortiz on 31/01/24.
//

import Vapor
import Fluent

final class Customer: Model, Content {

    static let schema = "customer"
    
    @ID(key: .id)
    var id: UUID?
 
    @Field(key: "name")
    var name: String
    
    @Field(key: "occupation")
    var ocupacion: String
}
