//
//  WorkTableViewController.swift
//  workbbo_2
//
//  Created by 안재은 on 18/04/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class WorkTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return 1
        return 10
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Category", for: indexPath)

        // Configure the cell...
        // cell.textLabel?.text = "Supremo"
        //cell.detailTextLabel?.text = "Columbia"

        if indexPath.row == 0{
            cell.textLabel?.text = "건설"
            cell.detailTextLabel?.text = "지원"
        }else if indexPath.row == 1{
            cell.textLabel?.text = "환경"
            cell.detailTextLabel?.text = "지원"
        }else if indexPath.row == 2{
            cell.textLabel?.text = "전자"
            cell.detailTextLabel?.text = "지원"
        }else if indexPath.row == 3{
            cell.textLabel?.text = "컴퓨터"
            cell.detailTextLabel?.text = "지원"
        }else if indexPath.row == 4{
            cell.textLabel?.text = "디자인"
            cell.detailTextLabel?.text = "지원"
        }else if indexPath.row == 5{
            cell.textLabel?.text = "수학"
            cell.detailTextLabel?.text = "지원"
        }else if indexPath.row == 6{
            cell.textLabel?.text = "화학"
            cell.detailTextLabel?.text = "지원"
        }else if indexPath.row == 7{
            cell.textLabel?.text = "생명"
            cell.detailTextLabel?.text = "지원"
        }else if indexPath.row == 8{
            cell.textLabel?.text = "경영"
            cell.detailTextLabel?.text = "지원"
        }else if indexPath.row == 9{
            cell.textLabel?.text = "마케팅"
            cell.detailTextLabel?.text = "지원"
        }

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
