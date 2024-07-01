// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// API response for retrieving Query Suggestions configurations.
public struct ConfigurationResponse: Codable, JSONEncodable {
    /// Algolia application ID to which this Query Suggestions configuration belongs.
    public var appID: String
    /// Name of the Query Suggestions index (case-sensitive).
    public var indexName: String
    /// Algolia indices from which to get the popular searches for query suggestions.
    public var sourceIndices: [SourceIndex]
    public var languages: QuerySuggestionsLanguages
    public var exclude: [String]?
    /// Whether to turn on personalized query suggestions.
    public var enablePersonalization: Bool
    /// Whether to include suggestions with special characters.
    public var allowSpecialCharacters: Bool

    public init(
        appID: String,
        indexName: String,
        sourceIndices: [SourceIndex],
        languages: QuerySuggestionsLanguages,
        exclude: [String]?,
        enablePersonalization: Bool,
        allowSpecialCharacters: Bool
    ) {
        self.appID = appID
        self.indexName = indexName
        self.sourceIndices = sourceIndices
        self.languages = languages
        self.exclude = exclude
        self.enablePersonalization = enablePersonalization
        self.allowSpecialCharacters = allowSpecialCharacters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appID
        case indexName
        case sourceIndices
        case languages
        case exclude
        case enablePersonalization
        case allowSpecialCharacters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.appID, forKey: .appID)
        try container.encode(self.indexName, forKey: .indexName)
        try container.encode(self.sourceIndices, forKey: .sourceIndices)
        try container.encode(self.languages, forKey: .languages)
        try container.encode(self.exclude, forKey: .exclude)
        try container.encode(self.enablePersonalization, forKey: .enablePersonalization)
        try container.encode(self.allowSpecialCharacters, forKey: .allowSpecialCharacters)
    }
}

extension ConfigurationResponse: Equatable {
    public static func ==(lhs: ConfigurationResponse, rhs: ConfigurationResponse) -> Bool {
        lhs.appID == rhs.appID &&
            lhs.indexName == rhs.indexName &&
            lhs.sourceIndices == rhs.sourceIndices &&
            lhs.languages == rhs.languages &&
            lhs.exclude == rhs.exclude &&
            lhs.enablePersonalization == rhs.enablePersonalization &&
            lhs.allowSpecialCharacters == rhs.allowSpecialCharacters
    }
}

extension ConfigurationResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.appID.hashValue)
        hasher.combine(self.indexName.hashValue)
        hasher.combine(self.sourceIndices.hashValue)
        hasher.combine(self.languages.hashValue)
        hasher.combine(self.exclude.hashValue)
        hasher.combine(self.enablePersonalization.hashValue)
        hasher.combine(self.allowSpecialCharacters.hashValue)
    }
}