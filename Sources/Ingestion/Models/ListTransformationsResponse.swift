// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Configured transformations and pagination information.
public struct ListTransformationsResponse: Codable, JSONEncodable {
    public var transformations: [Transformation]
    public var pagination: Pagination

    public init(transformations: [Transformation], pagination: Pagination) {
        self.transformations = transformations
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transformations
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.transformations, forKey: .transformations)
        try container.encode(self.pagination, forKey: .pagination)
    }
}

extension ListTransformationsResponse: Equatable {
    public static func ==(lhs: ListTransformationsResponse, rhs: ListTransformationsResponse) -> Bool {
        lhs.transformations == rhs.transformations &&
            lhs.pagination == rhs.pagination
    }
}

extension ListTransformationsResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.transformations.hashValue)
        hasher.combine(self.pagination.hashValue)
    }
}
