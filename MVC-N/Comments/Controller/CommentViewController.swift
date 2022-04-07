//
//  ViewController.swift
//  MVC-N
//
//  Created by Артур Дохно on 06.04.2022.
//

import UIKit

class CommentViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var comments = [Comment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CommentNetworkService.getComments { (response) in
            self.comments = response.comments
            self.tableView.reloadData()
        }
    }
}

extension CommentViewController: UITableViewDelegate {
    
}

extension CommentViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return comments.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "Cell",
            for: indexPath) as! CommentCell
        let comment = comments[indexPath.row]
        cell.configure(with: comment)
        return cell
    }
}
