//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Frank Solleveld on 29/10/2019.
//  Copyright © 2019 Frank Solleveld. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        get {
            [
                Meal(name: "Breakfast", food: [
                    Food(name: "Croissant", description: "A lovely croissant"),
                    Food(name: "Coffee", description: "A lovely cup of coffee"),
                    Food(name: "Jus'D Orange", description: "A lovely glass of Orange")
                ]),
                Meal(name: "Lunch", food: [
                    Food(name: "Bolognese", description: "A lovely pasta bolgonese"),
                    Food(name: "Milk", description: "A glass of milk"),
                    Food(name: "Cup A Soup", description: "Some Cup A Soup to survive the day")
                ]),
                Meal(name: "Dinner", food: [
                    Food(name: "Hutspot Andijvie", description: "Typical Dutch cuisine"),
                    Food(name: "Meat", description: "Mashed meat to combine with the hutspot"),
                    Food(name: "Yoghurt", description: "A yoghurt for dessert.")
                ]),
            ]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = "\(food.name)"
        cell.detailTextLabel?.text = "\(food.description)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
    
    
}
