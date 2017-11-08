//
//  DKPhotoProgressIndicator.swift
//  DKPhotoGallery
//
//  Created by ZhangAo on 08/09/2017.
//  Copyright © 2017 ZhangAo. All rights reserved.
//

import UIKit
import MBProgressHUD

class DKPhotoProgressIndicator: MBProgressHUD, DKPhotoProgressIndicatorProtocol {

     required init(with view: UIView) {
        super.init(view: view)
        
        self.mode = .indeterminate
        
        view.addSubview(self)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startIndicator() {
        self.show(animated: true)
    }
    
    func stopIndicator() {
        self.hide(animated: true)
    }
    
    func setIndicatorProgress(_ progress: Float) {
        self.mode = progress == 0 ? .indeterminate : .determinate
        self.progress = progress
    }

}
