// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

#if canImport(AnyCodable)
    import AnyCodable
#endif
import Core
import Foundation

/// Controls whether [typo
/// tolerance](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/typo-tolerance/) is enabled
/// and how it is applied.
public enum TypoTolerance: Codable, JSONEncodable, AbstractEncodable, Hashable {
    case bool(Bool)
    case typoToleranceEnum(TypoToleranceEnum)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .bool(value):
            try container.encode(value)
        case let .typoToleranceEnum(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Bool.self) {
            self = .bool(value)
        } else if let value = try? container.decode(TypoToleranceEnum.self) {
            self = .typoToleranceEnum(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of TypoTolerance")
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .bool(value):
            value as Bool
        case let .typoToleranceEnum(value):
            value as TypoToleranceEnum
        }
    }
}
