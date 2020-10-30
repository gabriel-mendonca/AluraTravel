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
    
    var viewModel: PackagesViewModel?
    var completeList: [PackagesTrip] = PackagesTripDAO().returnAllTrips()
    var travelList: [PackagesTrip] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        travelList = completeList
        setupCollectionView()
        searchForTrips.delegate = self
        self.labelUpdate.text = updateCounter()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        hideNavigationBar()
        super.viewWillAppear(animated)
    }
    
    func updateCounter() -> String {
        return travelList.count == 1 ? "1 pacote encontrado" : "\(travelList.count) pacotes encontrados"
    }
    
    func setupCollectionView() {
        packagesCollection.delegate = self
        packagesCollection.dataSource = self
        packagesCollection.register(UINib (nibName: "PackagesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.travelList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let currentList = travelList[indexPath.item]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PackagesCollectionViewCell
        
        cell.imagePackages.image = UIImage(named: currentList.trip.pathImage)
        cell.labelTitle.text = currentList.trip.titleObjeto
        cell.labelDays.text = "\(currentList.trip.quantityDays) dias"
        cell.labelValue.text = "R$ \(currentList.trip.price)"
        
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.00/255.0, alpha: 1).cgColor
        
        cell.cornerRadius()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let packages = travelList[indexPath.row]
        let xib = PackagesDetailsVC()
        xib.packatesComplete = packages
        navigationController?.pushViewController(xib, animated: true)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.size.width / 2
        return CGSize(width: width - 10, height: 160)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    
        travelList = completeList
        if searchText.isEmpty {
            packagesCollection.reloadData()
        } else {
            travelList = completeList.filter({$0.trip.titleObjeto.lowercased().range(of: searchText.lowercased()) != nil})
            self.labelUpdate.text = updateCounter()
            packagesCollection.reloadData()
            
        }
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        searchBar.text = ""
        searchBar.resignFirstResponder()
        
        
    }
    
    
}
