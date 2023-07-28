//
//  gg.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 16/07/2023.

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Json4Swift_Base {
    public var id : Int?
    public var name : String?
    public var username : String?
    public var email : String?
    public var address : Address?
    public var phone : String?
    public var website : String?
    public var company : Company?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let json4Swift_Base_list = Json4Swift_Base.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Json4Swift_Base Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Json4Swift_Base]
    {
        var models:[Json4Swift_Base] = []
        for item in array
        {
            models.append(Json4Swift_Base(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let json4Swift_Base = Json4Swift_Base(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Json4Swift_Base Instance.
*/
    required public init?(dictionary: NSDictionary) {

        id = dictionary["id"] as? Int
        name = dictionary["name"] as? String
        username = dictionary["username"] as? String
        email = dictionary["email"] as? String
        if (dictionary["address"] != nil) { address = Address(dictionary: dictionary["address"] as! NSDictionary) }
        phone = dictionary["phone"] as? String
        website = dictionary["website"] as? String
        if (dictionary["company"] != nil) { company = Company(dictionary: dictionary["company"] as! NSDictionary) }
    }

        
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
    public func dictionaryRepresentation() -> NSDictionary {

        let dictionary = NSMutableDictionary()

        dictionary.setValue(self.id, forKey: "id")
        dictionary.setValue(self.name, forKey: "name")
        dictionary.setValue(self.username, forKey: "username")
        dictionary.setValue(self.email, forKey: "email")
        dictionary.setValue(self.address?.dictionaryRepresentation(), forKey: "address")
        dictionary.setValue(self.phone, forKey: "phone")
        dictionary.setValue(self.website, forKey: "website")
        dictionary.setValue(self.company?.dictionaryRepresentation(), forKey: "company")

        return dictionary
    }

}
