//
//  TableViewController.swift
//  Feed
//
//  Created by codebendr on 24/09/2019.
//  Copyright © 2019 just pixel. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var photos = [Photos]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://jsonplaceholder.typicode.com/photos?_limit=10"
        
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with:url!) { (data, response, error) in
            if error == nil {
                do {
                    
                    if let data = data {
                        self.photos = try JSONDecoder().decode([Photos].self,from:data)
                        print("data")
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                    } else {
                        print("error with data")
                    }
                    
                }
                catch {
                    
                    print(error)
                }
                
            } else {
                print("some error happened")
            }
            
        }.resume()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.photo = photos[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard  = UIStoryboard(name: "Main", bundle: nil)
        let VC = storyboard.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        VC.photo = photos[indexPath.row]
        self.navigationController?.present(VC, animated: true, completion: nil)
    }
    
}
