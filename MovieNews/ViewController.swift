//
//  ViewController.swift
//  MovieNews
//
//  Created by Olzhas Toleugazin on 9/20/20.
//  Copyright © 2020 Olzhas Toleugazin. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    var movieNames = ["Spider Man", "Dauka Loh"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
//   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        
        cell?.lbl.text = movieNames[indexPath.row]
        cell?.img.image = UIImage(named: movieNames[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
        vc?.image = UIImage(named: movieNames[indexPath.row])!
        vc?.name = movieNames[indexPath.row]
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
     
}
