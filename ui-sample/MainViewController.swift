//
//  ViewController.swift
//  ui-sample
//
//  Created by Yuki Kuboyama on 2019/10/20.
//  Copyright © 2019 Yuki Kuboyama. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let ui = ["CollectionView", "TODO:", "TODO:", "TODO:", "TODO:", "TODO:", "TODO:"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // セクションひとつあたりの行数を返す
        return self.ui.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを生成して返す
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = self.ui[indexPath.row]
        return cell
    }
    
}

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let storyboard = UIStoryboard(name: "CollectionView", bundle: nil)
            let viewController = storyboard.instantiateInitialViewController()
            if let viewController = viewController {
                self.navigationController?.pushViewController(viewController, animated: true)
            } else {
                print("ニルだ！")
            }
        default:
            break
        }
    }
    
}


