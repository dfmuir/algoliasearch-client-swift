// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct RunListResponse: Codable, JSONEncodable {
    public var runs: [Run]
    public var pagination: Pagination
    public var window: Window

    public init(runs: [Run], pagination: Pagination, window: Window) {
        self.runs = runs
        self.pagination = pagination
        self.window = window
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case runs
        case pagination
        case window
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.runs, forKey: .runs)
        try container.encode(self.pagination, forKey: .pagination)
        try container.encode(self.window, forKey: .window)
    }
}

extension RunListResponse: Equatable {
    public static func ==(lhs: RunListResponse, rhs: RunListResponse) -> Bool {
        lhs.runs == rhs.runs &&
            lhs.pagination == rhs.pagination &&
            lhs.window == rhs.window
    }
}

extension RunListResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.runs.hashValue)
        hasher.combine(self.pagination.hashValue)
        hasher.combine(self.window.hashValue)
    }
}
