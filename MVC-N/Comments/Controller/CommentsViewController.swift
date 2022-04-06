//
//  ViewController.swift
//  MVC-N
//
//  Created by Артур Дохно on 06.04.2022.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension CommentsViewController: UITableViewDelegate {
    
}

extension CommentsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //
        
        return cell
    }
}
