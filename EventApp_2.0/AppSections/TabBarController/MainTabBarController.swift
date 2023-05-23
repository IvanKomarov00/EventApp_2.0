//
//  MainTabBarController.swift
//  EventApp_2.0
//
//  Created by Ivan Komarov on 20.05.2023.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController{
    
    // MARK: DIDLOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBarAppearance.backgroundColor = .systemBackground
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        tabBar.tintColor = .systemBlue
        
        generateTabBar()
        
        
    }
    
    func updateUI(){
        
    }
    
    private func generateTabBar(){
        viewControllers = [
            generateVC(viewController:  MapViewController.instantiateInitialStoryboard(),
                       title: "Map",
                       image: UIImage(systemName: "map")!),
            generateVC(viewController: ScheduleViewController.instantiateInitialStoryboard(),
                       title: "Schedule",
                       image: UIImage(systemName: "line.3.horizontal")!),
            generateVC(viewController: ProfileViewController.instantiateInitialStoryboard(),
                       title: "Profile",
                       image: UIImage(systemName: "person.circle")!)
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UINavigationController{
        
        let navigationVC = UINavigationController(rootViewController: viewController)
        //Setup
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        viewController.navigationItem.title = title + " Controller"
        
        
        return navigationVC
    }
    

}
