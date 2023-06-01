//
//  ViewController.swift
//  RandomColors
//
//  Created by Mohamed Aboullezz on 20/12/2022.
//

import UIKit
var colors: [UIColor] = []
class ColorsTableVC: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    func addRandomColors () {
        for _ in 0..<50 {
            colors.append(creatRandomColors())
        }
        func creatRandomColors () -> UIColor {
            let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                      green: CGFloat.random(in: 0...1),
                                      blue: CGFloat.random(in: 0...1),
                                      alpha: 1)
            return randomColor
        }
       
     }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailsVC
        destVC.color = (sender as! UIColor)
    }
    }
extension ColorsTableVC: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetails", sender: color)
    }
}
