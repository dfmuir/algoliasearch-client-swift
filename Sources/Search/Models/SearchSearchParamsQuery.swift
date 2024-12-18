// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct SearchSearchParamsQuery: Codable, JSONEncodable {
    /// Search query.
    public var query: String?

    public init(query: String? = nil) {
        self.query = query
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case query
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.query, forKey: .query)
    }
}

extension SearchSearchParamsQuery: Equatable {
    public static func ==(lhs: SearchSearchParamsQuery, rhs: SearchSearchParamsQuery) -> Bool {
        lhs.query == rhs.query
    }
}

extension SearchSearchParamsQuery: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.query?.hashValue)
    }
}
