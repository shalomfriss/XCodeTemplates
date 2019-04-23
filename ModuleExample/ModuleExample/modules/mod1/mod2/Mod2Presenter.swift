//
//  Mod2Presenter.swift
//  ModuleExample
//
//  Created by user on 4/21/19.
//  Copyright (c) 2019 Shalom Friss. All rights reserved.
//
//  This file was generated by the Cobra Generator
//

import UIKit

class Mod2Presenter {

    // MARK: - Private properties -

    private unowned let _view: Mod2ViewInterface
    private let _module: Mod2ModuleInterface
    private let _model: Mod2ModelInterface

    // MARK: - Lifecycle -

    init(module: Mod2ModuleInterface, view: Mod2ViewInterface, model: Mod2ModelInterface) {
        _module = module
        _view = view
        _model = model
    }
}

// MARK: - Extensions -

extension Mod2Presenter: Mod2PresenterInterface {

}