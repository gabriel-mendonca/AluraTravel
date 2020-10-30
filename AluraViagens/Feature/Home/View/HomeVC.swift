//
//  HomeVC.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 26/10/20.
//

import UIKit

class HomeVC: UIViewController {
    
    var viewModel: HomeViewModel?
    let travelList: [Trip] = TripDAO().rerturnTrip()
    
    @IBOutlet weak var homeTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        overrideUserInterfaceStyle = .light
    }
    
    override func viewWillAppear(_ animated: Bool) {
        hideNavigationBar()
        super.viewWillAppear(animated)
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        homeTable.delegate = self
        homeTable.dataSource = self
        homeTable.register(UINib (nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travelList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentTrip = travelList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        
        cell.title.text = currentTrip.titleObjeto
        cell.quantityDays.text = "R$ \(currentTrip.quantityDays) Dias"
        cell.price.text = currentTrip.price
        cell.pathImage.image = UIImage(named: currentTrip.pathImage)
        cell.pathImage.clipsToBounds = true
        cell.pathImage.layer.cornerRadius = 10
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }
    
    
}
