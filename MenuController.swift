class MenuListController : UITableViewController{
     
    let darkColor = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 33/255.0)
    var items = ["Home","About","Career","Settings","Contact"]
    var ImageDetailMenu = ["house","airplane","message","book","person"]
    override func viewDidLoad() {
        super.viewDidLoad()
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
        print("tapped")
        //tableView.deselectRow(at:indexPath, animated: true)
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailView")as? DetailView
        vc?.DetailLabelTemp = items[indexPath.row]
       // print(items[indexPath.row])
       // vc?.image = UIImage(named: ImageDetailMenu[indexPath.row] )!
        self.navigationController?.pushViewController(vc, animated:true)
    }
    
    }

