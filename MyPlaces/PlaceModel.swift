import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
  static var myFavouritePlaces = ["KFC", "McDonalds", "Kraft", "Hardees", "Burger King"]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        for place in myFavouritePlaces {
            places.append(Place(name: place, location: "Almaty", type: "Fast-food", image: place))
        }
        return places
    }
    
}
