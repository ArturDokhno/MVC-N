//
//  ViewController.swift
//  MVC-N
//
//  Created by Артур Дохно on 06.04.2022.
//

import UIKit

class CommentViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

extension CommentViewController: UITableViewDelegate {
    
}

extension CommentViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "Cell",
            for: indexPath) // as! CommandCell
        
        //
        
        return cell
    }
}
