//
//  ScheduleViewController.swift
//  EventApp_2.0
//
//  Created by Ivan Komarov on 20.05.2023.
//

import UIKit

class ScheduleViewController: UIViewController {

    static func instantiateInitialStoryboard() -> ScheduleViewController{
        let storyboard = UIStoryboard(name: "ScheduleView", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController()
        
        return viewController as! ScheduleViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
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
