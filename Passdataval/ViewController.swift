//
//  ViewController.swift
//  Passdataval
//
//  Created by Anilkumar on 12/11/18.
//  Copyright © 2018 Anilkumar. All rights reserved.
//

import UIKit
import MR_K_SDK


class ViewController: UIViewController ,PizzaDelegate{
    var Second:SecondViewController?
    var sampl = Sample()
    var result1 =  [String:Any]()

   
   /// var RootClas = RootClass()
    //Protocol
    func onPizzaReady(type: String) {
        print("Pizza ready. The best pizza of all pizzas is... \(type)")
        
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
       // let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")!
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//            guard let data = data else { return }
//            print(String(data: data, encoding: .utf8)!)
//            do {
//                self.result1 = (try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any])!
//                let data = RootClass(fromDictionary: self.result1)
//                    print(data.title)
//            } catch let error as NSError {
//                print(error.localizedDescription)
//            }
//        }
//
//        task.resume()
        
        
        
        
        
        
        
        
  
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     //Function
    func onUserAction(data: String)
    {
        print("Data received: \(data)")
    }

    @IBAction func New(_ sender: Any) {
      //  sampl.testingNewFunction(vc: self)
       let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        //Protocol
        //  nextViewController.delegate = self
        //Function
        //   nextViewController.mainViewController = self
         // Closure
//        nextViewController.completionHandler = { text in
//            print("text = \(text)")
//            return text.characters.count
//        }




        navigationController?.pushViewController(nextViewController, animated: true)

    }
    
}

