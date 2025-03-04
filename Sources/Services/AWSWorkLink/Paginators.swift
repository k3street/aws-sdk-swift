// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WorkLinkClient {
    /// Paginate over `[ListDevicesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDevicesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDevicesOutput`
    public func listDevicesPaginated(input: ListDevicesInput) -> ClientRuntime.PaginatorSequence<ListDevicesInput, ListDevicesOutput> {
        return ClientRuntime.PaginatorSequence<ListDevicesInput, ListDevicesOutput>(input: input, inputKey: \ListDevicesInput.nextToken, outputKey: \ListDevicesOutput.nextToken, paginationFunction: self.listDevices(input:))
    }
}

extension ListDevicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDevicesInput {
        return ListDevicesInput(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkLinkClient {
    /// Paginate over `[ListDomainsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainsOutput`
    public func listDomainsPaginated(input: ListDomainsInput) -> ClientRuntime.PaginatorSequence<ListDomainsInput, ListDomainsOutput> {
        return ClientRuntime.PaginatorSequence<ListDomainsInput, ListDomainsOutput>(input: input, inputKey: \ListDomainsInput.nextToken, outputKey: \ListDomainsOutput.nextToken, paginationFunction: self.listDomains(input:))
    }
}

extension ListDomainsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainsInput {
        return ListDomainsInput(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkLinkClient {
    /// Paginate over `[ListFleetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFleetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFleetsOutput`
    public func listFleetsPaginated(input: ListFleetsInput) -> ClientRuntime.PaginatorSequence<ListFleetsInput, ListFleetsOutput> {
        return ClientRuntime.PaginatorSequence<ListFleetsInput, ListFleetsOutput>(input: input, inputKey: \ListFleetsInput.nextToken, outputKey: \ListFleetsOutput.nextToken, paginationFunction: self.listFleets(input:))
    }
}

extension ListFleetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFleetsInput {
        return ListFleetsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkLinkClient {
    /// Paginate over `[ListWebsiteAuthorizationProvidersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWebsiteAuthorizationProvidersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWebsiteAuthorizationProvidersOutput`
    public func listWebsiteAuthorizationProvidersPaginated(input: ListWebsiteAuthorizationProvidersInput) -> ClientRuntime.PaginatorSequence<ListWebsiteAuthorizationProvidersInput, ListWebsiteAuthorizationProvidersOutput> {
        return ClientRuntime.PaginatorSequence<ListWebsiteAuthorizationProvidersInput, ListWebsiteAuthorizationProvidersOutput>(input: input, inputKey: \ListWebsiteAuthorizationProvidersInput.nextToken, outputKey: \ListWebsiteAuthorizationProvidersOutput.nextToken, paginationFunction: self.listWebsiteAuthorizationProviders(input:))
    }
}

extension ListWebsiteAuthorizationProvidersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWebsiteAuthorizationProvidersInput {
        return ListWebsiteAuthorizationProvidersInput(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkLinkClient {
    /// Paginate over `[ListWebsiteCertificateAuthoritiesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWebsiteCertificateAuthoritiesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWebsiteCertificateAuthoritiesOutput`
    public func listWebsiteCertificateAuthoritiesPaginated(input: ListWebsiteCertificateAuthoritiesInput) -> ClientRuntime.PaginatorSequence<ListWebsiteCertificateAuthoritiesInput, ListWebsiteCertificateAuthoritiesOutput> {
        return ClientRuntime.PaginatorSequence<ListWebsiteCertificateAuthoritiesInput, ListWebsiteCertificateAuthoritiesOutput>(input: input, inputKey: \ListWebsiteCertificateAuthoritiesInput.nextToken, outputKey: \ListWebsiteCertificateAuthoritiesOutput.nextToken, paginationFunction: self.listWebsiteCertificateAuthorities(input:))
    }
}

extension ListWebsiteCertificateAuthoritiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWebsiteCertificateAuthoritiesInput {
        return ListWebsiteCertificateAuthoritiesInput(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
