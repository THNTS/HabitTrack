//
//  FirstViewController.swift
//  HabitTrack_1
//
//  Created by Даниил Бабин on 14.02.2020.
//  Copyright © 2020 Babin Daniil. All rights reserved.
//

import UIKit


@objc(ToDoListTableViewController) class ToDoListTableViewController: UITableViewController {

    
    var toDoItems: NSMutableArray = []

    func loadInitialData(){

        let item1 = SingleHabit(name: "Buy milk")
        self.toDoItems.add(item1)

        let item2 = SingleHabit(name: "Buy eggs")
        self.toDoItems.add(item2)

        let item3 = SingleHabit(name: "Read a book")
        self.toDoItems.add(item3)

    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        loadInitialData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) ->

    Int {

    return self.toDoItems.count

    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath:

    NSIndexPath!) -> UITableViewCell! {

    let CellIndentifier: NSString = "ListPrototypeCell"

        let cell : UITableViewCell=tableView.dequeueReusableCell(withIdentifier: CellIndentifier as String)!

        let todoitem: SingleHabit = self.toDoItems.object(at: indexPath.row) as! SingleHabit

        cell.textLabel?.text = todoitem.itemName as String

    return cell

    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: false)
        var tappedItem: SingleHabit = self.toDoItems.object(at: indexPath.row) as! SingleHabit
        tappedItem.completed = !tappedItem.completed
        tableView.reloadData()
        
    }

}

