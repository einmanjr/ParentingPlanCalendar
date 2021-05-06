//
//  File.swift
//  ParentingPlanCalendar
//
//  Created by Michael Einman on 5/5/21.
//
import UIKit
import Foundation

class MenuListController: UITableViewController {
    
    var menuItems = [
    "Week-to-Week",
    "Every-other-Weekend",
    "Holidays"
    ]
    
    let darkAssColor = UIColor(red: 33/255.0,
                               green: 33/255.0,
                               blue: 33/255.0,
                               alpha: 0.5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = darkAssColor
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = menuItems[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = darkAssColor
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
