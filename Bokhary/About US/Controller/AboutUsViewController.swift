//
//  AboutUsViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 28/12/2022.
//

import UIKit

class AboutUsViewController: UIViewController {
    //MARK: Props
    var moreViewModel = MoreViewModel()
    //MARK: IBOutlets
    @IBOutlet weak var aboutUsImageView: UIImageView!
    @IBOutlet weak var aboutUsLabel: UILabel!
    @IBOutlet weak var aboutUsView: UIView!
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    //MARK: Main Methods
    func initView() {
        navBarConfig()
    }
    //MARK: View Methods

    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "About US"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    @objc func barButtonTapped() {
        // Go To Cart VC
    }
}
