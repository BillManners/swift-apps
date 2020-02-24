//
//  StudentCell.swift
//  absenceRecorder
//
//  Created by Manners, William (Coll) on 09/02/2020.
//  Copyright © 2020 Manners, William (Coll). All rights reserved.
//

import UIKit

class StudentCell: UITableViewCell {

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.accessoryType = selected ? .checkmark : .none
    }

}
