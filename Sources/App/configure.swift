import Leaf
import Vapor
import MySQLKit
import Fluent
import FluentMySQLDriver

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    let configuration = MySQLConfiguration(hostname: "localhost",
                                           port: 3306,
                                           username: "root",
                                           password: "root1234",
                                           database: "hr"
    )
    app.databases.use(.mysql(configuration: configuration), as: .mysql)
    
    
    app.views.use(.leaf)

    

    // register routes
    try routes(app)
}
