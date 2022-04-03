//
//  ViewController.swift
//  MiniApp35-Xib01
//
//  Created by 前田航汰 on 2022/04/03.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    private let gafaList = ["Google","Amazon","FaceBook","Apple"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "GafaTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        gafaList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! GafaTableViewCell
        cell.gafaLabel?.text = gafaList[indexPath.row]
        return cell
    }

}

