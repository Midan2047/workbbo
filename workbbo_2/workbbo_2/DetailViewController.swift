//
//  ViewController.swift
//  workbbo_2
//
//  Created by 안재은 on 18/04/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var selected_category: UILabel!
    @IBOutlet weak var selected_name: UILabel!
    var name : String?
    var category : String = "지원"
    
    override func viewDidLoad() {
        //자료 형태가 단순하여 이 두가지를 표시하는 것이 최선일것 같습니다.
        super.viewDidLoad()
        selected_name.text = name!
        selected_category.text = category
        // Do any additional setup after loading the view, typically from a nib.
    }


}

