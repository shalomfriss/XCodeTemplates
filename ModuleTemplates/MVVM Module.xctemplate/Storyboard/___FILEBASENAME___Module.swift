//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Cobra Generator
//

import UIKit


//Protocols
protocol ___VARIABLE_moduleName___ModuleInterface {
  func navigate(to option: NavigationOptionProtocol, animated:Bool)
  func link(to option:String, animated:Bool)
  func deepNavigate(to option:NavigationPath, animated:Bool)
}

protocol ___VARIABLE_moduleName___ModelInterface {
}

protocol ___VARIABLE_moduleName___ViewModelInterface {
}

protocol ___VARIABLE_moduleName___ViewInterface:class {
}

enum ___VARIABLE_moduleName___NavigationOption:String, CaseIterable, NavigationOptionProtocol {
  case placeholder
}

class ___VARIABLE_moduleName___Module: BaseModule {

    // MARK: - Private properties -

    private let _storyboard = UIStoryboard(name: "___VARIABLE_moduleName___", bundle: nil)

    // MARK: - Module setup -

    init() {
        let identifier = String(describing: ___VARIABLE_moduleName___ViewController.self)
        let moduleViewController =  _storyboard.instantiateViewController(withIdentifier: identifier) as! ___VARIABLE_moduleName___ViewController

        super.init(viewController: moduleViewController)

        let model = ___VARIABLE_moduleName___Model()
        let viewModel = ___VARIABLE_moduleName___ViewModel(module: self, view: moduleViewController, model: model)
        moduleViewController.viewModel = viewModel
    }

}

// MARK: - Extensions -

extension ___VARIABLE_moduleName___Module: ___VARIABLE_moduleName___ModuleInterface {

  func navigate(to option: NavigationOptionProtocol, animated:Bool = true) {
    let link = option as! ___VARIABLE_moduleName___NavigationOption
  }

  func link(to option:String, animated:Bool = true) {
      let routes = ___VARIABLE_moduleName___NavigationOption.allCases.map { "\($0)" }
      if(routes.contains(option)) {
        let route = ___VARIABLE_moduleName___NavigationOption(rawValue: option)!
        navigate(to: route, animated: animated)
      }
  }

  func deepNavigate(to option:NavigationPath, animated:Bool = true) {
      var path = option
      let route = path.links.removeFirst()
  }
}
