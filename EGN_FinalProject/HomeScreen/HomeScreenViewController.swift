//
//  HomeScreenViewController.swift
//  EGN_FinalProject
//
//  Created by Angelina Biafore on 1/22/24.
//

import UIKit

class HomeScreenViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var tableView: UITableView!
    
    
    var drones = [Drone](){
        didSet{
            print(drones)
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        queryDrones()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell),
           let detailViewController = segue.destination as? DroneDetailViewController {
            let drone = drones[indexPath.row]
            detailViewController.drone = drone
        }
    }
    
    private func queryDrones(completion: (() -> Void)? = nil) {
        let query = Drone.query()
            .include("droneId")
            .include("status")
            .include("peopleFound")
            .include("droneImageURL")
            .order([.descending("peopleFound")])
        
        query.find { [weak self] result in
            switch result {
            case . success(let drones):
                self?.drones = drones
            case .failure(let error):
                print("Something happened :(")
                print("Query failed with error: \(error)")
            }
            completion?()
        }
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("you tapped me!")
    }
        


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drones.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "droneCell", for: indexPath) as! DroneInfoCell
        
        let drone = drones[indexPath.row]
        cell.configure(with: drone)
        
        return cell
        
        }
}
