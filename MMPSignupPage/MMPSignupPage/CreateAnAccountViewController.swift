//
//  CreateAnAccountViewController.swift
//  MMPSignupPage
//
//  Created by Mitch Jackson on 11/7/22.
//

import UIKit
import Firebase

class CreateAnAccountViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createAnAccountClicked(_ sender: UIButton) {
        guard let username = usernameTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        Auth.auth().createUser(withEmail: username, password: password) { firebaseResult, error in
            if let e = error {
                print("error")
            }
            else {
                // Go to our home screen
                self.performSegue(withIdentifier: "goToNext", sender: self)
            }
        }
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
