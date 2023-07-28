

import Foundation
 

public class TUserPost : Codable {
	public var userId : Int?
	public var id : Int?
	public var title : String?
	public var body : String?

    
    public class func modelsFromDictionaryArray(array:NSArray) -> [TUserPost]
    {
        var models:[TUserPost] = []
        for item in array
        {
            models.append(TUserPost(dictionary: item as! NSDictionary)!)
        }
        return models
    }


	required public init?(dictionary: NSDictionary) {

		userId = dictionary["userId"] as? Int
		id = dictionary["id"] as? Int
		title = dictionary["title"] as? String
		body = dictionary["body"] as? String
	}

    
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.userId, forKey: "userId")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.body, forKey: "body")

		return dictionary
	}

}
