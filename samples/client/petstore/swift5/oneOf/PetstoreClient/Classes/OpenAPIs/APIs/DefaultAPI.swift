//
// DefaultAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DefaultAPI {

    /**

     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func rootGet(apiResponseQueue: DispatchQueue = PetstoreClientAPI.apiResponseQueue, completion: @escaping ((_ data: Fruit?, _ error: Error?) -> Void)) {
        rootGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /
     - returns: RequestBuilder<Fruit> 
     */
    open class func rootGetWithRequestBuilder() -> RequestBuilder<Fruit> {
        let localVariablePath = "/"
        let localVariableURLString = PetstoreClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Fruit>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
