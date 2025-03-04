// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Welcome to the Amazon AppFlow API reference. This guide is for developers who need detailed information about the Amazon AppFlow API operations, data types, and errors. Amazon AppFlow is a fully managed integration service that enables you to securely transfer data between software as a service (SaaS) applications like Salesforce, Marketo, Slack, and ServiceNow, and Amazon Web Services like Amazon S3 and Amazon Redshift. Use the following links to get started on the Amazon AppFlow API:
///
/// * [Actions](https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Operations.html): An alphabetical list of all Amazon AppFlow API operations.
///
/// * [Data types](https://docs.aws.amazon.com/appflow/1.0/APIReference/API_Types.html): An alphabetical list of all Amazon AppFlow data types.
///
/// * [Common parameters](https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonParameters.html): Parameters that all Query operations can use.
///
/// * [Common errors](https://docs.aws.amazon.com/appflow/1.0/APIReference/CommonErrors.html): Client and server errors that all operations can return.
///
///
/// If you're new to Amazon AppFlow, we recommend that you review the [Amazon AppFlow User Guide](https://docs.aws.amazon.com/appflow/latest/userguide/what-is-appflow.html). Amazon AppFlow API users can use vendor-specific mechanisms for OAuth, and include applicable OAuth attributes (such as auth-code and redirecturi) with the connector-specific ConnectorProfileProperties when creating a new connector profile using Amazon AppFlow API operations. For example, Salesforce users can refer to the [ Authorize Apps with OAuth ](https://help.salesforce.com/articleView?id=remoteaccess_authenticate.htm) documentation.
public protocol AppflowClientProtocol {
    /// Cancels active runs for a flow. You can cancel all of the active runs for a flow, or you can cancel specific runs by providing their IDs. You can cancel a flow run only when the run is in progress. You can't cancel a run that has already completed or failed. You also can't cancel a run that's scheduled to occur but hasn't started yet. To prevent a scheduled run, you can deactivate the flow with the StopFlow action. You cannot resume a run after you cancel it. When you send your request, the status for each run becomes CancelStarted. When the cancellation completes, the status becomes Canceled. When you cancel a run, you still incur charges for any data that the run already processed before the cancellation. If the run had already written some data to the flow destination, then that data remains in the destination. If you configured the flow to use a batch API (such as the Salesforce Bulk API 2.0), then the run will finish reading or writing its entire batch of data after the cancellation. For these operations, the data processing charges for Amazon AppFlow apply. For the pricing information, see [Amazon AppFlow pricing](http://aws.amazon.com/appflow/pricing/).
    ///
    /// - Parameter CancelFlowExecutionsInput : [no documentation found]
    ///
    /// - Returns: `CancelFlowExecutionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : AppFlow/Requester has invalid or missing permissions.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ThrottlingException` : API calls have exceeded the maximum allowed API request rate per account and per Region.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func cancelFlowExecutions(input: CancelFlowExecutionsInput) async throws -> CancelFlowExecutionsOutput
    /// Creates a new connector profile associated with your Amazon Web Services account. There is a soft quota of 100 connector profiles per Amazon Web Services account. If you need more connector profiles than this quota allows, you can submit a request to the Amazon AppFlow team through the Amazon AppFlow support channel. In each connector profile that you create, you can provide the credentials and properties for only one connector.
    ///
    /// - Parameter CreateConnectorProfileInput : [no documentation found]
    ///
    /// - Returns: `CreateConnectorProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `ConnectorAuthenticationException` : An error occurred when authenticating with the connector endpoint.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota (such as the number of flows) to be exceeded.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func createConnectorProfile(input: CreateConnectorProfileInput) async throws -> CreateConnectorProfileOutput
    /// Enables your application to create a new flow using Amazon AppFlow. You must create a connector profile before calling this API. Please note that the Request Syntax below shows syntax for multiple destinations, however, you can only transfer data to one item in this list at a time. Amazon AppFlow does not currently support flows to multiple destinations at once.
    ///
    /// - Parameter CreateFlowInput : [no documentation found]
    ///
    /// - Returns: `CreateFlowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : AppFlow/Requester has invalid or missing permissions.
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `ConnectorAuthenticationException` : An error occurred when authenticating with the connector endpoint.
    /// - `ConnectorServerException` : An error occurred when retrieving data from the connector endpoint.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota (such as the number of flows) to be exceeded.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func createFlow(input: CreateFlowInput) async throws -> CreateFlowOutput
    /// Enables you to delete an existing connector profile.
    ///
    /// - Parameter DeleteConnectorProfileInput : [no documentation found]
    ///
    /// - Returns: `DeleteConnectorProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    func deleteConnectorProfile(input: DeleteConnectorProfileInput) async throws -> DeleteConnectorProfileOutput
    /// Enables your application to delete an existing flow. Before deleting the flow, Amazon AppFlow validates the request by checking the flow configuration and status. You can delete flows one at a time.
    ///
    /// - Parameter DeleteFlowInput : [no documentation found]
    ///
    /// - Returns: `DeleteFlowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    func deleteFlow(input: DeleteFlowInput) async throws -> DeleteFlowOutput
    /// Describes the given custom connector registered in your Amazon Web Services account. This API can be used for custom connectors that are registered in your account and also for Amazon authored connectors.
    ///
    /// - Parameter DescribeConnectorInput : [no documentation found]
    ///
    /// - Returns: `DescribeConnectorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func describeConnector(input: DescribeConnectorInput) async throws -> DescribeConnectorOutput
    /// Provides details regarding the entity used with the connector, with a description of the data model for each field in that entity.
    ///
    /// - Parameter DescribeConnectorEntityInput : [no documentation found]
    ///
    /// - Returns: `DescribeConnectorEntityOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConnectorAuthenticationException` : An error occurred when authenticating with the connector endpoint.
    /// - `ConnectorServerException` : An error occurred when retrieving data from the connector endpoint.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func describeConnectorEntity(input: DescribeConnectorEntityInput) async throws -> DescribeConnectorEntityOutput
    /// Returns a list of connector-profile details matching the provided connector-profile names and connector-types. Both input lists are optional, and you can use them to filter the result. If no names or connector-types are provided, returns all connector profiles in a paginated form. If there is no match, this operation returns an empty list.
    ///
    /// - Parameter DescribeConnectorProfilesInput : [no documentation found]
    ///
    /// - Returns: `DescribeConnectorProfilesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func describeConnectorProfiles(input: DescribeConnectorProfilesInput) async throws -> DescribeConnectorProfilesOutput
    /// Describes the connectors vended by Amazon AppFlow for specified connector types. If you don't specify a connector type, this operation describes all connectors vended by Amazon AppFlow. If there are more connectors than can be returned in one page, the response contains a nextToken object, which can be be passed in to the next call to the DescribeConnectors API operation to retrieve the next page.
    ///
    /// - Parameter DescribeConnectorsInput : [no documentation found]
    ///
    /// - Returns: `DescribeConnectorsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func describeConnectors(input: DescribeConnectorsInput) async throws -> DescribeConnectorsOutput
    /// Provides a description of the specified flow.
    ///
    /// - Parameter DescribeFlowInput : [no documentation found]
    ///
    /// - Returns: `DescribeFlowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    func describeFlow(input: DescribeFlowInput) async throws -> DescribeFlowOutput
    /// Fetches the execution history of the flow.
    ///
    /// - Parameter DescribeFlowExecutionRecordsInput : [no documentation found]
    ///
    /// - Returns: `DescribeFlowExecutionRecordsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func describeFlowExecutionRecords(input: DescribeFlowExecutionRecordsInput) async throws -> DescribeFlowExecutionRecordsOutput
    /// Returns the list of available connector entities supported by Amazon AppFlow. For example, you can query Salesforce for Account and Opportunity entities, or query ServiceNow for the Incident entity.
    ///
    /// - Parameter ListConnectorEntitiesInput : [no documentation found]
    ///
    /// - Returns: `ListConnectorEntitiesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConnectorAuthenticationException` : An error occurred when authenticating with the connector endpoint.
    /// - `ConnectorServerException` : An error occurred when retrieving data from the connector endpoint.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func listConnectorEntities(input: ListConnectorEntitiesInput) async throws -> ListConnectorEntitiesOutput
    /// Returns the list of all registered custom connectors in your Amazon Web Services account. This API lists only custom connectors registered in this account, not the Amazon Web Services authored connectors.
    ///
    /// - Parameter ListConnectorsInput : [no documentation found]
    ///
    /// - Returns: `ListConnectorsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func listConnectors(input: ListConnectorsInput) async throws -> ListConnectorsOutput
    /// Lists all of the flows associated with your account.
    ///
    /// - Parameter ListFlowsInput : [no documentation found]
    ///
    /// - Returns: `ListFlowsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func listFlows(input: ListFlowsInput) async throws -> ListFlowsOutput
    /// Retrieves the tags that are associated with a specified flow.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Registers a new custom connector with your Amazon Web Services account. Before you can register the connector, you must deploy the associated AWS lambda function in your account.
    ///
    /// - Parameter RegisterConnectorInput : [no documentation found]
    ///
    /// - Returns: `RegisterConnectorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : AppFlow/Requester has invalid or missing permissions.
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `ConnectorAuthenticationException` : An error occurred when authenticating with the connector endpoint.
    /// - `ConnectorServerException` : An error occurred when retrieving data from the connector endpoint.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota (such as the number of flows) to be exceeded.
    /// - `ThrottlingException` : API calls have exceeded the maximum allowed API request rate per account and per Region.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func registerConnector(input: RegisterConnectorInput) async throws -> RegisterConnectorOutput
    /// Resets metadata about your connector entities that Amazon AppFlow stored in its cache. Use this action when you want Amazon AppFlow to return the latest information about the data that you have in a source application. Amazon AppFlow returns metadata about your entities when you use the ListConnectorEntities or DescribeConnectorEntities actions. Following these actions, Amazon AppFlow caches the metadata to reduce the number of API requests that it must send to the source application. Amazon AppFlow automatically resets the cache once every hour, but you can use this action when you want to get the latest metadata right away.
    ///
    /// - Parameter ResetConnectorMetadataCacheInput : [no documentation found]
    ///
    /// - Returns: `ResetConnectorMetadataCacheOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func resetConnectorMetadataCache(input: ResetConnectorMetadataCacheInput) async throws -> ResetConnectorMetadataCacheOutput
    /// Activates an existing flow. For on-demand flows, this operation runs the flow immediately. For schedule and event-triggered flows, this operation activates the flow.
    ///
    /// - Parameter StartFlowInput : [no documentation found]
    ///
    /// - Returns: `StartFlowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota (such as the number of flows) to be exceeded.
    func startFlow(input: StartFlowInput) async throws -> StartFlowOutput
    /// Deactivates the existing flow. For on-demand flows, this operation returns an unsupportedOperationException error message. For schedule and event-triggered flows, this operation deactivates the flow.
    ///
    /// - Parameter StopFlowInput : [no documentation found]
    ///
    /// - Returns: `StopFlowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `UnsupportedOperationException` : The requested operation is not supported for the current flow.
    func stopFlow(input: StopFlowInput) async throws -> StopFlowOutput
    /// Applies a tag to the specified flow.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Unregisters the custom connector registered in your account that matches the connector label provided in the request.
    ///
    /// - Parameter UnregisterConnectorInput : [no documentation found]
    ///
    /// - Returns: `UnregisterConnectorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    func unregisterConnector(input: UnregisterConnectorInput) async throws -> UnregisterConnectorOutput
    /// Removes a tag from the specified flow.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Updates a given connector profile associated with your account.
    ///
    /// - Parameter UpdateConnectorProfileInput : [no documentation found]
    ///
    /// - Returns: `UpdateConnectorProfileOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `ConnectorAuthenticationException` : An error occurred when authenticating with the connector endpoint.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func updateConnectorProfile(input: UpdateConnectorProfileInput) async throws -> UpdateConnectorProfileOutput
    /// Updates a custom connector that you've previously registered. This operation updates the connector with one of the following:
    ///
    /// * The latest version of the AWS Lambda function that's assigned to the connector
    ///
    /// * A new AWS Lambda function that you specify
    ///
    /// - Parameter UpdateConnectorRegistrationInput : [no documentation found]
    ///
    /// - Returns: `UpdateConnectorRegistrationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : AppFlow/Requester has invalid or missing permissions.
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `ConnectorAuthenticationException` : An error occurred when authenticating with the connector endpoint.
    /// - `ConnectorServerException` : An error occurred when retrieving data from the connector endpoint.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota (such as the number of flows) to be exceeded.
    /// - `ThrottlingException` : API calls have exceeded the maximum allowed API request rate per account and per Region.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func updateConnectorRegistration(input: UpdateConnectorRegistrationInput) async throws -> UpdateConnectorRegistrationOutput
    /// Updates an existing flow.
    ///
    /// - Parameter UpdateFlowInput : [no documentation found]
    ///
    /// - Returns: `UpdateFlowOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : AppFlow/Requester has invalid or missing permissions.
    /// - `ConflictException` : There was a conflict when processing the request (for example, a flow with the given name already exists within the account. Check for conflicting resource names and try again.
    /// - `ConnectorAuthenticationException` : An error occurred when authenticating with the connector endpoint.
    /// - `ConnectorServerException` : An error occurred when retrieving data from the connector endpoint.
    /// - `InternalServerException` : An internal service error occurred during the processing of your request. Try again later.
    /// - `ResourceNotFoundException` : The resource specified in the request (such as the source or destination connector profile) is not found.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota (such as the number of flows) to be exceeded.
    /// - `ValidationException` : The request has invalid or missing parameters.
    func updateFlow(input: UpdateFlowInput) async throws -> UpdateFlowOutput
}

public enum AppflowClientTypes {}
