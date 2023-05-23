//
//  MapViewController.swift
//  EventApp_2.0
//
//  Created by Ivan Komarov on 20.05.2023.
//

import Foundation
import UIKit

class MapViewController: UIViewController {

    static func instantiateInitialStoryboard() -> MapViewController{
        let storyboard = UIStoryboard(name: "MapView", bundle: nil)
        let viewControleer = storyboard.instantiateInitialViewController()
        
        return viewControleer as! MapViewController
    }
    
    
 
    @IBOutlet weak var backgroungSettings: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        updateBackgroundSettings(sender: nil)
        // Do any additional setup after loading the view.
    }
    
    //Background Settings
    func updateBackgroundSettings(sender: Any?){
        backgroungSettings.backgroundColor = backgroungSettings.backgroundColor?.withAlphaComponent(0.3)
        backgroungSettings.layer.cornerRadius = backgroungSettings.bounds.height / 2
        
        if let _ = sender as? UIButton{
            UIView.animate(withDuration: 0.3, animations: {
                self.backgroungSettings.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                self.backgroungSettings.transform = CGAffineTransform.identity
            })
        }
        
    }

    @IBAction func settingsButtonTapped(_ sender: UIButton) {
        updateBackgroundSettings(sender: sender)
        
        
        ///Presenting Sheet VC
        let viewCoontroller = MapSettingsViewController.shared
        
        //Custom Detent
        let customDetent = UISheetPresentationController.Detent.custom(identifier: .init("myCustomDetent")) {
            [weak self] context in
            guard let self = self else{return 0.0}
            return self.view.frame.height / 3
        }
        
        if let sheet = viewCoontroller.sheetPresentationController{
            //sheet.detents = [customDetent]
            sheet.detents = [.medium()]

        }
        present(viewCoontroller, animated: true)
        
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
