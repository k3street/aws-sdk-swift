// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SQSClient {
    /// Paginate over `[ListDeadLetterSourceQueuesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDeadLetterSourceQueuesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDeadLetterSourceQueuesOutput`
    public func listDeadLetterSourceQueuesPaginated(input: ListDeadLetterSourceQueuesInput) -> ClientRuntime.PaginatorSequence<ListDeadLetterSourceQueuesInput, ListDeadLetterSourceQueuesOutput> {
        return ClientRuntime.PaginatorSequence<ListDeadLetterSourceQueuesInput, ListDeadLetterSourceQueuesOutput>(input: input, inputKey: \ListDeadLetterSourceQueuesInput.nextToken, outputKey: \ListDeadLetterSourceQueuesOutput.nextToken, paginationFunction: self.listDeadLetterSourceQueues(input:))
    }
}

extension ListDeadLetterSourceQueuesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeadLetterSourceQueuesInput {
        return ListDeadLetterSourceQueuesInput(
            maxResults: self.maxResults,
            nextToken: token,
            queueUrl: self.queueUrl
        )}
}

extension PaginatorSequence where Input == ListDeadLetterSourceQueuesInput, Output == ListDeadLetterSourceQueuesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDeadLetterSourceQueuesPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func queueUrls() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.queueUrls }
    }
}
extension SQSClient {
    /// Paginate over `[ListQueuesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListQueuesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListQueuesOutput`
    public func listQueuesPaginated(input: ListQueuesInput) -> ClientRuntime.PaginatorSequence<ListQueuesInput, ListQueuesOutput> {
        return ClientRuntime.PaginatorSequence<ListQueuesInput, ListQueuesOutput>(input: input, inputKey: \ListQueuesInput.nextToken, outputKey: \ListQueuesOutput.nextToken, paginationFunction: self.listQueues(input:))
    }
}

extension ListQueuesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListQueuesInput {
        return ListQueuesInput(
            maxResults: self.maxResults,
            nextToken: token,
            queueNamePrefix: self.queueNamePrefix
        )}
}

extension PaginatorSequence where Input == ListQueuesInput, Output == ListQueuesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listQueuesPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func queueUrls() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.queueUrls }
    }
}
