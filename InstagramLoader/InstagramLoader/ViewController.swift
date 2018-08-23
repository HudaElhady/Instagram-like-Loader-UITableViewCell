//
//  ViewController.swift
//  InstagramLoader
//
//  Created by MIS on 8/18/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
    
    var imagesArr = ["https://ucarecdn.com/fc740e9f-a39c-4daa-9711-e25e145701c7/BreakfastToastv1.jpg","https://ucarecdn.com/6abc8c61-cd39-4587-a893-ca94452cfa50/Daqds7aW4AA48agv1.jpg" ,"https://ucarecdn.com/649f9fb1-15e2-4c56-a9cb-a8eba7db8e56/imagesv1.jpeg", "https://ucarecdn.com/bf9788b4-d9c6-45ec-ab50-3ff1e49218fd/51b0902faabf42f89b1124564ff3e51bv1.jpg","https://ucarecdn.com/27e64f45-065e-41d9-83cb-9cafa4edfdec/1463631026438v1.jpeg","https://ucarecdn.com/ef2b4cff-e994-4546-ba70-1d57a7e8fb28/downloadv1.jpeg","https://ucarecdn.com/0a1da05f-fe81-455b-b0a5-3137ec1d155e/8b2493411d244d0708ac5fbc10eae22fv1.jpg","https://ucarecdn.com/058023cc-0376-4758-9f9a-9f5d0905bc62/Pancakes14v1.jpg"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! ImageTableViewCell
        cell.configure(with: imagesArr[indexPath.row])
        return cell
    }
    

}

