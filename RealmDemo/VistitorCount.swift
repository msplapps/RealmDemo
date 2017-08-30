//
//  VistitorCount.swift
//  RealmDemo
//
//  Created by Harshvardhan Agarwal on 28/08/17.
//  Copyright © 2017 Purushotham. All rights reserved.
//

import UIKit
import Foundation
import RealmSwift

class VistitorCount: Object {

    dynamic var date = Date()
    dynamic var count = Int(0)
    
    func save(){
        
        do{
            let realm = try Realm()
            try realm.write {
                realm.add(self)
            }
        }catch let error as NSError{
            fatalError(error.localizedDescription)
        }
    }
}
