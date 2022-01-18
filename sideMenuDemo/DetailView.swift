//
//  DetailView.swift
//  sideMenuDemo
//
//  Created by Visilean Meet on 18/01/22.
//

import UIKit

class DetailView: UIViewController {

    @IBOutlet var DetailLabel: UILabel!
        var DetailLabelTemp = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        DetailLabel.text = DetailLabelTemp
    }

}
