//
//  ViewController.swift
//  Countries
//
//  Created by SRIDHAR SANAPALA on 4/23/17.
//  Copyright © 2017 EverythingSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countrySelectedLbl:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func countryBtnTapped(){
        
        let countryListViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "COUNTRY_LIST_VC") as! CountryListViewController
        
        countryListViewController.didSelectCountry = { (countryName) in
            self.countrySelectedLbl.text = countryName
        }
        
        self.present(countryListViewController, animated: true, completion: nil)
    }

}

