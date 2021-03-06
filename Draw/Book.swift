//
//  Book.swift
//  Draw
//
//  Created by Aidan Sliney on 09/10/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit

struct Book {
    var bookname: String?
    var level: Int?
    var title: String?
    var cover: String?
    var banner: String?
    var key: String?
    var tutorial: [Tutorial]?
    
    
    init(key: String?, bookname: String?, level: Int?, title: String?, cover: String?, banner: String?, tutorial: [Tutorial]? ) {
        self.bookname = bookname
        self.title = title
        self.level = level
        self.cover = cover
        self.banner = banner
        self.tutorial = tutorial
        self.key = key
    }
}

struct Tutorial {
    var image: String?
    var text: String?
    var book: String?
    var bookNumber: Int?
    var t: String?
    var level: String?
    var length: Int?
    var key: String?

    init(key: String?,bookNumber: Int?, book: String?,t: String?,image: String?,text: String?,level: String?,length: Int ) {
        self.book = book
        self.bookNumber = bookNumber
        self.t = t
        self.image = image
        self.text = text
        self.level = level
        self.length = length
        self.key = key
    }
}

struct MyVariables {
    static var yourVariable = "someString"
}





