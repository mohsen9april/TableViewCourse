//
//  ViewController.swift
//  TableViewCourse
//
//  Created by Mohsen Abdollahi on 5/12/19.
//  Copyright © 2019 Mohsen Abdollahi. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource{
    
    let myTitle: [String] = ["Fruites","Color of fruites"]
    
    let myFruit :[[String]] = [["apple","watermelon","pineapple","melon","banana","orange","carrot"],
                               ["Green","Yellow"    ,"Golddn"   ,"Grayg","GYellow","orange","Oragnyell"]
                               ]
    
    let myImages: [String] = ["apple","watermelon","pineapple","melon","banana","orange","carrot"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return myFruit.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFruit[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        myCell.textLabel?.text = myFruit[indexPath.section][indexPath.row]
        myCell.imageView?.image = UIImage(named: (myImages[indexPath.row] + ".png"))
        return myCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return myTitle[section]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

