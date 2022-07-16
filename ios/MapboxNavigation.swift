import Foundation
import MapboxDirections
import MapboxCoreNavigation
import MapboxNavigation
import CoreLocation
@objc(MapboxNavigation)

class MapboxNavigation: NSObject {
  @objc
  func takeMeToDestination() {
    let origin = Waypoint(coordinate: CLLocationCoordinate2D(latitude: 38.9131752, longitude: -77.0324047), name: "Mapbox")
    let destination = Waypoint(coordinate: CLLocationCoordinate2D(latitude: 38.8977, longitude: -77.0365), name: "White House")

    let routeOptions = NavigationRouteOptions(waypoints: [origin, destination])

    Directions.shared.calculate(routeOptions) { [weak self] (session, result) in
      switch result {
      case .failure(let error):
        print(error.localizedDescription)
      case .success(let response):
        guard let self = self else { return }
        // Pass the first generated route to the the NavigationViewController
        let viewController = NavigationViewController(for: response, routeIndex: 0, routeOptions: routeOptions)
        viewController.modalPresentationStyle = .fullScreen
        let appDelegate = UIApplication.shared.delegate
        appDelegate!.window!!.rootViewController!.present(viewController, animated: true, completion: nil)
      }
    }
  }
}
