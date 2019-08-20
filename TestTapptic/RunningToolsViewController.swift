//
//  RunningToolsViewController.swift
//  TestTapptic
//
//  Created by Apptree DEV on 18/08/2019.
//  Copyright © 2019 Apptree DEV. All rights reserved.
//

import UIKit

class RunningToolsViewController: UIViewController {
    
    var tools = [Tool]()

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()

        // Do any additional setup after loading the view.
    }
    
    
    func setupData(){
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UINib(nibName: "MyCustomCell", bundle: nil), forCellReuseIdentifier: "MyCustomCell")
        
    }

    
    @IBAction func stopAllTools(_ sender: Any) {
        for tool in tools{
            let random = Int.random(in: 0 ..< 5)
            
            if random != 0{
                tool.isRunning = false
            }
        }
        myTableView.reloadData()
    }
    
    
    
    

}

extension RunningToolsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tools.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath) as! MyCustomCell
        
        let tool = tools[indexPath.row]
        
        cell.toolName.text = "\(tool.id) (\(tool.type.description))"
        cell.unitMeasure.text = "\(tool.unitMeasure) \(tool.type.unit)"
        cell.isRunningSwitch.isOn = tool.isRunning
        
        if tool.type == .pneumatic{
            cell.isRunningSwitch.isUserInteractionEnabled = false
            cell.unitMeasure.text = ""
        }
        
        return cell
    }
    
    
}
