// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

#if canImport(AnyCodable)
    import AnyCodable
#endif
import Core
import Foundation

public struct StatusResponse: Codable, JSONEncodable, Hashable {
    public var status: [String: Status]?

    public init(status: [String: Status]? = nil) {
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.status, forKey: .status)
    }
}
