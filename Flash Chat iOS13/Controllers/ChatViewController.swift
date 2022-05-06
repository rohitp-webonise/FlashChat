//
//  ChatViewController.swift


import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages:[Message] = [
    
        Message(sender: "rohit@123.com", body: "Hey!"),
        Message(sender: "a@b.com", body: "Hello!"),
        Message(sender: "rohit@123.com", body: "What's up?"),
        Message(sender: "a@b.com", body: "Fine. Tell me About Yourself"),
        Message(sender: "rohit@123.com", body: "My Name Is Rohit Arun Patil,and Am from Kolhapur")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        title = K.appName
        navigationItem.hidesBackButton = true
        
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil) ,forCellReuseIdentifier:K.cellIdentifier)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func LogOutPressed(_ sender: UIBarButtonItem) {
       
        do{
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
            
            
        } catch let signOutError as NSError {
            print("Error signing out", signOutError)
        }
    }
    
}
extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        cell.label.text = messages[indexPath.row].body
        return cell
    }
    
    func tableView(_ tableView: UITableView,numberOfRowsInSection section:Int)->Int{
        return messages.count
    }

   
}

