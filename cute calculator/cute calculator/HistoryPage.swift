//
//  HistoryPage.swift
//  cute calculator
//
//  Created by HSIAO JENHAO on 2017-06-06.
//  Copyright © 2017 HSIAO JENHAO. All rights reserved.
//

import UIKit


// array
var HistoryArray : [HistoryClass] = []

class HistoryPage: UIViewController ,UITableViewDelegate , UITableViewDataSource{


    let ButtonBack = UIButton(type: .custom)
    let ButtonDele = UIButton(type: .custom)
    let ButtonTitle = UIButton(type: .custom)


    var HistoryTableView = UITableView()
    // set the tableView

    var TaskFromCoreData : [EntityHistory] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(red: 0, green: 0.4863, blue: 0.749, alpha: 1.0)
        let fullScreenSize = UIScreen.main.bounds.size

        // Title

        ButtonTitle.frame = CGRect(x: fullScreenSize.width * 0.5 - 50, y: fullScreenSize.height * 0.022,
                                  width: 100 , height: 40)
        ButtonTitle.isEnabled = true
        ButtonTitle.setImage(UIImage(named:"historyList_title"), for: .normal)
        ButtonTitle.setImage(UIImage(named:"historyList_title"), for: .highlighted)
        self.view.addSubview(ButtonTitle)


        // dismiss(back) button

        ButtonBack.frame = CGRect(x: fullScreenSize.width * 0.05, y: fullScreenSize.height * 0.022, width: 60 , height: 60)
        ButtonBack.isEnabled = true
        ButtonBack.setImage(UIImage(named:"historyList_back_button"), for: .normal)
        self.view.addSubview(ButtonBack)
        ButtonBack.addTarget(self, action: #selector(backtoPreviousPage), for: .touchDown)

        // delete button

        ButtonDele.frame = CGRect(x: fullScreenSize.width - (fullScreenSize.width * 0.05) - 60 , y: fullScreenSize.height * 0.022,width: 60 , height: 60)
        ButtonDele.isEnabled = true
        ButtonDele.setImage(UIImage(named:"historyList_dele_button"), for: .normal)
        self.view.addSubview(ButtonDele)
        ButtonDele.addTarget(self, action: #selector(removeAllrecord), for: .touchDown)
    



        HistoryTableView = UITableView(frame: CGRect( x: 0, y: fullScreenSize.height * 0.13,
                                                     width: fullScreenSize.width,
                                                     height: fullScreenSize.height - (fullScreenSize.height * 0.13)),
                                      style: .plain)

        //enroll History cell

//        HistoryTableView.register(UITableViewCell.self, forCellReuseIdentifier: "HistoryCell")
        HistoryTableView.register(HistoryListCell.self, forCellReuseIdentifier: "HistoryCell")
        // set the delegate

        HistoryTableView.delegate = self
        HistoryTableView.dataSource = self

        //table view separator
        HistoryTableView.separatorStyle = .singleLine

        // separator space
        HistoryTableView.separatorInset = UIEdgeInsetsMake(0, 10, 0, 10)

        // allow select the cell
        HistoryTableView.allowsSelection = false

        // allow multiple select the cell
        HistoryTableView.allowsMultipleSelection = false

        // put inside the view
        self.view.addSubview(HistoryTableView)



    }

    override func viewWillAppear(_ animated: Bool) {
        // Get the data from core data
        getDataFromCoreData()

        //reload the table view
        TaskFromCoreData.reverse()
        HistoryTableView.reloadData()
        ifNoTask()


    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

//        return HistoryArray.count

        return TaskFromCoreData.count
    }

    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellIdentifier = "HistoryCell"
        let cell = HistoryTableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! HistoryListCell

//        let HistoryCellInfo = HistoryArray[indexPath.row]
//
//        if tableView == self.HistoryTableView {
//            cell.operationProcessOnCellLabel .text = HistoryCellInfo.operationProcess
//            cell.operationResultOnCellLabel .text = HistoryCellInfo.operationResult
//
//        }

        let HistoryCellInfo = TaskFromCoreData[indexPath.row]

        if tableView == self.HistoryTableView {
            cell.operationProcessOnCellLabel .text = HistoryCellInfo.attributeProcess
            cell.operationResultOnCellLabel .text = HistoryCellInfo.attributeResult

        }


        return cell
    }

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }



    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        tableView.deselectRow(at: indexPath, animated: true)


    }

    func tableView(_ tableView: UITableView,accessoryButtonTappedForRowWith indexPath: IndexPath) {

    }

    func tableView(_ tableView: UITableView,heightForRowAt indexPath: IndexPath)
        -> CGFloat {
            return 60
    }


    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {

         let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

        if editingStyle == .delete{
            let task = TaskFromCoreData[indexPath.row]
            context.delete(task)
            
            (UIApplication.shared.delegate as! AppDelegate).saveContext()

            do{
                TaskFromCoreData = try context.fetch(EntityHistory.fetchRequest())
            }
            catch {
                print("Fetching Failed")
            }
        }

        tableView.reloadData()
        ifNoTask()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func backtoPreviousPage(){

        self.dismiss(animated: true, completion: nil)

    }

    func getDataFromCoreData(){
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

        do{
            TaskFromCoreData = try context.fetch(EntityHistory.fetchRequest())
        }
        catch {
            print("Fetching Failed")
        }

    }

    func ifNoTask(){


        if TaskFromCoreData.count == 0 {

            let alert = UIAlertController(title:nil,message: "No Record",preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style:.destructive , handler: nil)

            alert.addAction(action)

            present(alert, animated: true, completion:nil)

        }else{

        }
    }
    
    
    func removeAllrecord() {
        
        if TaskFromCoreData.count == 0 {
            
            let alert = UIAlertController(title:nil,message: "No Any Record Right Now",preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style:.destructive , handler: nil)
            
            alert.addAction(action)
            
            present(alert, animated: true, completion:nil)
            
        }else if TaskFromCoreData.count >= 1 {
            
            let alert = UIAlertController(title:nil,message: "All Record(s) Will Delete,\n Are You Sure?",preferredStyle: .alert)
            
            let actionNO = UIAlertAction(title: "NO", style: .cancel, handler: nil)
            let actionOK = UIAlertAction(title: "YES", style:.destructive , handler: removeAllrecordOK)
            
            alert.addAction(actionNO)
            alert.addAction(actionOK)
            
            
            present(alert, animated: true, completion:nil)
            
        }

      
        
    }
    
    func removeAllrecordOK(action: UIAlertAction) {
        
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        for object in TaskFromCoreData{
            
            context.delete(object)
            
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
        }
        
        
        do{
            TaskFromCoreData = try context.fetch(EntityHistory.fetchRequest())
        }
        catch {
            print("Fetching Failed")
        }
        
        HistoryTableView.reloadData()
        
    }
    

}
