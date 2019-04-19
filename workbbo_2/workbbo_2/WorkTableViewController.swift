//
//  WorkTableViewController.swift
//  workbbo_2
//
//  Created by 안재은 on 18/04/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class WorkTableViewController: UITableViewController {
    //prepare에서 인자로 넘겨주기 위해서 list에 값들을 담았습니다.
    //detailText같은 경우 모두 지원 으로 되어 있기에
    //따로 리스트로 추가하지않고 그냥 DetailViewController에서
    //모두 지원으로 통일 시켰습니다.
    var list :[String] = ["건설", "환경", "전자", "컴퓨터","디자인","수학","화학","생명","경영","마케팅"]
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
/*
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
*/
        //위 함수는 cell하나당 한번씩 실행되기 때문에
        //위와 같이 indexPath.row를 비교하지 않고 list형태의
        //자료구조를 사용하여 index를 통해 접근하는 것이
        //효율적일것 같습니다.
        cell.textLabel?.text = list[indexPath.row]
        cell.detailTextLabel?.text = "지원"
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! DetailViewController
        let selectedCategory = list[self.tableView.indexPathForSelectedRow!.row]
        destVC.name = selectedCategory
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 

}
