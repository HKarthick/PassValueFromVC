//
//  SecondViewController.swift
//  Passdataval
//
//  Created by Anilkumar on 12/11/18.
//  Copyright © 2018 Anilkumar. All rights reserved.
//

import UIKit
protocol PizzaDelegate
{
    func onPizzaReady(type: String)
}
class SecondViewController: UIViewController {
    let card_name_shared = RootClass.sharedInstance

    // Closure
    var completionHandler:((String) -> Int)?
    //Function
    var mainViewController:ViewController?
    //Protocol
    var delegate:PizzaDelegate?
    override func viewDidAppear(_ animated: Bool) {
        print(card_name_shared.title ?? "Not working")

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

    
        // Do any additional setup after loading the view.
    }

    @IBAction func onButtonTap()
    {
        // FIXME:  Function
        mainViewController?.onUserAction(data: "The quick brown fox jumps over the lazy dog")
        // MARK:  Protocol
        // delegate?.onPizzaReady(type: "Pizza di Mama")
        //TODO: Closure
        let result = completionHandler?("FUS-ROH-DAH!!!")
        print("completionHandler returns... \(result)")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
