//
//  ViewController2.swift
//  GestureRec
//
//  Created by Athitha Anantharamu on 11/4/16.
//  Copyright © 2016 Athitha Anantharamu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
   /* @IBOutlet weak var tableview: UITableView */

    @IBOutlet weak var tableView: UITableView!

    var  itemtitle = [" Hour Glass "," Briefcase", "Brown Hat - Accessory", "Task Chair - with arm rest", "Basic Calculator", "Graduation Cap"]
    
    var imagearr = ["1", "2", "3", "4", "5", "6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemtitle.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = itemtitle[indexPath.row]
        cell.imageView?.image = UIImage(named: self.imagearr[indexPath.row])
        return cell
        
    }
    
    
    
  }
