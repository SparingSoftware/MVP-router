//
//  ListViewController.swift
//  Router
//
//  Created by Ufos on 13/05/2019.
//  Copyright © 2019 Panowie Programisci. All rights reserved.
//

import UIKit

class ProfileListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //
    
    lazy var router: IRouter = {
       return ProfileListRouter(viewController: self)
    }()
    
    lazy var presenter: IProfileListPresenter = {
       return ProfileListPresenter(
            view: self,
            router: router,
            eventObserver: EventObserver()
        )
    }()
    
    
    //
    // Lifecycle
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewDidLoad()
    }

    //
    // Actions
    //
    
    @IBAction func myProfileClicked(_ sender: Any) {
        presenter.myProfileClicked()
    }
    
    //
    // Navigation
    //
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.handleSegue(segue: segue)
    }
    
}

//

extension ProfileListViewController: IProfileListView {
    
    func setupViews() {
        setupTableView()
    }
 
}

// TableView

extension ProfileListViewController: UITableViewDelegate, UITableViewDataSource {
    
    private func setupTableView() {
        self.tableView.register(UINib(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileTableViewCell")
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.rowHeight = 50
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfProfiles()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
        
        cell.setup(user: presenter.profileAt(pos: indexPath.row))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.profileClickedAt(pos: indexPath.row)
    }
    
}
