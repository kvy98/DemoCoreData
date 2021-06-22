//
//  BaseNavigationController.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 21/06/2021.
//

import UIKit

class BaseNavigationController: UINavigationController {
    private var toogleSideMenu=false
    private  var sideMenu:SideMenu!
    private var toggle=false
    override func viewDidLoad() {
        super.viewDidLoad()
        let screen=UIScreen.main.bounds.size
        let frame=CGRect(origin: CGPoint(x: 0, y: 0), size:  CGSize(width: screen.width*0.7, height: screen.height))
        sideMenu=SideMenu(frame: frame)
        let swipeLeft=UISwipeGestureRecognizer(target: self, action:#selector(swipeHandle))
        swipeLeft.direction = .left
        let swipeRight=UISwipeGestureRecognizer(target: self, action:#selector(swipeHandle))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeLeft)
        self.view.addGestureRecognizer(swipeRight)
//        let currentController=self.viewControllers.last
//        currentController?.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleTapCurrentViewController)))
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        let currentController=self.viewControllers.last
               currentController?.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.handleTapCurrentViewController)))
    }
    @objc func handleTapCurrentViewController(){
        if toggle==true{
            toggleSideMenu()
        }
    }
    @objc func swipeHandle(sender: UISwipeGestureRecognizer){
        switch sender.direction {
        case .left:
            if toggle==true{
                self.toggleSideMenu()
            }
        case .right:
            if toggle==false {
                self.toggleSideMenu()

            }
        default:
            break
        }
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
extension BaseNavigationController{
    func toggleSideMenu()  {
        
        if toggle==false{
            self.view.addSubview(sideMenu)
        }
        else {
            sideMenu.removeFromSuperview()
            
        }
        toggle = !toggle
    }
}
