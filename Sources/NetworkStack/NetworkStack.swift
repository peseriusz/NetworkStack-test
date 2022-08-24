import Foundation
import Alamofire


public struct NetworkStack {
    public static func getConsultants(_ completion: @escaping ([Consultant]) -> Void) {
        AF.request(Endpoint.consultants.url).response(completionHandler: { response in
            do {
                let result = try response.result.get()
                if let data = result,
                   let consultants = try? JSONDecoder().decode([Consultant].self, from: data) {
                    completion(consultants)
                } else {
                    completion([])
                }
            } catch {
                completion([])
            }
        })
    }
}
