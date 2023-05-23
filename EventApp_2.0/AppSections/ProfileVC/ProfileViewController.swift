//
//  ProfileViewController.swift
//  EventApp_2.0
//
//  Created by Ivan Komarov on 20.05.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    static func instantiateInitialStoryboard() -> ProfileViewController{
        let storyboard = UIStoryboard(name: "ProfileView", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController()
        
        return viewController as! ProfileViewController
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
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
