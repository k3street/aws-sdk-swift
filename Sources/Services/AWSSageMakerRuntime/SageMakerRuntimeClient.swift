// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class SageMakerRuntimeClient {
    public static let clientName = "SageMakerRuntimeClient"
    let client: ClientRuntime.SdkHttpClient
    let config: SageMakerRuntimeClient.SageMakerRuntimeClientConfiguration
    let serviceName = "SageMaker Runtime"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: SageMakerRuntimeClient.SageMakerRuntimeClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try SageMakerRuntimeClient.SageMakerRuntimeClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await SageMakerRuntimeClient.SageMakerRuntimeClientConfiguration()
        self.init(config: config)
    }
}

extension SageMakerRuntimeClient {
    public typealias SageMakerRuntimeClientConfiguration = AWSClientConfiguration<ServiceSpecificConfiguration>

    public struct ServiceSpecificConfiguration: AWSServiceSpecificConfiguration {
        public typealias AWSServiceEndpointResolver = EndpointResolver

        public var serviceName: String { "SageMaker Runtime" }
        public var clientName: String { "SageMakerRuntimeClient" }
        public var endpointResolver: EndpointResolver

        public init(endpointResolver: EndpointResolver? = nil) throws {
            self.endpointResolver = try endpointResolver ?? DefaultEndpointResolver()
        }
    }
}

