//
//  ViewController.swift
//  kindle
//
//  Created by marvin evins on 5/12/17.
//  Copyright © 2017 marvin evins. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    
    let pages: [Page]
    init(title: String, author: String, pages: [Page]){
        self.title = title
        self.author = author
        self.pages = pages
    }
    
}

class Page {
    let number: Int
    let text: String
   
    
    init(number: Int, text: String){
        self.number = number
        self.text = text
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // can provide custom code starting here
        
        
        let page1 = Page(number: 1, text: "text is for the 1st page")
        let page2 = Page(number: 2, text: "text for second page")
        
       
        
        let pages = [page1, page2]
        
        let book = Book (title: "STeve jobs", author: "walter syen", pages: pages)
        
        print(book.title, book.author)

        print("Title: \(book.title), Author: \(book.author)")
        
//        let firstPage = book.pages[0]
//        
//        if page2.number == 2 {
//             print(page2.text)
//            
//        }
        
//        for page in book.pages{
//            if page.number == 1 {
//            print(page.text)
//        }
        
        
            let book2 = Book(title: "bill gates a bio", author: "michael boc", pages: [
                Page(number: 1, text: "text for page 1"),
                Page(number: 2, text: "text for page 2"),
                Page(number: 3, text: "text for page 3"),
                Page(number: 4, text: "text for page 4")
                
                ])
        
        for book in [book, book2]{
    
            print(book.title)
            for page in book.pages{
                print(page.text)
    
                }
    
        }
            
            
    }

    
}



