//
//  TableViewController.swift
//  MyPlaces
//
//  Created by Арыстан on 19.06.2022.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet private weak var firstTableView: UITableView!
    
    var myFavouritePlaces = ["KFC", "McDonalds", "Kraft", "Hardees", "Burger King"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTableView.dataSource = self

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFavouritePlaces.count
    }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
            cell.nameLabel?.text = myFavouritePlaces[indexPath.row]
            cell.imageOfPlace?.image = UIImage(named: myFavouritePlaces[indexPath.row])
            cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
            cell.imageOfPlace?.clipsToBounds = true

        return cell
    }
    
        //MARK: Table View Delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
