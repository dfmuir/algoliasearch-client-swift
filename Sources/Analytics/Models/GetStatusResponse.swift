// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct GetStatusResponse: Codable, JSONEncodable {
    /// Date and time when the object was updated, in RFC 3339 format.
    public var updatedAt: String?

    public init(updatedAt: String?) {
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }
}

extension GetStatusResponse: Equatable {
    public static func ==(lhs: GetStatusResponse, rhs: GetStatusResponse) -> Bool {
        lhs.updatedAt == rhs.updatedAt
    }
}

extension GetStatusResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.updatedAt.hashValue)
    }
}
