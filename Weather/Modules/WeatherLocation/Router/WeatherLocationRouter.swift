import UIKit


protocol WeatherLocationRouter {
    
    func navigateBack()
    
}


class WeatherLocationModalRouter: WeatherLocationRouter {
    
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    // MARK: <WeatherLocationRouter>
    
    func navigateBack() {
        self.viewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}
