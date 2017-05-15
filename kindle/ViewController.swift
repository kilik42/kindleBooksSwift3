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
    var books: [Book]?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // can provide custom code starting here
        setUpBooks()
        
    }
    
    
    
    func setUpBooks(){
        let page1 = Page(number: 1, text: "text is for the 1st page")
        let page2 = Page(number: 2, text: "text for second page")
        
        
        
        let pages = [page1, page2]
        
        let book = Book (title: "STeve jobs", author: "walter syen", pages: pages)
        
        print(book.title, book.author)
        
        print("Title: \(book.title), Author: \(book.author)")
        
        
        
        
        let book2 = Book(title: "bill gates a bio", author: "michael boc", pages: [
            Page(number: 1, text: "text for page 1"),
            Page(number: 2, text: "text for page 2"),
            Page(number: 3, text: "text for page 3"),
            Page(number: 4, text: "text for page 4")
            
            ])
        
        self.books = [book, book2]
        
        guard let books = self.books else{
            return
        }
        
        //        for book in books{
        //
        //            print(book.title)
        //            for page in book.pages{
        //                print(page.text)
        //
        //            }
        //
        //        }
        
        
        
        
        if let unwrappedBooks = self.books{
            for book in unwrappedBooks{
                
                print(book.title)
                for page in book.pages{
                    print(page.text)
                    
                }
                
            }
            
            
        }
        
    

    }
    
}



