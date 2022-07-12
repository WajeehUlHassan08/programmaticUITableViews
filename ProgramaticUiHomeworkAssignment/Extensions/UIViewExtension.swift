//
//  UIViewExtension.swift
//  ProgramaticUiHomeworkAssignment
//
//  Created by Wajeeh Ul Hassan on 11/07/2022.
//

import UIKit

extension UIView {
    func bindToSuperView(insets: CGFloat = 8) {
        guard let superSafeArea = self.superview?.safeAreaLayoutGuide else {
            fatalError("Code Messed Up Error!")
        }
        
        self.topAnchor.constraint(equalTo: superSafeArea.topAnchor, constant: insets).isActive = true
        self.leadingAnchor.constraint(equalTo: superSafeArea.leadingAnchor, constant: insets).isActive = true
        self.bottomAnchor.constraint(equalTo: superSafeArea.bottomAnchor, constant: -insets).isActive = true
        self.trailingAnchor.constraint(equalTo: superSafeArea.trailingAnchor, constant: -insets).isActive = true
    }
}
