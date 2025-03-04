// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SchemasClient {
    /// Paginate over `[ListDiscoverersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDiscoverersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDiscoverersOutput`
    public func listDiscoverersPaginated(input: ListDiscoverersInput) -> ClientRuntime.PaginatorSequence<ListDiscoverersInput, ListDiscoverersOutput> {
        return ClientRuntime.PaginatorSequence<ListDiscoverersInput, ListDiscoverersOutput>(input: input, inputKey: \ListDiscoverersInput.nextToken, outputKey: \ListDiscoverersOutput.nextToken, paginationFunction: self.listDiscoverers(input:))
    }
}

extension ListDiscoverersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDiscoverersInput {
        return ListDiscoverersInput(
            discovererIdPrefix: self.discovererIdPrefix,
            limit: self.limit,
            nextToken: token,
            sourceArnPrefix: self.sourceArnPrefix
        )}
}

extension PaginatorSequence where Input == ListDiscoverersInput, Output == ListDiscoverersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDiscoverersPaginated`
    /// to access the nested member `[SchemasClientTypes.DiscovererSummary]`
    /// - Returns: `[SchemasClientTypes.DiscovererSummary]`
    public func discoverers() async throws -> [SchemasClientTypes.DiscovererSummary] {
        return try await self.asyncCompactMap { item in item.discoverers }
    }
}
extension SchemasClient {
    /// Paginate over `[ListRegistriesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRegistriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRegistriesOutput`
    public func listRegistriesPaginated(input: ListRegistriesInput) -> ClientRuntime.PaginatorSequence<ListRegistriesInput, ListRegistriesOutput> {
        return ClientRuntime.PaginatorSequence<ListRegistriesInput, ListRegistriesOutput>(input: input, inputKey: \ListRegistriesInput.nextToken, outputKey: \ListRegistriesOutput.nextToken, paginationFunction: self.listRegistries(input:))
    }
}

extension ListRegistriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRegistriesInput {
        return ListRegistriesInput(
            limit: self.limit,
            nextToken: token,
            registryNamePrefix: self.registryNamePrefix,
            scope: self.scope
        )}
}

extension PaginatorSequence where Input == ListRegistriesInput, Output == ListRegistriesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRegistriesPaginated`
    /// to access the nested member `[SchemasClientTypes.RegistrySummary]`
    /// - Returns: `[SchemasClientTypes.RegistrySummary]`
    public func registries() async throws -> [SchemasClientTypes.RegistrySummary] {
        return try await self.asyncCompactMap { item in item.registries }
    }
}
extension SchemasClient {
    /// Paginate over `[ListSchemasOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSchemasInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSchemasOutput`
    public func listSchemasPaginated(input: ListSchemasInput) -> ClientRuntime.PaginatorSequence<ListSchemasInput, ListSchemasOutput> {
        return ClientRuntime.PaginatorSequence<ListSchemasInput, ListSchemasOutput>(input: input, inputKey: \ListSchemasInput.nextToken, outputKey: \ListSchemasOutput.nextToken, paginationFunction: self.listSchemas(input:))
    }
}

extension ListSchemasInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchemasInput {
        return ListSchemasInput(
            limit: self.limit,
            nextToken: token,
            registryName: self.registryName,
            schemaNamePrefix: self.schemaNamePrefix
        )}
}

extension PaginatorSequence where Input == ListSchemasInput, Output == ListSchemasOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSchemasPaginated`
    /// to access the nested member `[SchemasClientTypes.SchemaSummary]`
    /// - Returns: `[SchemasClientTypes.SchemaSummary]`
    public func schemas() async throws -> [SchemasClientTypes.SchemaSummary] {
        return try await self.asyncCompactMap { item in item.schemas }
    }
}
extension SchemasClient {
    /// Paginate over `[ListSchemaVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSchemaVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSchemaVersionsOutput`
    public func listSchemaVersionsPaginated(input: ListSchemaVersionsInput) -> ClientRuntime.PaginatorSequence<ListSchemaVersionsInput, ListSchemaVersionsOutput> {
        return ClientRuntime.PaginatorSequence<ListSchemaVersionsInput, ListSchemaVersionsOutput>(input: input, inputKey: \ListSchemaVersionsInput.nextToken, outputKey: \ListSchemaVersionsOutput.nextToken, paginationFunction: self.listSchemaVersions(input:))
    }
}

extension ListSchemaVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchemaVersionsInput {
        return ListSchemaVersionsInput(
            limit: self.limit,
            nextToken: token,
            registryName: self.registryName,
            schemaName: self.schemaName
        )}
}

extension PaginatorSequence where Input == ListSchemaVersionsInput, Output == ListSchemaVersionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSchemaVersionsPaginated`
    /// to access the nested member `[SchemasClientTypes.SchemaVersionSummary]`
    /// - Returns: `[SchemasClientTypes.SchemaVersionSummary]`
    public func schemaVersions() async throws -> [SchemasClientTypes.SchemaVersionSummary] {
        return try await self.asyncCompactMap { item in item.schemaVersions }
    }
}
extension SchemasClient {
    /// Paginate over `[SearchSchemasOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchSchemasInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchSchemasOutput`
    public func searchSchemasPaginated(input: SearchSchemasInput) -> ClientRuntime.PaginatorSequence<SearchSchemasInput, SearchSchemasOutput> {
        return ClientRuntime.PaginatorSequence<SearchSchemasInput, SearchSchemasOutput>(input: input, inputKey: \SearchSchemasInput.nextToken, outputKey: \SearchSchemasOutput.nextToken, paginationFunction: self.searchSchemas(input:))
    }
}

extension SearchSchemasInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchSchemasInput {
        return SearchSchemasInput(
            keywords: self.keywords,
            limit: self.limit,
            nextToken: token,
            registryName: self.registryName
        )}
}

extension PaginatorSequence where Input == SearchSchemasInput, Output == SearchSchemasOutput {
    /// This paginator transforms the `AsyncSequence` returned by `searchSchemasPaginated`
    /// to access the nested member `[SchemasClientTypes.SearchSchemaSummary]`
    /// - Returns: `[SchemasClientTypes.SearchSchemaSummary]`
    public func schemas() async throws -> [SchemasClientTypes.SearchSchemaSummary] {
        return try await self.asyncCompactMap { item in item.schemas }
    }
}
