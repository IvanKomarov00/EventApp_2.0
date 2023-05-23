//
//  MapSettingsViewController.swift
//  EventApp_2.0
//
//  Created by Ivan Komarov on 23.05.2023.
//

import UIKit

class MapSettingsViewController: UIViewController {
    
    static var shared = UINavigationController(rootViewController: MapSettingsViewController.instantiateInitialStoryboard())

    static func instantiateInitialStoryboard() -> MapSettingsViewController{
        let storyboard = UIStoryboard(name: "MapSettingsView", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController()
        
        return viewController as! MapSettingsViewController
    }
        
    //DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(self.doneButtonTapped))
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(self.cancelButtonTapped))
        
        // Do any additional setup after loading the view.
    }
    
    //Done Button Tapped
    @objc func doneButtonTapped() {
        
        //Save Settings Here
        
        //Dismiss
        self.dismiss(animated: true)
    }
    
    //Cancel Button Tapped
    @objc func cancelButtonTapped(){
        //Dismiss
        self.dismiss(animated: true)
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
