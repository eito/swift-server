//
//  main.swift
//  swift-server
//
//  Created by Eric Ito on 5/7/16.
//  Copyright © 2016 Eric Ito. All rights reserved.
//

import Foundation
import Vapor

print("Starting server...")

let app = Application()

app.get("/") { request in
 
    print("param: \(request.data.query)")
    return Json(["Hello":"world"])
}

app.get("/:name") { request in
    return Json(["Hello":request.parameters["name"] ?? "World"])
}

app.start(port: 8080)