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
    var tutorial: [Tutorial]?
    
    
    init(bookname: String?, level: Int?, title: String?,  cover: String?, banner: String?, tutorial: [Tutorial]? ) {
        self.bookname = bookname
        self.title = title
        self.level = level
        self.cover = cover
        self.banner = banner
        self.tutorial = tutorial
    }
}

struct Tutorial {
    var image: String?
    var text: String?
    var book: String?
    var t: String?
    var level: String?
    var length: Int?

    init(book: String?,t: String?,image: String?,text: String?,level: String?,length: Int ) {
        self.book = book
        self.t = t
        self.image = image
        self.text = text
        self.level = level
        self.length = length
    }
}





