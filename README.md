# Cobra Templates
Cobra templates is largely inspired by Infinum VIPER generator (https://github.com/infinum/iOS-VIPER-Xcode-Templates).  

It aims to simplify much of the implementation and remove unnecessary clutter.  Also, it adds some nice navigation sugar and couples with deep-linking easily through built in routing options.  

There are MVC, MVP, MVVP and VIPER templates.  Inter-module navigation (the router in VIPER) was extended for every one of these.  This is a simple utility contained in the original VIPER generator, which was extended here to accommodate deep linking.  This gives mechanisms
for "out of the box" complete navigation solution.

---
# Installation instructions
include the file BaseModule in your project

To install the Xcode templates run:
> make install_templates

To uninstall run:
> make uninstall_templates

---
## USAGE
Say you generate a root module called RootModule and a child module called ChildModule.
To navigate to your child module you add a case to

```Swift
enum RootModuleNavigationOption:String, CaseIterable {
  case placeholder
  case ChildModule
}
```

After this in your module's navigate function you can navigate to the child module like this:

```swift
func navigate(to option: RootModuleNavigationOption) {
  switch(option) {
    case ChildModule:
      let child = ChildModule()
      self.presentModule(child)
    case default:
      break
  }
}
```

***Note***: All of the interfaces are in the module class.

---
# Simple navigation and app structure
---
The sample app contains a few simple modules.  A root module constructed in AppDelegate like so:
```swift
rootModule = RootModule()

if let vc = rootModule?.viewController {
  let nav = UINavigationController(rootViewController: vc)
  self.window = UIWindow(frame: UIScreen.main.bounds)
  self.window?.rootViewController =  nav
  self.window?.makeKeyAndVisible()
}
```

Also, there is a top level module and a submodule which demostrate easy and organized navigation.

To replace a top level module use
```swift
self.setRootModule(module)
```

To add with subnavigation use
```swift
self.pushModule(module)
```
