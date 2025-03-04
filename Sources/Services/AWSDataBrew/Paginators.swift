// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DataBrewClient {
    /// Paginate over `[ListDatasetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatasetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatasetsOutput`
    public func listDatasetsPaginated(input: ListDatasetsInput) -> ClientRuntime.PaginatorSequence<ListDatasetsInput, ListDatasetsOutput> {
        return ClientRuntime.PaginatorSequence<ListDatasetsInput, ListDatasetsOutput>(input: input, inputKey: \ListDatasetsInput.nextToken, outputKey: \ListDatasetsOutput.nextToken, paginationFunction: self.listDatasets(input:))
    }
}

extension ListDatasetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetsInput {
        return ListDatasetsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListDatasetsInput, Output == ListDatasetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDatasetsPaginated`
    /// to access the nested member `[DataBrewClientTypes.Dataset]`
    /// - Returns: `[DataBrewClientTypes.Dataset]`
    public func datasets() async throws -> [DataBrewClientTypes.Dataset] {
        return try await self.asyncCompactMap { item in item.datasets }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListJobRunsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListJobRunsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListJobRunsOutput`
    public func listJobRunsPaginated(input: ListJobRunsInput) -> ClientRuntime.PaginatorSequence<ListJobRunsInput, ListJobRunsOutput> {
        return ClientRuntime.PaginatorSequence<ListJobRunsInput, ListJobRunsOutput>(input: input, inputKey: \ListJobRunsInput.nextToken, outputKey: \ListJobRunsOutput.nextToken, paginationFunction: self.listJobRuns(input:))
    }
}

extension ListJobRunsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobRunsInput {
        return ListJobRunsInput(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListJobRunsInput, Output == ListJobRunsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listJobRunsPaginated`
    /// to access the nested member `[DataBrewClientTypes.JobRun]`
    /// - Returns: `[DataBrewClientTypes.JobRun]`
    public func jobRuns() async throws -> [DataBrewClientTypes.JobRun] {
        return try await self.asyncCompactMap { item in item.jobRuns }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListJobsOutput`
    public func listJobsPaginated(input: ListJobsInput) -> ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutput>(input: input, inputKey: \ListJobsInput.nextToken, outputKey: \ListJobsOutput.nextToken, paginationFunction: self.listJobs(input:))
    }
}

extension ListJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobsInput {
        return ListJobsInput(
            datasetName: self.datasetName,
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName
        )}
}

extension PaginatorSequence where Input == ListJobsInput, Output == ListJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listJobsPaginated`
    /// to access the nested member `[DataBrewClientTypes.Job]`
    /// - Returns: `[DataBrewClientTypes.Job]`
    public func jobs() async throws -> [DataBrewClientTypes.Job] {
        return try await self.asyncCompactMap { item in item.jobs }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListProjectsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProjectsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProjectsOutput`
    public func listProjectsPaginated(input: ListProjectsInput) -> ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutput> {
        return ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutput>(input: input, inputKey: \ListProjectsInput.nextToken, outputKey: \ListProjectsOutput.nextToken, paginationFunction: self.listProjects(input:))
    }
}

extension ListProjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProjectsInput {
        return ListProjectsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListProjectsInput, Output == ListProjectsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listProjectsPaginated`
    /// to access the nested member `[DataBrewClientTypes.Project]`
    /// - Returns: `[DataBrewClientTypes.Project]`
    public func projects() async throws -> [DataBrewClientTypes.Project] {
        return try await self.asyncCompactMap { item in item.projects }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListRecipesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecipesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecipesOutput`
    public func listRecipesPaginated(input: ListRecipesInput) -> ClientRuntime.PaginatorSequence<ListRecipesInput, ListRecipesOutput> {
        return ClientRuntime.PaginatorSequence<ListRecipesInput, ListRecipesOutput>(input: input, inputKey: \ListRecipesInput.nextToken, outputKey: \ListRecipesOutput.nextToken, paginationFunction: self.listRecipes(input:))
    }
}

extension ListRecipesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecipesInput {
        return ListRecipesInput(
            maxResults: self.maxResults,
            nextToken: token,
            recipeVersion: self.recipeVersion
        )}
}

extension PaginatorSequence where Input == ListRecipesInput, Output == ListRecipesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRecipesPaginated`
    /// to access the nested member `[DataBrewClientTypes.Recipe]`
    /// - Returns: `[DataBrewClientTypes.Recipe]`
    public func recipes() async throws -> [DataBrewClientTypes.Recipe] {
        return try await self.asyncCompactMap { item in item.recipes }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListRecipeVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecipeVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecipeVersionsOutput`
    public func listRecipeVersionsPaginated(input: ListRecipeVersionsInput) -> ClientRuntime.PaginatorSequence<ListRecipeVersionsInput, ListRecipeVersionsOutput> {
        return ClientRuntime.PaginatorSequence<ListRecipeVersionsInput, ListRecipeVersionsOutput>(input: input, inputKey: \ListRecipeVersionsInput.nextToken, outputKey: \ListRecipeVersionsOutput.nextToken, paginationFunction: self.listRecipeVersions(input:))
    }
}

extension ListRecipeVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecipeVersionsInput {
        return ListRecipeVersionsInput(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListRecipeVersionsInput, Output == ListRecipeVersionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRecipeVersionsPaginated`
    /// to access the nested member `[DataBrewClientTypes.Recipe]`
    /// - Returns: `[DataBrewClientTypes.Recipe]`
    public func recipes() async throws -> [DataBrewClientTypes.Recipe] {
        return try await self.asyncCompactMap { item in item.recipes }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListRulesetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRulesetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRulesetsOutput`
    public func listRulesetsPaginated(input: ListRulesetsInput) -> ClientRuntime.PaginatorSequence<ListRulesetsInput, ListRulesetsOutput> {
        return ClientRuntime.PaginatorSequence<ListRulesetsInput, ListRulesetsOutput>(input: input, inputKey: \ListRulesetsInput.nextToken, outputKey: \ListRulesetsOutput.nextToken, paginationFunction: self.listRulesets(input:))
    }
}

extension ListRulesetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRulesetsInput {
        return ListRulesetsInput(
            maxResults: self.maxResults,
            nextToken: token,
            targetArn: self.targetArn
        )}
}

extension PaginatorSequence where Input == ListRulesetsInput, Output == ListRulesetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRulesetsPaginated`
    /// to access the nested member `[DataBrewClientTypes.RulesetItem]`
    /// - Returns: `[DataBrewClientTypes.RulesetItem]`
    public func rulesets() async throws -> [DataBrewClientTypes.RulesetItem] {
        return try await self.asyncCompactMap { item in item.rulesets }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListSchedulesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSchedulesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSchedulesOutput`
    public func listSchedulesPaginated(input: ListSchedulesInput) -> ClientRuntime.PaginatorSequence<ListSchedulesInput, ListSchedulesOutput> {
        return ClientRuntime.PaginatorSequence<ListSchedulesInput, ListSchedulesOutput>(input: input, inputKey: \ListSchedulesInput.nextToken, outputKey: \ListSchedulesOutput.nextToken, paginationFunction: self.listSchedules(input:))
    }
}

extension ListSchedulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchedulesInput {
        return ListSchedulesInput(
            jobName: self.jobName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListSchedulesInput, Output == ListSchedulesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSchedulesPaginated`
    /// to access the nested member `[DataBrewClientTypes.Schedule]`
    /// - Returns: `[DataBrewClientTypes.Schedule]`
    public func schedules() async throws -> [DataBrewClientTypes.Schedule] {
        return try await self.asyncCompactMap { item in item.schedules }
    }
}
