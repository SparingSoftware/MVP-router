//
//  ProfileTableViewCell.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    
    @IBOutlet weak var userLabel: UILabel!
    

    func setup(user: User) {
        self.userLabel.text = user.name
    }
    
    //

    override func setSelected(_ selected: Bool, animated: Bool) {
        //
    }
    
    
}