public struct SageMakerRuntimeClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "SageMakerRuntimeClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension SageMakerRuntimeClient: SageMakerRuntimeClientProtocol {
    /// After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint. For an overview of Amazon SageMaker, see [How It Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html). Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax. Calls to InvokeEndpoint are authenticated by using Amazon Web Services Signature Version 4. For information, see [Authenticating Requests (Amazon Web Services Signature Version 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html) in the Amazon S3 API Reference. A customer's model containers must respond to requests within 60 seconds. The model itself can have a maximum processing time of 60 seconds before responding to invocations. If your model is going to take 50-60 seconds of processing time, the SDK socket timeout should be set to be 70 seconds. Endpoints are scoped to an individual account, and are not public. The URL does not contain the account ID, but Amazon SageMaker determines the account ID from the authentication token that is supplied by the caller.
    ///
    /// - Parameter InvokeEndpointInput : [no documentation found]
    ///
    /// - Returns: `InvokeEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalDependencyException` : Your request caused an exception with an internal dependency. Contact customer support.
    /// - `InternalFailure` : An internal failure occurred.
    /// - `ModelError` : Model (owned by the customer in the container) returned 4xx or 5xx error code.
    /// - `ModelNotReadyException` : Either a serverless endpoint variant's resources are still being provisioned, or a multi-model endpoint is still downloading or loading the target model. Wait and try your request again.
    /// - `ServiceUnavailable` : The service is unavailable. Try your call again.
    /// - `ValidationError` : Inspect your request and try again.
    public func invokeEndpoint(input: InvokeEndpointInput) async throws -> InvokeEndpointOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "invokeEndpoint")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<InvokeEndpointInput, InvokeEndpointOutput, InvokeEndpointOutputError>(id: "invokeEndpoint")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<InvokeEndpointInput, InvokeEndpointOutput, InvokeEndpointOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<InvokeEndpointInput, InvokeEndpointOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<InvokeEndpointOutput, InvokeEndpointOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<InvokeEndpointInput, InvokeEndpointOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<InvokeEndpointInput, InvokeEndpointOutput>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: InvokeEndpointInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, InvokeEndpointOutput, InvokeEndpointOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<InvokeEndpointOutput, InvokeEndpointOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<InvokeEndpointOutput, InvokeEndpointOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<InvokeEndpointOutput, InvokeEndpointOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint in an asynchronous manner. Inference requests sent to this API are enqueued for asynchronous processing. The processing of the inference request may or may not complete before you receive a response from this API. The response from this API will not contain the result of the inference request but contain information about where you can locate it. Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax. Calls to InvokeEndpointAsync are authenticated by using Amazon Web Services Signature Version 4. For information, see [Authenticating Requests (Amazon Web Services Signature Version 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html) in the Amazon S3 API Reference.
    ///
    /// - Parameter InvokeEndpointAsyncInput : [no documentation found]
    ///
    /// - Returns: `InvokeEndpointAsyncOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailure` : An internal failure occurred.
    /// - `ServiceUnavailable` : The service is unavailable. Try your call again.
    /// - `ValidationError` : Inspect your request and try again.
    public func invokeEndpointAsync(input: InvokeEndpointAsyncInput) async throws -> InvokeEndpointAsyncOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "invokeEndpointAsync")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<InvokeEndpointAsyncInput, InvokeEndpointAsyncOutput, InvokeEndpointAsyncOutputError>(id: "invokeEndpointAsync")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<InvokeEndpointAsyncInput, InvokeEndpointAsyncOutput, InvokeEndpointAsyncOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<InvokeEndpointAsyncInput, InvokeEndpointAsyncOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<InvokeEndpointAsyncOutput, InvokeEndpointAsyncOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<InvokeEndpointAsyncInput, InvokeEndpointAsyncOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, InvokeEndpointAsyncOutput, InvokeEndpointAsyncOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<InvokeEndpointAsyncOutput, InvokeEndpointAsyncOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<InvokeEndpointAsyncOutput, InvokeEndpointAsyncOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<InvokeEndpointAsyncOutput, InvokeEndpointAsyncOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Invokes a model at the specified endpoint to return the inference response as a stream. The inference stream provides the response payload incrementally as a series of parts. Before you can get an inference stream, you must have access to a model that's deployed using Amazon SageMaker hosting services, and the container for that model must support inference streaming. For more information that can help you use this API, see the following sections in the Amazon SageMaker Developer Guide:
    ///
    /// * For information about how to add streaming support to a model, see [How Containers Serve Requests](https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html#your-algorithms-inference-code-how-containe-serves-requests).
    ///
    /// * For information about how to process the streaming response, see [Invoke real-time endpoints](https://docs.aws.amazon.com/sagemaker/latest/dg/realtime-endpoints-test-endpoints.html).
    ///
    ///
    /// Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax. Calls to InvokeEndpointWithResponseStream are authenticated by using Amazon Web Services Signature Version 4. For information, see [Authenticating Requests (Amazon Web Services Signature Version 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html) in the Amazon S3 API Reference.
    ///
    /// - Parameter InvokeEndpointWithResponseStreamInput : [no documentation found]
    ///
    /// - Returns: `InvokeEndpointWithResponseStreamOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalFailure` : An internal failure occurred.
    /// - `InternalStreamFailure` : The stream processing failed because of an unknown error, exception or failure. Try your request again.
    /// - `ModelError` : Model (owned by the customer in the container) returned 4xx or 5xx error code.
    /// - `ModelStreamError` : An error occurred while streaming the response body. This error can have the following error codes: ModelInvocationTimeExceeded The model failed to finish sending the response within the timeout period allowed by Amazon SageMaker. StreamBroken The Transmission Control Protocol (TCP) connection between the client and the model was reset or closed.
    /// - `ServiceUnavailable` : The service is unavailable. Try your call again.
    /// - `ValidationError` : Inspect your request and try again.
    public func invokeEndpointWithResponseStream(input: InvokeEndpointWithResponseStreamInput) async throws -> InvokeEndpointWithResponseStreamOutput
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "invokeEndpointWithResponseStream")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<InvokeEndpointWithResponseStreamInput, InvokeEndpointWithResponseStreamOutput, InvokeEndpointWithResponseStreamOutputError>(id: "invokeEndpointWithResponseStream")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<InvokeEndpointWithResponseStreamInput, InvokeEndpointWithResponseStreamOutput, InvokeEndpointWithResponseStreamOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<InvokeEndpointWithResponseStreamInput, InvokeEndpointWithResponseStreamOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<InvokeEndpointWithResponseStreamOutput, InvokeEndpointWithResponseStreamOutputError>(endpointResolver: config.serviceSpecific.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<InvokeEndpointWithResponseStreamInput, InvokeEndpointWithResponseStreamOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<InvokeEndpointWithResponseStreamInput, InvokeEndpointWithResponseStreamOutput>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: InvokeEndpointWithResponseStreamInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, InvokeEndpointWithResponseStreamOutput, InvokeEndpointWithResponseStreamOutputError>(options: config.retryStrategyOptions))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<InvokeEndpointWithResponseStreamOutput, InvokeEndpointWithResponseStreamOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<InvokeEndpointWithResponseStreamOutput, InvokeEndpointWithResponseStreamOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<InvokeEndpointWithResponseStreamOutput, InvokeEndpointWithResponseStreamOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}
