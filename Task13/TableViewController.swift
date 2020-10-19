//
//  TableViewController.swift
//  Task13
//
//  Created by 坂本龍哉 on 2020/10/18.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var fruit = ["りんご","みかん","バナナ","パイナップル"]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruit.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Identifier: String
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

    @IBAction func plusButton(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    @IBAction func cancel(segue: UIStoryboardSegue){
        
    }
    @IBAction func exit(segue: UIStoryboardSegue){
       
        let tuikaView = segue.source as? TuikaViewController
        self.fruit.append((tuikaView?.addName!)!)
        self.tableView.reloadData()
    }
    
}
