// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

/// Configuration of the task, depending on its type.
public enum TaskInput: Codable, JSONEncodable, AbstractEncodable {
    case streamingInput(StreamingInput)
    case dockerStreamsInput(DockerStreamsInput)
    case shopifyInput(ShopifyInput)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .streamingInput(value):
            try container.encode(value)
        case let .dockerStreamsInput(value):
            try container.encode(value)
        case let .shopifyInput(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(StreamingInput.self) {
            self = .streamingInput(value)
        } else if let value = try? container.decode(DockerStreamsInput.self) {
            self = .dockerStreamsInput(value)
        } else if let value = try? container.decode(ShopifyInput.self) {
            self = .shopifyInput(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of TaskInput")
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .streamingInput(value):
            value as StreamingInput
        case let .dockerStreamsInput(value):
            value as DockerStreamsInput
        case let .shopifyInput(value):
            value as ShopifyInput
        }
    }
}

extension TaskInput: Equatable {}
extension TaskInput: Hashable {}
