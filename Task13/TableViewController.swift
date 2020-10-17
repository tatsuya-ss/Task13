//
//  TableViewController.swift
//  Task13
//
//  Created by 坂本龍哉 on 2020/10/18.
//

import UIKit

class TableViewController: UITableViewController {
    
    private let fruit = ["りんご","みかん","バナナ","パイナップル"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruit.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var Identifier = ""
        if indexPath.row % 2 == 0{
            Identifier = "Cell1"
        }else{
            Identifier = "Cell2"
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier, for: indexPath)

        let label = cell.viewWithTag(2) as! UILabel
        label.text = fruit[indexPath.row]

        return cell
    }

}
