//
//  AddReviewViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 27/12/2022.
//

import UIKit

class AddReviewViewController: UIViewController {

    @IBOutlet weak var commentsTableView: UITableView! {
        
        didSet {
            
            commentsTableView.delegate = self
            commentsTableView.dataSource = self
            
            commentsTableView.register(UINib(nibName: "CommentTableViewCell", bundle: nil), forCellReuseIdentifier: "CommentTableViewCell")
            commentsTableView.register(UINib(nibName: "ReadMoreReviewsTableViewCell", bundle: nil), forCellReuseIdentifier: "ReadMoreReviewsTableViewCell")
            commentsTableView.register(UINib(nibName: "WriteCommentTableViewCell", bundle: nil), forCellReuseIdentifier: "WriteCommentTableViewCell")
            
            commentsTableView.rowHeight = UITableView.automaticDimension
            commentsTableView.estimatedRowHeight = 44
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        commentsTableView.separatorStyle = .none
        setNavigation()
    }


    func setNavigation(){
        
        title = "Add review"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
    }
    
    @objc func addTapped() {
        
        print("cart")
        
    }

}
