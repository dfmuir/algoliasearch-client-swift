// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// The strategy to use to fetch the data.
public enum DockerStreamsSyncMode: String, Codable, CaseIterable {
    case incremental
    case fullTable
}

extension DockerStreamsSyncMode: Hashable {}