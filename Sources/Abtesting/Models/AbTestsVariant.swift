// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct AbTestsVariant: Codable, JSONEncodable {
    /// Index name of the A/B test variant (case-sensitive).
    public var index: String
    /// Percentage of search requests each variant receives.
    public var trafficPercentage: Int
    /// Description for this variant.
    public var description: String?

    public init(index: String, trafficPercentage: Int, description: String? = nil) {
        self.index = index
        self.trafficPercentage = trafficPercentage
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case index
        case trafficPercentage
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.index, forKey: .index)
        try container.encode(self.trafficPercentage, forKey: .trafficPercentage)
        try container.encodeIfPresent(self.description, forKey: .description)
    }
}

extension AbTestsVariant: Equatable {
    public static func ==(lhs: AbTestsVariant, rhs: AbTestsVariant) -> Bool {
        lhs.index == rhs.index &&
            lhs.trafficPercentage == rhs.trafficPercentage &&
            lhs.description == rhs.description
    }
}

extension AbTestsVariant: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.index.hashValue)
        hasher.combine(self.trafficPercentage.hashValue)
        hasher.combine(self.description?.hashValue)
    }
}
