//
//  SecondViewController.swift
//  sideMenuDemo
//
//  Created by Visilean Meet on 18/01/22.
//
import SideMenu
import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func TapMenu(_ sender: Any) {
        let menu = SideMenuNavigationController(rootViewController: MenuListController())
       
        present(menu, animated: true, completion: nil)
    }
    


}
