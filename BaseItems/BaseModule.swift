import UIKit

protocol NavigationOptionProtocol {}

//Protocol
protocol BaseModuleProtocol:class {
    func presentModule(_ module:BaseModule, animated:Bool, completion: (() -> Void)?)
    func pushModule(_ module: BaseModule, animated: Bool)
    func setRootModule(_ module: BaseModule, animated: Bool)
}

//Initi
class BaseModule {
    private unowned var _viewController: UIViewController

    init(viewController: UIViewController) {
        _viewController = viewController
    }
}

//Getter / setter for common items
extension BaseModule {
    public var viewController: UIViewController {
        return _viewController
    }

    public var navigationController: UINavigationController? {
        return viewController.navigationController
    }
}

//Internal navigation
extension BaseModule:BaseModuleProtocol {


    public func presentModule(_ module:BaseModule, animated:Bool = true, completion: (() -> Void)? = nil) {
        viewController.present(module.viewController, animated: animated, completion: completion)
    }

    public func pushModule(_ module: BaseModule, animated: Bool = true) {
        navigationController?.pushViewController(module.viewController, animated: animated)
    }

    public func setRootModule(_ module: BaseModule, animated: Bool = true) {
        navigationController?.setViewControllers([module.viewController], animated: animated)
    }

}
