// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

#if canImport(AnyCodable)
    import AnyCodable
#endif
import Core
import Foundation

public struct Pagination: Codable, JSONEncodable, Hashable {
    public var nbPages: Int
    public var page: Int
    public var nbItems: Int
    public var itemsPerPage: Int

    public init(nbPages: Int, page: Int, nbItems: Int, itemsPerPage: Int) {
        self.nbPages = nbPages
        self.page = page
        self.nbItems = nbItems
        self.itemsPerPage = itemsPerPage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nbPages
        case page
        case nbItems
        case itemsPerPage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.nbPages, forKey: .nbPages)
        try container.encode(self.page, forKey: .page)
        try container.encode(self.nbItems, forKey: .nbItems)
        try container.encode(self.itemsPerPage, forKey: .itemsPerPage)
    }
}
