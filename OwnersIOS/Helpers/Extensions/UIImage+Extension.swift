//
//  UIImage+Extension.swift
//  OwnersIOS
//
//  Created by Sofia on 12.10.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import UIKit

extension UIImage {

    func tint(with fillColor: UIColor) -> UIImage? {
        let image = withRenderingMode(.alwaysTemplate)
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        fillColor.set()
        image.draw(in: CGRect(origin: .zero, size: size))
        
        guard let imageColored = UIGraphicsGetImageFromCurrentImageContext() else {
            return nil
        }
        
        UIGraphicsEndImageContext()
        return imageColored
    }
}
