// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

#if canImport(AnyCodable)
    import AnyCodable
#endif
import Core
import Foundation

/// &#x60;batchDictionaryEntries&#x60; parameters.
public struct BatchDictionaryEntriesParams: Codable, JSONEncodable, Hashable {
    /// Incidates whether to replace all custom entries in the dictionary with the ones sent with this request.
    public var clearExistingDictionaryEntries: Bool?
    /// Operations to batch.
    public var requests: [BatchDictionaryEntriesRequest]

    public init(clearExistingDictionaryEntries: Bool? = nil, requests: [BatchDictionaryEntriesRequest]) {
        self.clearExistingDictionaryEntries = clearExistingDictionaryEntries
        self.requests = requests
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case clearExistingDictionaryEntries
        case requests
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.clearExistingDictionaryEntries, forKey: .clearExistingDictionaryEntries)
        try container.encode(self.requests, forKey: .requests)
    }
}
