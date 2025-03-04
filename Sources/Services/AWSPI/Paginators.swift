// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PIClient {
    /// Paginate over `[DescribeDimensionKeysOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeDimensionKeysInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeDimensionKeysOutput`
    public func describeDimensionKeysPaginated(input: DescribeDimensionKeysInput) -> ClientRuntime.PaginatorSequence<DescribeDimensionKeysInput, DescribeDimensionKeysOutput> {
        return ClientRuntime.PaginatorSequence<DescribeDimensionKeysInput, DescribeDimensionKeysOutput>(input: input, inputKey: \DescribeDimensionKeysInput.nextToken, outputKey: \DescribeDimensionKeysOutput.nextToken, paginationFunction: self.describeDimensionKeys(input:))
    }
}

extension DescribeDimensionKeysInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDimensionKeysInput {
        return DescribeDimensionKeysInput(
            additionalMetrics: self.additionalMetrics,
            endTime: self.endTime,
            filter: self.filter,
            groupBy: self.groupBy,
            identifier: self.identifier,
            maxResults: self.maxResults,
            metric: self.metric,
            nextToken: token,
            partitionBy: self.partitionBy,
            periodInSeconds: self.periodInSeconds,
            serviceType: self.serviceType,
            startTime: self.startTime
        )}
}
extension PIClient {
    /// Paginate over `[GetResourceMetricsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetResourceMetricsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetResourceMetricsOutput`
    public func getResourceMetricsPaginated(input: GetResourceMetricsInput) -> ClientRuntime.PaginatorSequence<GetResourceMetricsInput, GetResourceMetricsOutput> {
        return ClientRuntime.PaginatorSequence<GetResourceMetricsInput, GetResourceMetricsOutput>(input: input, inputKey: \GetResourceMetricsInput.nextToken, outputKey: \GetResourceMetricsOutput.nextToken, paginationFunction: self.getResourceMetrics(input:))
    }
}

extension GetResourceMetricsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetResourceMetricsInput {
        return GetResourceMetricsInput(
            endTime: self.endTime,
            identifier: self.identifier,
            maxResults: self.maxResults,
            metricQueries: self.metricQueries,
            nextToken: token,
            periodAlignment: self.periodAlignment,
            periodInSeconds: self.periodInSeconds,
            serviceType: self.serviceType,
            startTime: self.startTime
        )}
}
extension PIClient {
    /// Paginate over `[ListAvailableResourceDimensionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAvailableResourceDimensionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAvailableResourceDimensionsOutput`
    public func listAvailableResourceDimensionsPaginated(input: ListAvailableResourceDimensionsInput) -> ClientRuntime.PaginatorSequence<ListAvailableResourceDimensionsInput, ListAvailableResourceDimensionsOutput> {
        return ClientRuntime.PaginatorSequence<ListAvailableResourceDimensionsInput, ListAvailableResourceDimensionsOutput>(input: input, inputKey: \ListAvailableResourceDimensionsInput.nextToken, outputKey: \ListAvailableResourceDimensionsOutput.nextToken, paginationFunction: self.listAvailableResourceDimensions(input:))
    }
}

extension ListAvailableResourceDimensionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAvailableResourceDimensionsInput {
        return ListAvailableResourceDimensionsInput(
            identifier: self.identifier,
            maxResults: self.maxResults,
            metrics: self.metrics,
            nextToken: token,
            serviceType: self.serviceType
        )}
}
extension PIClient {
    /// Paginate over `[ListAvailableResourceMetricsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAvailableResourceMetricsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAvailableResourceMetricsOutput`
    public func listAvailableResourceMetricsPaginated(input: ListAvailableResourceMetricsInput) -> ClientRuntime.PaginatorSequence<ListAvailableResourceMetricsInput, ListAvailableResourceMetricsOutput> {
        return ClientRuntime.PaginatorSequence<ListAvailableResourceMetricsInput, ListAvailableResourceMetricsOutput>(input: input, inputKey: \ListAvailableResourceMetricsInput.nextToken, outputKey: \ListAvailableResourceMetricsOutput.nextToken, paginationFunction: self.listAvailableResourceMetrics(input:))
    }
}

extension ListAvailableResourceMetricsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAvailableResourceMetricsInput {
        return ListAvailableResourceMetricsInput(
            identifier: self.identifier,
            maxResults: self.maxResults,
            metricTypes: self.metricTypes,
            nextToken: token,
            serviceType: self.serviceType
        )}
}
extension PIClient {
    /// Paginate over `[ListPerformanceAnalysisReportsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPerformanceAnalysisReportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPerformanceAnalysisReportsOutput`
    public func listPerformanceAnalysisReportsPaginated(input: ListPerformanceAnalysisReportsInput) -> ClientRuntime.PaginatorSequence<ListPerformanceAnalysisReportsInput, ListPerformanceAnalysisReportsOutput> {
        return ClientRuntime.PaginatorSequence<ListPerformanceAnalysisReportsInput, ListPerformanceAnalysisReportsOutput>(input: input, inputKey: \ListPerformanceAnalysisReportsInput.nextToken, outputKey: \ListPerformanceAnalysisReportsOutput.nextToken, paginationFunction: self.listPerformanceAnalysisReports(input:))
    }
}

extension ListPerformanceAnalysisReportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPerformanceAnalysisReportsInput {
        return ListPerformanceAnalysisReportsInput(
            identifier: self.identifier,
            listTags: self.listTags,
            maxResults: self.maxResults,
            nextToken: token,
            serviceType: self.serviceType
        )}
}
