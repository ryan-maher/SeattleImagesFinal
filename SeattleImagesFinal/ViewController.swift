//
//  ViewController.swift
//  SeattleImagesFinal
//
//  Created by Ryan on 12/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let arr = ["Seattle1","Seattle2","Seattle3","Seattle4","Seattle5","Seattle6","Seattle7","Seattle8","Seattle9","Seattle10"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("SeattleImagesTableViewCell", owner: self)?.first as! SeattleImagesTableViewCell
        cell.imageView?.image = UIImage(named: "Seattle\(indexPath.row)")
        cell.lblSeattleImage.text = arr[indexPath.row]
        return cell
    }

}

