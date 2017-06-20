//
//  HistoryListCell.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-07.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import UIKit

class HistoryListCell: UITableViewCell {

    var operationProcessOnCellLabel : UILabel!
    var operationResultOnCellLabel  : UILabel!

    let fullScreenSize = UIScreen.main.bounds.size


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.operationProcessOnCellLabel  = UILabel.init(frame: CGRect.init(x: 20, y: 10, width: fullScreenSize.width - 30, height: 15))
        self.operationProcessOnCellLabel .textColor = UIColor.black
        self.operationProcessOnCellLabel .font = UIFont.systemFont(ofSize: 15.0)
        contentView.addSubview(self.operationProcessOnCellLabel )
        self.operationProcessOnCellLabel .text = "operationProcessOnCell"

        self.operationResultOnCellLabel  = UILabel.init(frame: CGRect.init(x: 30, y: 30, width: fullScreenSize.width - 40, height: 30))
        self.operationResultOnCellLabel .textColor = UIColor.init (red: 0, green: 0.2353, blue: 0.7059, alpha: 1.0)

        self.operationResultOnCellLabel .font = UIFont.systemFont(ofSize: 20.0)
        contentView.addSubview(self.operationResultOnCellLabel )
        self.operationResultOnCellLabel .text = "operationResultOnCell"

        self.contentView.addSubview(operationProcessOnCellLabel )
        self.contentView.addSubview(operationResultOnCellLabel )

    }


}
