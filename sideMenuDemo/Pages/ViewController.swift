//
//  ViewController.swift
//  sideMenuDemo
//
//  Created by Visilean Meet on 17/01/22.
//
import SideMenu
import UIKit

class ViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
      
   
        
    }

    @IBAction func Tapmeu(_ sender: UIBarButtonItem) {
        let menu = SideMenuNavigationController(rootViewController: MenuListController())
       
        present(menu, animated: true, completion: nil)
    }
    
    
}
