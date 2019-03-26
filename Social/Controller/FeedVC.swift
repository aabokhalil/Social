//
//  FirstViewController.swift
//  Social
//
//  Created by ahmed abokhalil on 7/5/1440 AH.
//  Copyright © 1440 AH ahmed abokhalil. All rights reserved.
//

import UIKit

class FeedVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var messagesArray = [Message]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DataService.instance.getAllFeedMessages { (ReturedMessagesArray) in
            self.messagesArray = ReturedMessagesArray.reversed()
            self.tableView.reloadData()
        }
    }
    
}

extension FeedVC : UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messagesArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell") as? FeedCell  else { return UITableViewCell() }
        let image = UIImage (named: "defaultProfileImage")
        let message = messagesArray[indexPath.row]
        
        DataService.instance.getUserName(fromUID: message.senderId) { (returnedusername) in
            cell.configureCell(profileImage: image!, email: returnedusername, content: message.content)
        }
        
        
        return cell
    }
}
