//
//  File.swift
//  
//
//  Created by Rodrigo Adauto Ortiz on 30/01/24.
//

import Foundation
import Vapor

struct WebController: RouteCollection {
    
    func boot(routes: Vapor.RoutesBuilder) throws {
        let usersRoute = routes.grouped("users")
        usersRoute.get(use: getAllCustomer)
    }
    
    func getAllCustomer(req: Request) throws -> EventLoopFuture<[Customer]> {
        let data = Customer.query(on: req.db).all()
        let data2 = data.flatMap { customer in
            print(customer)
            return req.eventLoop.makeSucceededFuture(Response())
        }
        return data
    }
    
    
    
    
    
}
