//
//  Sub1Module.swift
//  ModuleExample
//
//  Created by user on 4/21/19.
//  Copyright (c) 2019 Shalom Friss. All rights reserved.
//
//  This file was generated by the Cobra Generator
//

import UIKit


//Protocols
protocol Sub1ModuleInterface {
    func navigate(to option: NavigationOptionProtocol, animated:Bool)
    func link(to option:String, animated:Bool)
    func deepNavigate(to option:NavigationPath, animated:Bool)
}

protocol Sub1ModelInterface {
}

protocol Sub1PresenterInterface {
}

protocol Sub1ViewInterface:class {
}

enum Sub1NavigationOption:String, CaseIterable, NavigationOptionProtocol {
  case placeholder
}

class Sub1Module: BaseModule {

    // MARK: - Private properties -

    private let _storyboard = UIStoryboard(name: "Sub1", bundle: nil)

    // MARK: - Module setup -

    init() {
        let identifier = String(describing: Sub1ViewController.self)
        let moduleViewController =  _storyboard.instantiateViewController(withIdentifier: identifier) as! Sub1ViewController

        super.init(viewController: moduleViewController)

        let model = Sub1Model()
        let presenter = Sub1Presenter(module: self, view: moduleViewController, model: model)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -

extension Sub1Module: Sub1ModuleInterface {

  func navigate(to option: NavigationOptionProtocol, animated:Bool = true) {
    let link = option as! Sub1NavigationOption
  }

  func link(to option:String, animated:Bool = true) {
      let routes = Sub1NavigationOption.allCases.map { "\($0)" }
      if(routes.contains(option)) {
        let route = Sub1NavigationOption(rawValue: option)!
        navigate(to: route, animated: animated)
      }
  }

  func deepNavigate(to option:NavigationPath, animated:Bool = true) {
      var path = option
      let route = path.links.removeFirst()
  }
}
