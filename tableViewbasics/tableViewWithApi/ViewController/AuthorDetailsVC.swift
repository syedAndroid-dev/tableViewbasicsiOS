//
//  AuthorDetailsVC.swift
//  tableViewbasics
//
//  Created by Syed on 20/12/24.
//

import UIKit

class AuthorDetailsVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var heroDetailsUITableView: UITableView!

    var heroDetails = [HeroStats]()
    
    let apiUrl = "https://api.opendota.com/api/heroStats"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeApiCall {
            print("API Success..")
            DispatchQueue.main.async {
                self.heroDetailsUITableView.reloadData()
            }
            
        }
        heroDetailsUITableView.delegate = self
        heroDetailsUITableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let hero = heroDetails[indexPath.row]
        print(hero.name)
        cell.textLabel?.text = hero.localizedName.capitalized
        cell.detailTextLabel?.text = hero.primaryAttr.capitalized
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected Hero : \(heroDetails[indexPath.row])")
    }
    
    
    func makeApiCall(apiFinished : @escaping () -> ()){
        guard let url = URL(string: apiUrl) else {
            print("Invalid Url : \(self.apiUrl)")
            return
        }
        
        
       let apiTask =  URLSession.shared.dataTask(with: url){ data,response,err in
           
           if let error = err {
               print("Error: \(error.localizedDescription)")
               return
           }
           
           guard let data = data else {
               print("No data received")
               return
           }
           
           if let jsonString = String(data: data, encoding: .utf8){
               print("Response JSON String:\n\(jsonString)")
           }
           
           do {
               let decoder = JSONDecoder()
               let responseObject = try decoder.decode([HeroStats].self, from: data)
               self.heroDetails = responseObject
               apiFinished()
               print("Decoded Response: \(responseObject)")
           } catch let DecodingError.dataCorrupted(context){
               print("Data corrupted: \(context.debugDescription)")
               print("Coding path: \(context.codingPath)")
           }catch let DecodingError.keyNotFound(key, context) {
               print("Key '\(key.stringValue)' not found: \(context.debugDescription)")
               print("Coding path: \(context.codingPath)")
           } catch let DecodingError.typeMismatch(type, context) {
               print("Type '\(type)' mismatch: \(context.debugDescription)")
               print("Coding path: \(context.codingPath)")
           } catch let DecodingError.valueNotFound(value, context) {
               print("Value '\(value)' not found: \(context.debugDescription)")
               print("Coding path: \(context.codingPath)")
           } catch {
               print("Unexpected error: \(error.localizedDescription)")
           }
        }
        
        apiTask.resume()
    }

}
