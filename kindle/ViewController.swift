//
//  ViewController.swift
//  kindle
//
//  Created by marvin evins on 5/12/17.
//  Copyright © 2017 marvin evins. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {
    var books: [Book]?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        tableView.tableFooterView = UIView()
        
        navigationItem.title = "Kindle"
       // view.backgroundColor = .red
        // can provide custom code starting here
        
        
        
        setUpBooks()
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
       let book =  books?[indexPath.row]
        
        
        cell.textLabel?.text = book?.title
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count{
            return count
            
        }
        return  0
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
        
       
        
    

    }
    
}



