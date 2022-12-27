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
            commentsTableView.rowHeight = 100
            commentsTableView.estimatedRowHeight = UITableView.automaticDimension
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
