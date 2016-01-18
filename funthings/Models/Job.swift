//
//  Job.swift
//  funthings
//
//  Created by Hunter on 1/18/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import Foundation

class Job {
    
    var companyName: String?
    var contactName: String?
    var contactEmail: String?
    var description: String?
    var position: String?
    
    init(){}
    init(companyName: String?, contactName: String?, contactEmail: String?, description: String?, position: String?){
        self.companyName = companyName
        self.contactName = contactName
        self.contactEmail = contactEmail
        self.description = description
        self.position = position
    }
    
}