//
//  DroneDetailViewController.swift
//  EGN_FinalProject
//
//  Created by Angelina Biafore on 1/30/24.
//

import UIKit
import Nuke
import ParseSwift

class DroneDetailViewController: UIViewController {
    
    
    @IBOutlet weak var droneDetailIDLabel: UILabel!
    @IBOutlet weak var droneDetailStatusLabel: UILabel!
    @IBOutlet weak var droneDetailCountLabel: UILabel!
    @IBOutlet weak var droneDetailCoordinatesLabel: UILabel!
    @IBOutlet weak var droneDetailImageView: UIImageView!
    
    
    
    var drone: Drone!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Nuke.loadImage(with: drone.droneImageURL, into: droneDetailImageView)
        droneDetailIDLabel.text = drone.droneId
        droneDetailStatusLabel.text = drone.status
        droneDetailCountLabel.text = drone.peopleFound
        droneDetailCoordinatesLabel.text = drone.coordinates
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
