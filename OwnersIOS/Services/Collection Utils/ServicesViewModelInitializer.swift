//
//  ServicesViewModelInitializer.swift
//  OwnersIOS
//
//  Created by Sofia on 15.12.2019.
//  Copyright © 2019 Sofia. All rights reserved.
//

import Foundation

class ServicesViewModelInitializer {
    func initializeCollection() -> [ServiceCollectionViewModel] {
        let head = ServiceCollectionViewModel(imageName: "head", title: "Head")
        let cleaner = ServiceCollectionViewModel(imageName: "cleaner", title: "Cleaner")
        let plumber = ServiceCollectionViewModel(imageName: "plumber", title: "Plumber")
        let electrician = ServiceCollectionViewModel(imageName: "electrician", title: "Electrician")
        let gasman = ServiceCollectionViewModel(imageName: "gasman", title: "Gasman")
        let courier = ServiceCollectionViewModel(imageName: "courier", title: "Courier")
        return [head, cleaner, plumber, electrician, gasman, courier]
    }
}
