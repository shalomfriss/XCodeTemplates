///NavigationPath is an array of NavigationLink elements  where the first element is the top most module to navigate to
///To use remove the first element, navigate to it and pass the NavigationPath to the child loaded
struct NavigationPath {
    public var links:[NavigationLink] = [NavigationLink]()
}
