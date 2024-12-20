// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct HasPendingMappingsResponse: Codable, JSONEncodable {
    /// Whether there are clusters undergoing migration, creation, or deletion.
    public var pending: Bool
    /// Cluster pending mapping state: migrating, creating, deleting.
    public var clusters: [String: [String]]?

    public init(pending: Bool, clusters: [String: [String]]? = nil) {
        self.pending = pending
        self.clusters = clusters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pending
        case clusters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.pending, forKey: .pending)
        try container.encodeIfPresent(self.clusters, forKey: .clusters)
    }
}

extension HasPendingMappingsResponse: Equatable {
    public static func ==(lhs: HasPendingMappingsResponse, rhs: HasPendingMappingsResponse) -> Bool {
        lhs.pending == rhs.pending &&
            lhs.clusters == rhs.clusters
    }
}

extension HasPendingMappingsResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.pending.hashValue)
        hasher.combine(self.clusters?.hashValue)
    }
}
