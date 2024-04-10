// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on
// https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import Foundation
#if canImport(Core)
    import Core
#endif

public struct GetConversionRateResponse: Codable, JSONEncodable {
    /// Conversion rate, calculated as number of tracked searches with at least one conversion event divided by the
    /// number of tracked searches. If null, Algolia didn't receive any search requests with `clickAnalytics` set to
    /// true.
    public var rate: Double?
    /// Number of tracked searches. Tracked searches are search requests where the `clickAnalytics` parameter is true.
    public var trackedSearchCount: Int
    /// Number of conversions from this search.
    public var conversionCount: Int
    /// Daily conversion rates.
    public var dates: [DailyConversionRates]

    public init(rate: Double?, trackedSearchCount: Int, conversionCount: Int, dates: [DailyConversionRates]) {
        self.rate = rate
        self.trackedSearchCount = trackedSearchCount
        self.conversionCount = conversionCount
        self.dates = dates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rate
        case trackedSearchCount
        case conversionCount
        case dates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.rate, forKey: .rate)
        try container.encode(self.trackedSearchCount, forKey: .trackedSearchCount)
        try container.encode(self.conversionCount, forKey: .conversionCount)
        try container.encode(self.dates, forKey: .dates)
    }
}

extension GetConversionRateResponse: Equatable {
    public static func ==(lhs: GetConversionRateResponse, rhs: GetConversionRateResponse) -> Bool {
        lhs.rate == rhs.rate &&
            lhs.trackedSearchCount == rhs.trackedSearchCount &&
            lhs.conversionCount == rhs.conversionCount &&
            lhs.dates == rhs.dates
    }
}

extension GetConversionRateResponse: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.rate.hashValue)
        hasher.combine(self.trackedSearchCount.hashValue)
        hasher.combine(self.conversionCount.hashValue)
        hasher.combine(self.dates.hashValue)
    }
}