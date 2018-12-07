//
//  ViewController.swift
//  CASL
//
//  Created by Garage on 11/28/18.
//  Copyright © 2018 Garage. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBAction func loginButton(_ sender: UIButton) {
        let vc: LoginViewController = StoryBoard.login.createViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func signupButton(_ sender: UIButton) {
        let vc: SignupViewController = StoryBoard.signup.createViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func forgotButton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }


}

