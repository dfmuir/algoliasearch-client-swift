// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

#if canImport(AnyCodable)
    import AnyCodable
#endif
import Core
import Foundation

public struct BigCommerceMetafield: Codable, JSONEncodable, Hashable {
    /// The namespace of the metafield.
    public var namespace: String
    /// The key identifier of the metafield.
    public var key: String

    public init(namespace: String, key: String) {
        self.namespace = namespace
        self.key = key
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case namespace
        case key
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.namespace, forKey: .namespace)
        try container.encode(self.key, forKey: .key)
    }
}
