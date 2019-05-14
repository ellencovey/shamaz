//
//  Utility.swift
//  Shamaz
//
//  Created by Ellen Covey on 09/05/2019.
//  Copyright © 2019 Ellen Covey. All rights reserved.
//

import Foundation

class Utility {
    
    static var reflectActions = ["Describe your day", "Where were you", "Who did you talk to", "How were you feeling"]
    static var reflectTimes = ["two days ago", "yesterday", "last Saturday", "last night"]
    static var dreamActions = ["Where do you want to go", "What will you be doing", "Who would you like to be with", "What are your plans for"]
    static var dreamTimes = ["tomorrow", "this time next year", "next Friday", "a month from now"]
    
    static func generateReflectAction() -> String {
        return reflectActions.randomElement()!
    }
    
    static func generateReflectTime() -> String {
        return reflectTimes.randomElement()!
    }
    
    static func generateDreamAction() -> String {
        return dreamActions.randomElement()!
    }
    
    static func generateDreamTime() -> String {
        return dreamTimes.randomElement()!
    }
    
}
