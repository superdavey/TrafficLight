//
//  ViewController.swift
//  TrafficLight
//
//  Created by David Brown on 11/2/18.
//  Copyright © 2018 David Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // declare the variable trafficLightColour and initialise it to green
    var trafficLightColour = "green"

    // setup Outlets for the 2 labels, one for the colour and one for info
    @IBOutlet weak var colourLabel: UILabel!
    @IBOutlet weak var colourInfo: UILabel!
    
    
    // what happens when the screen is tapped
    @IBAction func buttonPressed(_ sender: Any) {
        updateUI()
    }
    
    // updateUI() cyles through the colour and labels based apon the value of trafficLightColour
    func updateUI() {
        
        // sets the colourLabel to the current value of trafficLightColour and makes the text upper case
        colourLabel.text = trafficLightColour.uppercased()
        
        // depending on the current value of trafficLightColour set the background colour of the view and the colour info label
        if trafficLightColour == "green" {
            view.backgroundColor = .green
            colourInfo.text = "TIME TO GO!"
            trafficLightColour = "amber"
        } else if trafficLightColour == "amber" {
            view.backgroundColor = .orange
            colourInfo.text = "TIME TO SLOW!"
            trafficLightColour = "red"
        } else {
            view.backgroundColor = .red
            trafficLightColour = "green"
            colourInfo.text = "TIME TO STOP!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Setup the view and labels on load
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

