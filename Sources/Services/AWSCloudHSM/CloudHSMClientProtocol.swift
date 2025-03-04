// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS CloudHSM Service This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
public protocol CloudHSMClientProtocol {
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Adds or overwrites one or more tags for the specified AWS CloudHSM resource. Each tag consists of a key and a value. Tag keys must be unique to each resource.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter AddTagsToResourceInput : [no documentation found]
    ///
    /// - Returns: `AddTagsToResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func addTagsToResource(input: AddTagsToResourceInput) async throws -> AddTagsToResourceOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Creates a high-availability partition group. A high-availability partition group is a group of partitions that spans multiple physical HSMs.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter CreateHapgInput : Contains the inputs for the [CreateHapgRequest] action.
    ///
    /// - Returns: `CreateHapgOutput` : Contains the output of the [CreateHAPartitionGroup] action.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func createHapg(input: CreateHapgInput) async throws -> CreateHapgOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Creates an uninitialized HSM instance. There is an upfront fee charged for each HSM instance that you create with the CreateHsm operation. If you accidentally provision an HSM and want to request a refund, delete the instance using the [DeleteHsm] operation, go to the [AWS Support Center](https://console.aws.amazon.com/support/home), create a new case, and select Account and Billing Support. It can take up to 20 minutes to create and provision an HSM. You can monitor the status of the HSM with the [DescribeHsm] operation. The HSM is ready to be initialized when the status changes to RUNNING.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter CreateHsmInput : Contains the inputs for the CreateHsm operation.
    ///
    /// - Returns: `CreateHsmOutput` : Contains the output of the CreateHsm operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func createHsm(input: CreateHsmInput) async throws -> CreateHsmOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Creates an HSM client.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter CreateLunaClientInput : Contains the inputs for the [CreateLunaClient] action.
    ///
    /// - Returns: `CreateLunaClientOutput` : Contains the output of the [CreateLunaClient] action.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func createLunaClient(input: CreateLunaClientInput) async throws -> CreateLunaClientOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Deletes a high-availability partition group.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter DeleteHapgInput : Contains the inputs for the [DeleteHapg] action.
    ///
    /// - Returns: `DeleteHapgOutput` : Contains the output of the [DeleteHapg] action.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func deleteHapg(input: DeleteHapgInput) async throws -> DeleteHapgOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Deletes an HSM. After completion, this operation cannot be undone and your key material cannot be recovered.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter DeleteHsmInput : Contains the inputs for the [DeleteHsm] operation.
    ///
    /// - Returns: `DeleteHsmOutput` : Contains the output of the [DeleteHsm] operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func deleteHsm(input: DeleteHsmInput) async throws -> DeleteHsmOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Deletes a client.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter DeleteLunaClientInput : [no documentation found]
    ///
    /// - Returns: `DeleteLunaClientOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func deleteLunaClient(input: DeleteLunaClientInput) async throws -> DeleteLunaClientOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Retrieves information about a high-availability partition group.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter DescribeHapgInput : Contains the inputs for the [DescribeHapg] action.
    ///
    /// - Returns: `DescribeHapgOutput` : Contains the output of the [DescribeHapg] action.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func describeHapg(input: DescribeHapgInput) async throws -> DescribeHapgOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Retrieves information about an HSM. You can identify the HSM by its ARN or its serial number.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter DescribeHsmInput : Contains the inputs for the [DescribeHsm] operation.
    ///
    /// - Returns: `DescribeHsmOutput` : Contains the output of the [DescribeHsm] operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func describeHsm(input: DescribeHsmInput) async throws -> DescribeHsmOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Retrieves information about an HSM client.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter DescribeLunaClientInput : [no documentation found]
    ///
    /// - Returns: `DescribeLunaClientOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func describeLunaClient(input: DescribeLunaClientInput) async throws -> DescribeLunaClientOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Gets the configuration files necessary to connect to all high availability partition groups the client is associated with.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter GetConfigInput : [no documentation found]
    ///
    /// - Returns: `GetConfigOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func getConfig(input: GetConfigInput) async throws -> GetConfigOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Lists the Availability Zones that have available AWS CloudHSM capacity.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter ListAvailableZonesInput : Contains the inputs for the [ListAvailableZones] action.
    ///
    /// - Returns: `ListAvailableZonesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func listAvailableZones(input: ListAvailableZonesInput) async throws -> ListAvailableZonesOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Lists the high-availability partition groups for the account. This operation supports pagination with the use of the NextToken member. If more results are available, the NextToken member of the response contains a token that you pass in the next call to ListHapgs to retrieve the next set of items.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter ListHapgsInput : [no documentation found]
    ///
    /// - Returns: `ListHapgsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func listHapgs(input: ListHapgsInput) async throws -> ListHapgsOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Retrieves the identifiers of all of the HSMs provisioned for the current customer. This operation supports pagination with the use of the NextToken member. If more results are available, the NextToken member of the response contains a token that you pass in the next call to ListHsms to retrieve the next set of items.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter ListHsmsInput : [no documentation found]
    ///
    /// - Returns: `ListHsmsOutput` : Contains the output of the ListHsms operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func listHsms(input: ListHsmsInput) async throws -> ListHsmsOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Lists all of the clients. This operation supports pagination with the use of the NextToken member. If more results are available, the NextToken member of the response contains a token that you pass in the next call to ListLunaClients to retrieve the next set of items.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter ListLunaClientsInput : [no documentation found]
    ///
    /// - Returns: `ListLunaClientsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func listLunaClients(input: ListLunaClientsInput) async throws -> ListLunaClientsOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Returns a list of all tags for the specified AWS CloudHSM resource.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Modifies an existing high-availability partition group.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter ModifyHapgInput : [no documentation found]
    ///
    /// - Returns: `ModifyHapgOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func modifyHapg(input: ModifyHapgInput) async throws -> ModifyHapgOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Modifies an HSM. This operation can result in the HSM being offline for up to 15 minutes while the AWS CloudHSM service is reconfigured. If you are modifying a production HSM, you should ensure that your AWS CloudHSM service is configured for high availability, and consider executing this operation during a maintenance window.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter ModifyHsmInput : Contains the inputs for the [ModifyHsm] operation.
    ///
    /// - Returns: `ModifyHsmOutput` : Contains the output of the [ModifyHsm] operation.
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func modifyHsm(input: ModifyHsmInput) async throws -> ModifyHsmOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Modifies the certificate used by the client. This action can potentially start a workflow to install the new certificate on the client's HSMs.
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter ModifyLunaClientInput : [no documentation found]
    ///
    /// - Returns: `ModifyLunaClientOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    func modifyLunaClient(input: ModifyLunaClientInput) async throws -> ModifyLunaClientOutput
    /// This is documentation for AWS CloudHSM Classic. For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/). For information about the current version of AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/). Removes one or more tags from the specified AWS CloudHSM resource. To remove a tag, specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use [AddTagsToResource].
    @available(*, deprecated, message: "This API is deprecated.")
    ///
    /// - Parameter RemoveTagsFromResourceInput : [no documentation found]
    ///
    /// - Returns: `RemoveTagsFromResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmInternalException` : Indicates that an internal error occurred.
    /// - `CloudHsmServiceException` : Indicates that an exception occurred in the AWS CloudHSM service.
    /// - `InvalidRequestException` : Indicates that one or more of the request parameters are not valid.
    func removeTagsFromResource(input: RemoveTagsFromResourceInput) async throws -> RemoveTagsFromResourceOutput
}

public enum CloudHSMClientTypes {}
