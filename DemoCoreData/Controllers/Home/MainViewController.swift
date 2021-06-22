//
//  MainViewController.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 20/06/2021.
//

import UIKit

class MainViewController: BaseViewController {

    @IBOutlet weak var productsCollectionView: UICollectionView!
    var data:[Int]=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupData()
        // Do any additional setup after loading the view.
    }
    override func setupUI() {
        title=App.Text.appName
        
        let leftBarItem=UIBarButtonItem(image: UIImage(systemName: "list.dash"), style: .done, target: self, action: #selector(showSideMenu))
        let rightBarItem=UIBarButtonItem(customView: Cart(frame: CGRect(x: 0, y: 0, width: 40, height: 40)))
        navigationItem.rightBarButtonItem=rightBarItem
        navigationItem.leftBarButtonItem=leftBarItem
        productsCollectionView.delegate=self
        productsCollectionView.dataSource=self
        let uiNib=UINib(nibName: "HomeCell", bundle: Bundle.main)
        productsCollectionView.register(uiNib, forCellWithReuseIdentifier: "cell")
//        navigationController?.hidesBarsOnSwipe=true
//        navigationController?.hidesBarsOnTap=true
        
    }
    
    override func setupData() {
        data=[1,2,3,45,5,66,6,6,6,66,6,6,6,]
    }
   @objc func showSideMenu()  {
    let baseNav = navigationController as? BaseNavigationController
    baseNav?.toggleSideMenu()
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
extension MainViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width - 25
            return CGSize(width: (screenWidth/2), height: (screenWidth/3))
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 15
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5 , left: 5, bottom: 5, right: 5)
    }
}
extension MainViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCell
        return cell
    }
    
    
}
extension MainViewController:UICollectionViewDelegate{
    
}
