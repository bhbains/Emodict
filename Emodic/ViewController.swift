//
//  ViewController.swift
//  Emodic
//
//  Created by Brian on 6/7/17.
//  Copyright © 2017 Brian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {
    @IBOutlet weak var daCoolTableView: UITableView!
    
    var emojis = ["😎","🤡","🤠","🤖","👻","😤","💩"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        daCoolTableView.dataSource = self
        daCoolTableView.delegate = self as? UITableViewDelegate
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

