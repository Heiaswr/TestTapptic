//
//  ViewController.swift
//  TestTapptic
//
//  Created by Apptree DEV on 18/08/2019.
//  Copyright © 2019 Apptree DEV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hydraulicLabel: UILabel!
    @IBOutlet weak var electricLabel: UILabel!
    @IBOutlet weak var pneumaticLabel: UILabel!
    
    @IBOutlet weak var hydraulicTextField: UITextField!
    @IBOutlet weak var pneumaticTextField: UITextField!
    @IBOutlet weak var electricTextField: UITextField!
    
    var tools = [Tool]()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        // Do any additional setup after loading the view.
    }

    
    
    func setupData(){
        hydraulicLabel.text = "Hydraulic"
        electricLabel.text = "Electric"
        pneumaticLabel.text = "Pneumatic"
        
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let runningVC = segue.destination.children.first as? RunningToolsViewController{
            runningVC.tools = tools
        }
    }
    
    @IBAction func hydraulicAdd(_ sender: Any) {
        if let text = hydraulicTextField.text{
            let tool = Tool(id: text, type: .hydraulic)
            tool.unitMeasure = Int.random(in: 0 ..< 100)
            tools.append(tool)
        }
        
    }
    
    @IBAction func electricAdd(_ sender: Any) {
        if let text = electricTextField.text{
            let tool = Tool(id: text, type: .electric)
            tool.unitMeasure = Int.random(in: 0 ..< 100)
            tools.append(tool)
        }
    }
    @IBAction func pneumaticAdd(_ sender: Any) {
        if let text = pneumaticTextField.text{
            let tool = Tool(id: text, type: .pneumatic)
            tools.append(tool)
        }
    }
}

