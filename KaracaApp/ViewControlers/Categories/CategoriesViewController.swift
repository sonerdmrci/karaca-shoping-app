//
//  CategoriesViewController.swift
//  KaracaApp
//
//  Created by Soner Demirci on 31.12.2023.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    //MARK: - UI Elements
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Properties
    fileprivate var list = [ CategoryType]()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        list = [
            CategoryType(name: "Sofra", image: UIImage(named: "breakfast")!),
            CategoryType(name: "Mutfak", image: UIImage(named: "kitchen")!),
            CategoryType(name: "Küçük Ev Aletleri", image: UIImage(named: "coffee-cup")!),
            CategoryType(name: "Ev Tekstili", image: UIImage(named: "happy")!),
            CategoryType(name: "Aksesuar", image: UIImage(named: "table-lamp")!),
            CategoryType(name: "Halı", image: UIImage(named: "carpet")!),
            CategoryType(name: "Çeyiz Setleri", image: UIImage(named: "gift")!),
            CategoryType(name: "Gıda", image: UIImage(named: "milk")!)]
    }
    
    func setupUI(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CategoryTableViewCell.nib(), forCellReuseIdentifier: CategoryTableViewCell.identifier)
        
    }
    
    

}

//MARK: - TableView Delegates
extension CategoriesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.identifier, for: indexPath) as! CategoryTableViewCell
        cell.initCell(name: list[indexPath.row].name, image: list[indexPath.row].image)
        return cell
    }
}
