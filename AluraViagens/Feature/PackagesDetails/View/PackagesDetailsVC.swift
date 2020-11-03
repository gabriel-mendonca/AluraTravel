//
//  PackagesDetailsVC.swift
//  AluraViagens
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 27/10/20.
//

import UIKit

class PackagesDetailsVC: UIViewController {
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var imageTrip: UIImageView!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var packatesComplete: PackagesTrip? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        setup()
        setupScrollView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        showNavigationBar()
        super.viewWillAppear(animated)
    }
    
    func setupScrollView() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        let userInfo = notification.userInfo!
        var keyboardFrame: CGRect = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset: UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height
        self.scrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        let contentInset: UIEdgeInsets = UIEdgeInsets.zero
        self.scrollView.contentInset = contentInset
    }
    
    func setup() {
        if let package = packatesComplete {
            self.imageTrip.image = UIImage(named: package.trip.pathImage)
            self.labelTitle.text = package.trip.titleObjeto.uppercased()
            self.labelDescription.text = package.descriptionPackages
            self.labelDate.text = package.dateTrip
            self.labelPrice.text = package.trip.price
        }
    }
}
