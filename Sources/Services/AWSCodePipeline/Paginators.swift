// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CodePipelineClient {
    /// Paginate over `[ListActionExecutionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListActionExecutionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListActionExecutionsOutput`
    public func listActionExecutionsPaginated(input: ListActionExecutionsInput) -> ClientRuntime.PaginatorSequence<ListActionExecutionsInput, ListActionExecutionsOutput> {
        return ClientRuntime.PaginatorSequence<ListActionExecutionsInput, ListActionExecutionsOutput>(input: input, inputKey: \ListActionExecutionsInput.nextToken, outputKey: \ListActionExecutionsOutput.nextToken, paginationFunction: self.listActionExecutions(input:))
    }
}

extension ListActionExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListActionExecutionsInput {
        return ListActionExecutionsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            pipelineName: self.pipelineName
        )}
}

extension PaginatorSequence where Input == ListActionExecutionsInput, Output == ListActionExecutionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listActionExecutionsPaginated`
    /// to access the nested member `[CodePipelineClientTypes.ActionExecutionDetail]`
    /// - Returns: `[CodePipelineClientTypes.ActionExecutionDetail]`
    public func actionExecutionDetails() async throws -> [CodePipelineClientTypes.ActionExecutionDetail] {
        return try await self.asyncCompactMap { item in item.actionExecutionDetails }
    }
}
extension CodePipelineClient {
    /// Paginate over `[ListActionTypesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListActionTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListActionTypesOutput`
    public func listActionTypesPaginated(input: ListActionTypesInput) -> ClientRuntime.PaginatorSequence<ListActionTypesInput, ListActionTypesOutput> {
        return ClientRuntime.PaginatorSequence<ListActionTypesInput, ListActionTypesOutput>(input: input, inputKey: \ListActionTypesInput.nextToken, outputKey: \ListActionTypesOutput.nextToken, paginationFunction: self.listActionTypes(input:))
    }
}

extension ListActionTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListActionTypesInput {
        return ListActionTypesInput(
            actionOwnerFilter: self.actionOwnerFilter,
            nextToken: token,
            regionFilter: self.regionFilter
        )}
}

extension PaginatorSequence where Input == ListActionTypesInput, Output == ListActionTypesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listActionTypesPaginated`
    /// to access the nested member `[CodePipelineClientTypes.ActionType]`
    /// - Returns: `[CodePipelineClientTypes.ActionType]`
    public func actionTypes() async throws -> [CodePipelineClientTypes.ActionType] {
        return try await self.asyncCompactMap { item in item.actionTypes }
    }
}
extension CodePipelineClient {
    /// Paginate over `[ListPipelineExecutionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPipelineExecutionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPipelineExecutionsOutput`
    public func listPipelineExecutionsPaginated(input: ListPipelineExecutionsInput) -> ClientRuntime.PaginatorSequence<ListPipelineExecutionsInput, ListPipelineExecutionsOutput> {
        return ClientRuntime.PaginatorSequence<ListPipelineExecutionsInput, ListPipelineExecutionsOutput>(input: input, inputKey: \ListPipelineExecutionsInput.nextToken, outputKey: \ListPipelineExecutionsOutput.nextToken, paginationFunction: self.listPipelineExecutions(input:))
    }
}

extension ListPipelineExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPipelineExecutionsInput {
        return ListPipelineExecutionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            pipelineName: self.pipelineName
        )}
}

extension PaginatorSequence where Input == ListPipelineExecutionsInput, Output == ListPipelineExecutionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPipelineExecutionsPaginated`
    /// to access the nested member `[CodePipelineClientTypes.PipelineExecutionSummary]`
    /// - Returns: `[CodePipelineClientTypes.PipelineExecutionSummary]`
    public func pipelineExecutionSummaries() async throws -> [CodePipelineClientTypes.PipelineExecutionSummary] {
        return try await self.asyncCompactMap { item in item.pipelineExecutionSummaries }
    }
}
extension CodePipelineClient {
    /// Paginate over `[ListPipelinesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPipelinesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPipelinesOutput`
    public func listPipelinesPaginated(input: ListPipelinesInput) -> ClientRuntime.PaginatorSequence<ListPipelinesInput, ListPipelinesOutput> {
        return ClientRuntime.PaginatorSequence<ListPipelinesInput, ListPipelinesOutput>(input: input, inputKey: \ListPipelinesInput.nextToken, outputKey: \ListPipelinesOutput.nextToken, paginationFunction: self.listPipelines(input:))
    }
}

extension ListPipelinesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPipelinesInput {
        return ListPipelinesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListPipelinesInput, Output == ListPipelinesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPipelinesPaginated`
    /// to access the nested member `[CodePipelineClientTypes.PipelineSummary]`
    /// - Returns: `[CodePipelineClientTypes.PipelineSummary]`
    public func pipelines() async throws -> [CodePipelineClientTypes.PipelineSummary] {
        return try await self.asyncCompactMap { item in item.pipelines }
    }
}
extension CodePipelineClient {
    /// Paginate over `[ListTagsForResourceOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTagsForResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutput`
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutput.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

extension PaginatorSequence where Input == ListTagsForResourceInput, Output == ListTagsForResourceOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
    /// to access the nested member `[CodePipelineClientTypes.Tag]`
    /// - Returns: `[CodePipelineClientTypes.Tag]`
    public func tags() async throws -> [CodePipelineClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}
extension CodePipelineClient {
    /// Paginate over `[ListWebhooksOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWebhooksInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWebhooksOutput`
    public func listWebhooksPaginated(input: ListWebhooksInput) -> ClientRuntime.PaginatorSequence<ListWebhooksInput, ListWebhooksOutput> {
        return ClientRuntime.PaginatorSequence<ListWebhooksInput, ListWebhooksOutput>(input: input, inputKey: \ListWebhooksInput.nextToken, outputKey: \ListWebhooksOutput.nextToken, paginationFunction: self.listWebhooks(input:))
    }
}

extension ListWebhooksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWebhooksInput {
        return ListWebhooksInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListWebhooksInput, Output == ListWebhooksOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listWebhooksPaginated`
    /// to access the nested member `[CodePipelineClientTypes.ListWebhookItem]`
    /// - Returns: `[CodePipelineClientTypes.ListWebhookItem]`
    public func webhooks() async throws -> [CodePipelineClientTypes.ListWebhookItem] {
        return try await self.asyncCompactMap { item in item.webhooks }
    }
}
