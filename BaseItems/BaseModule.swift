import UIKit

protocol NavigationOptionProtocol {}
struct GlobalNavigation:NavigationOptionProtocol {

}

protocol BaseModuleProtocol:class {
}

class BaseModule:BaseModuleProtocol {

    private unowned var _viewController: UIViewController

    init(viewController: UIViewController) {
        _viewController = viewController
    }

}


extension BaseModule {

    public var viewController: UIViewController {
        return _viewController
    }

    public var navigationController: UINavigationController? {
        return viewController.navigationController
    }

    public func presentModule(_ module:BaseModule, animated:Bool = true, completion: (() -> Void)? = nil) {
      viewController.present(module.viewController, animated: animated, completion: completion)
    }

    public func pushModule(_ module: BaseModule, animated: Bool = true) {
        navigationController?.pushViewController(module.viewController, animated: animated)
    }

    public func setRootWireframe(_ module: BaseModule, animated: Bool = true) {
        navigationController?.setViewControllers([module.viewController], animated: animated)
    }

}
