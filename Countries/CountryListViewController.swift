//
//  CountryListViewController.swift
//  Countries
//
//  Created by SRIDHAR SANAPALA on 4/23/17.
//  Copyright © 2017 EverythingSwift. All rights reserved.
//

import UIKit

class CountryListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var didSelectCountry:((String)->())!
    let countriesArray = ["Albania", "Angola", "Bangladesh", "Belgium", "Chile", "China", "Denmark", "Dominica",
                    "Egypt", "France", "Germany", "Haiti", "Iceland", "India", "Japan", "Kenya", "Lebanon",
                    "Malaysia", "Norway", "United Kingdom", "United States Of America"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return countriesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "COUNTRY_ITEM_CELL")! as UITableViewCell
        cell.textLabel?.text = countriesArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        self.didSelectCountry(countriesArray[indexPath.row])
        self.dismiss(animated: true, completion: nil)
    }

}
