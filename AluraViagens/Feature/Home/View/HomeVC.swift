//
//  HomeVC.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 26/10/20.
//

import UIKit

class HomeVC: UIViewController {
    
    var viewModel: HomeViewModel!
    
    @IBOutlet weak var homeTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setup()
        overrideUserInterfaceStyle = .light
    }
    
    override func viewWillAppear(_ animated: Bool) {
        hideNavigationBar()
        super.viewWillAppear(animated)
    }
    
    func setup() {
        viewModel?.lista = TripModel.buildList()
    }
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        homeTable.delegate = self
        homeTable.dataSource = self
        homeTable.register(UINib (nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        
        cell.setup(for: viewModel.lista[indexPath.row])
        cell.cornerRadius()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }
    
    
}
