// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

/// Whether a dictionary entry is provided by Algolia (standard), or has been added by you (custom).
public enum DictionaryEntryType: String, Codable, CaseIterable {
    case custom
    case standard
}

extension DictionaryEntryType: Hashable {}