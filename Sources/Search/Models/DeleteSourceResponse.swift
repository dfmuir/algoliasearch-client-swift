// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

#if canImport(AnyCodable)
    import AnyCodable
#endif
import Core
import Foundation

public struct DeleteSourceResponse: Codable, JSONEncodable, Hashable {
    /// Timestamp of deletion in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format.
    public var deletedAt: String

    public init(deletedAt: String) {
        self.deletedAt = deletedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deletedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.deletedAt, forKey: .deletedAt)
    }
}
