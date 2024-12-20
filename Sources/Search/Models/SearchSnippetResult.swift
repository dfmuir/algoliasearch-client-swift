// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public enum SearchSnippetResult: Codable, JSONEncodable, AbstractEncodable {
    case searchSnippetResultOption(SearchSnippetResultOption)
    case dictionaryOfStringToSearchSnippetResult([String: SearchSnippetResult])
    case arrayOfSearchSnippetResult([SearchSnippetResult])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .searchSnippetResultOption(value):
            try container.encode(value)
        case let .dictionaryOfStringToSearchSnippetResult(value):
            try container.encode(value)
        case let .arrayOfSearchSnippetResult(value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(SearchSnippetResultOption.self) {
            self = .searchSnippetResultOption(value)
        } else if let value = try? container.decode([String: SearchSnippetResult].self) {
            self = .dictionaryOfStringToSearchSnippetResult(value)
        } else if let value = try? container.decode([SearchSnippetResult].self) {
            self = .arrayOfSearchSnippetResult(value)
        } else {
            throw DecodingError.typeMismatch(
                Self.Type.self,
                .init(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unable to decode instance of SearchSnippetResult"
                )
            )
        }
    }

    public func GetActualInstance() -> Encodable {
        switch self {
        case let .searchSnippetResultOption(value):
            value as SearchSnippetResultOption
        case let .dictionaryOfStringToSearchSnippetResult(value):
            value as [String: SearchSnippetResult]
        case let .arrayOfSearchSnippetResult(value):
            value as [SearchSnippetResult]
        }
    }
}

extension SearchSnippetResult: Equatable {}
extension SearchSnippetResult: Hashable {}
