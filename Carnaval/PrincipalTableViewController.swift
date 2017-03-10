//
//  PrincipalTableViewController.swift
//  Carnaval
//
//  Created by admin on 10/03/17.
//  Copyright © 2017 Joffily. All rights reserved.
//

import UIKit

class PrincipalTableViewController: UITableViewController {

    var cadastro = Cadastro()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        print("Segue \(segue.identifier)")
        
        if(segue.identifier == "principal_sobre"){
            let sobreVC = segue.destination as! SobreViewController
            sobreVC.cadastro = self.cadastro
        }else if(segue.identifier == "principal_formulario"){
            let formVC  = segue.destination as! FormularioViewController
            formVC.cadastro = self.cadastro
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.cadastro.quantidade()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)

         cell.textLabel?.text = "Bloco: " + self.cadastro.blocos[indexPath.row].nome


        return cell
    }

    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.cadastro.blocos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let aux = self.cadastro.blocos[fromIndexPath.row]
        self.cadastro.blocos[fromIndexPath.row] = self.cadastro.blocos[to.row]
        self.cadastro.blocos[to.row] = aux
    }


        // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tableView.reloadData()
    }

}
