//
//  RootClass.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on November 20, 2018

import Foundation


class RootClass : NSObject{
    class var sharedInstance : RootClass {
        struct Static {
            static let instance : RootClass = RootClass()
        }
        return Static.instance
    }
    
    private override init() {}
    
    
    var completed : Bool!
    var id : Int!
    var title: String?
    var userId : Int!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        completed = dictionary["completed"] as? Bool
        id = dictionary["id"] as? Int
        title = (dictionary["title"] as? String)!
        userId = dictionary["userId"] as? Int
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if completed != nil{
            dictionary["completed"] = completed
        }
        if id != nil{
            dictionary["id"] = id
        }
        if title != nil{
            dictionary["title"] = title
        }
        if userId != nil{
            dictionary["userId"] = userId
        }
        return dictionary
    }

    
}
