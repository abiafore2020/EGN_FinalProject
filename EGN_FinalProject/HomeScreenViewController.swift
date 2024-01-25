//
//  ViewController.swift
//  EGN_FinalProject
//
//  Created by Angelina Biafore on 1/22/24.
//

import UIKit

class HomeScreenViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    
    let names = [
    "John Smith",
    "Dan Smith",
    "Jason Smith",
    "Mary Smith"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension HomeScreenViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("you tapped me!")
    }
    
}

extension HomeScreenViewController: UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "droneCell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}
