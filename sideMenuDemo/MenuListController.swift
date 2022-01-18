import UIKit
import SideMenu

class MenuListController : UITableViewController{
   
   
    //@IBOutlet var tableView: UITableView!
    var menu : SideMenuNavigationController?
    let darkColor = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 33/255.0)
    var items = ["Home","About","Contact"]
    var ImageDetailMenu = ["house","message","person"]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        
        tableView.backgroundColor = darkColor
        tableView.register(UITableViewCell.self, forCellReuseIdentifier : "cell")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell",for: indexPath)
            cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = darkColor
        cell.imageView?.image = UIImage(systemName: ImageDetailMenu[indexPath.row])
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at:indexPath, animated: false)
        var temp = indexPath.row
        if(Int(temp) == 0)
        {
           let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController")as? ViewController
          //  vc!.titles = items[indexPath.row]
           self.navigationController?.pushViewController(vc!,animated: false)
        }
        else if(Int(temp) == 1)
        {
            let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as? SecondViewController
            
            self.navigationController?.pushViewController(vc!,animated: false)
        }
        else if(Int(temp) == 2)
        {
            let vc = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController")as? ThirdViewController
           
            self.navigationController?.pushViewController(vc!,animated: false)
        }
        
    }
    
    }

