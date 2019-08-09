//
//  WinnersTableViewController.swift
//  App_TabelinhaCopa
//
//  Created by paulopr4 on 07/08/19.
//  Copyright © 2019 paulopr4. All rights reserved.
//

import UIKit

class WinnersTableViewController: UITableViewController {
    
    var worldCup: [WorldCup] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWorldCup()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! WorldCupViewController
        let worlCup = worldCup[tableView.indexPathForSelectedRow!.row]
        vc.worldCup = worlCup
    }
    
    func loadWorldCup() {
         print(" função Ativada loadWorldCup")
        let fileURL = Bundle.main.url(forResource: "winners.json", withExtension: nil)!
        let jsonData = try! Data(contentsOf: fileURL)
        do {
            worldCup = try JSONDecoder().decode([WorldCup].self, from: jsonData)
        }catch{
            print(error.localizedDescription)
        }
    }
    
    
    // MARK: - Table view data source
    // Pede para informar quantas sessoes vamos ter
    override func numberOfSections(in tableView: UITableView) -> Int {
        print(" função Ativada numberOfSections")
        return 1
    }
    // Quantas linhas uma sessao vai ter !!!
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(" função Ativada numberOfRowsInSection")
        return worldCup.count
    }
    
    // Método q é chamado sempre que a tabela for apresentar uma celula // indexPath contém caminho da celula
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WorldCupTableViewCell
        
        let wordCup = worldCup[indexPath.row]
        cell.prepare(with: wordCup)
       
        
        // Configure the cell...
        print(" função Ativada cellForRowAt")
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
