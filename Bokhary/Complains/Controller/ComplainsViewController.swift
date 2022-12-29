//
//  ComplainsViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 29/12/2022.
//

import UIKit

class ComplainsViewController: UIViewController {
    //MARK: Props
    var complainsViewModel = ComplainsViewModel()
    //MARK: IBOutlets
    @IBOutlet weak var sendButtonOutlet: UIButton!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var complainTextField: UITextField!
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    //MARK: Main Methods
    func initView() {
        navBarConfig()
        // buttonsColors()
    }
    
    @IBAction func sendButtonAction(_ sender: UIButton) {
        
    }
    //MARK: View Methods
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "Complains"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    @objc func barButtonTapped() {
        // Go To Cart VC
    }
}
