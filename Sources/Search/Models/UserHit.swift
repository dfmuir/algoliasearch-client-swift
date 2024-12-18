// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(AlgoliaCore)
    import AlgoliaCore
#endif

public struct UserHit: Codable, JSONEncodable {
    /// Unique identifier of the user who makes the search request.
    public var userID: String
    /// Cluster name.
    public var clusterName: String
    /// Number of records in the cluster.
    public var nbRecords: Int
    /// Data size taken by all the users assigned to the cluster.
    public var dataSize: Int
    /// userID of the requested user. Same as userID.
    public var objectID: String
    public var highlightResult: UserHighlightResult

    public init(
        userID: String,
        clusterName: String,
        nbRecords: Int,
        dataSize: Int,
        objectID: String,
        highlightResult: UserHighlightResult
    ) {
        self.userID = userID
        self.clusterName = clusterName
        self.nbRecords = nbRecords
        self.dataSize = dataSize
        self.objectID = objectID
        self.highlightResult = highlightResult
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userID
        case clusterName
        case nbRecords
        case dataSize
        case objectID
        case highlightResult = "_highlightResult"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.userID, forKey: .userID)
        try container.encode(self.clusterName, forKey: .clusterName)
        try container.encode(self.nbRecords, forKey: .nbRecords)
        try container.encode(self.dataSize, forKey: .dataSize)
        try container.encode(self.objectID, forKey: .objectID)
        try container.encode(self.highlightResult, forKey: .highlightResult)
    }
}

extension UserHit: Equatable {
    public static func ==(lhs: UserHit, rhs: UserHit) -> Bool {
        lhs.userID == rhs.userID &&
            lhs.clusterName == rhs.clusterName &&
            lhs.nbRecords == rhs.nbRecords &&
            lhs.dataSize == rhs.dataSize &&
            lhs.objectID == rhs.objectID &&
            lhs.highlightResult == rhs.highlightResult
    }
}

extension UserHit: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.userID.hashValue)
        hasher.combine(self.clusterName.hashValue)
        hasher.combine(self.nbRecords.hashValue)
        hasher.combine(self.dataSize.hashValue)
        hasher.combine(self.objectID.hashValue)
        hasher.combine(self.highlightResult.hashValue)
    }
}
