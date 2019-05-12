//
//  ViewController.swift
//  TableViewCourse
//
//  Created by Mohsen Abdollahi on 5/12/19.
//  Copyright © 2019 Mohsen Abdollahi. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource{
    
    
    let myFruit :[[String]] = [["apple","watermelon","pineapple","melon","banana","orang","carrot"],
                               ["Green","Yellow"    ,"Golddn"   ,"Grayg","GYellow","orange","Oragnyell"]
                               ]
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return myFruit.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFruit[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        myCell.textLabel?.text = myFruit[indexPath.section][indexPath.row]
        return myCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

