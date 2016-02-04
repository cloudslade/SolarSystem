//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Dylan Slade on 2/3/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var diameter: UILabel!
    @IBOutlet weak var dayLength: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var planetImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateWithPlanet(planet: Planet) {
        self.dayLength.text = String(planet.dayLength)
        self.diameter.text = String(planet.diameter)
        self.distance.text = String(planet.millionKMsFromSun)
        self.planetImage.image = UIImage(named: planet.imageName)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
