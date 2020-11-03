//
//  PackagesVC.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

class PackagesVC: UIViewController,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout,UISearchBarDelegate {
    
    @IBOutlet weak var packagesCollection: UICollectionView!
    @IBOutlet weak var searchForTrips: UISearchBar!
    @IBOutlet weak var labelUpdate: UILabel!
    
    var viewModel: PackagesViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        searchForTrips.delegate = self
        setup()
        self.labelUpdate.text = updateCounter()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        hideNavigationBar()
        super.viewWillAppear(animated)
    }
    
    func setup() {
        viewModel?.listPackages = PackagesTrip.buildListPackages()
    }
    
    func updateCounter() -> String {
        return viewModel.listPackages.count == 1 ? "1 pacote encontrado" : "\(viewModel.listPackages.count) pacotes encontrados"
    }
    
    func setupCollectionView() {
        packagesCollection.delegate = self
        packagesCollection.dataSource = self
        packagesCollection.register(UINib (nibName: "PackagesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viewModel.listPackages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PackagesCollectionViewCell
        
        cell.setup(for: viewModel.listPackages[indexPath.row])
        cell.cornerRadius()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let packages = viewModel.listPackages[indexPath.row]
        let xib = PackagesDetailsVC()
        xib.packatesComplete = packages
        self.navigationController?.pushViewController(xib, animated: true)
//        viewModel.sendPackagesDetails()
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.size.width / 2
        return CGSize(width: width - 10, height: 160)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    
        setup()
        if searchText.isEmpty {
            self.labelUpdate.text = updateCounter()
            packagesCollection.reloadData()
        } else {
            viewModel.listPackages = viewModel.listPackages.filter({$0.trip.titleObjeto.lowercased().range(of: searchText.lowercased()) != nil})
            self.labelUpdate.text = updateCounter()
            packagesCollection.reloadData()
            
        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        searchBar.text = ""
        searchBar.resignFirstResponder()
        
        
    }
    
    
}
