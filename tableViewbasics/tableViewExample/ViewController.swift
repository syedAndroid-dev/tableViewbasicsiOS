//
//  ViewController.swift
//  tableViewbasics
//
//  Created by Syed on 18/12/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var mytableView : UITableView!
    let rowItems = ["Syed","Ansar","Zenani","Remi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "MyTableViewCell", bundle: nil)
        mytableView.register(nib, forCellReuseIdentifier: "MyTableViewCell")
        mytableView.delegate = self
        mytableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowItems.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell",for: indexPath) as! MyTableViewCell
        
        cell.labelText.text = rowItems[indexPath.row]
        cell.myImageView.backgroundColor = .blue
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row Selected Item : \(indexPath.row+1)")
    }

}

//extension ViewController : UITableViewDelegate {
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("Row Selected... \(indexPath)")
//    }
//}
//
//extension ViewController : UITableViewDataSource {
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return rowItems.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell",for: indexPath)
//        cell.textLabel?.text = rowItems[indexPath.row]
//        return cell
//    }
//    
//    
//}

