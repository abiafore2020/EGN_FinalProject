//
//  DroneInfoCell.swift
//  EGN_FinalProject
//
//  Created by Angelina Biafore on 1/25/24.
//

import UIKit

class DroneInfoCell: UITableViewCell {
    
    
    @IBOutlet weak var droneLabel: UILabel!
    @IBOutlet weak var droneStatusLabel: UILabel!
    @IBOutlet weak var peopleFoundLabel: UILabel!
    @IBOutlet weak var droneImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with drone: Drone){
        droneLabel.text = drone.droneId
        droneStatusLabel.text = drone.status
        peopleFoundLabel.text = drone.peopleFound
        //drone.droneImageView = COME BACK TO
    }

}