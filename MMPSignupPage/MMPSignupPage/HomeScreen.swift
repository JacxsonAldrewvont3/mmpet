//
//  Homepage.swift
//  MMPSignupPage
//
//  Created by Mitch Jackson on 11/10/22.
//

import UIKit

class Homepage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calendarClicked(_ sender: UIButton) {
    }
    let namestoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    @IBAction func reminderClicked(_ sender: UIButton) {
        let vc = namestoryboard.instantiateViewController(withIdentifier: "Reminder") as! Remminder
        self.navigationController!.pushViewController(vc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
