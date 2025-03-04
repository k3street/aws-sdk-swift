// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension GetRawMessageContentInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        guard let messageId = messageId else {
            return nil
        }
        return "/messages/\(messageId.urlPercentEncoding())"
    }
}

public struct GetRawMessageContentInput: Swift.Equatable {
    /// The identifier of the email message to retrieve.
    /// This member is required.
    public var messageId: Swift.String?

    public init(
        messageId: Swift.String? = nil
    )
    {
        self.messageId = messageId
    }
}

struct GetRawMessageContentInputBody: Swift.Equatable {
}

extension GetRawMessageContentInputBody: Swift.Decodable {

    public init(from decoder: Swift.Decoder) throws {
    }
}

extension GetRawMessageContentOutput: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        switch httpResponse.body {
        case .data(let data):
            self.messageContent = .data(data)
        case .stream(let stream):
            self.messageContent = .stream(stream)
        case .none:
            self.messageContent = nil
        }
    }
}

public struct GetRawMessageContentOutput: Swift.Equatable {
    /// The raw content of the email message, in MIME format.
    /// This member is required.
    public var messageContent: ClientRuntime.ByteStream?

    public init(
        messageContent: ClientRuntime.ByteStream? = nil
    )
    {
        self.messageContent = messageContent
    }
}

struct GetRawMessageContentOutputBody: Swift.Equatable {
    let messageContent: ClientRuntime.ByteStream?
}

extension GetRawMessageContentOutputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case messageContent
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageContentDecoded = try containerValues.decodeIfPresent(ClientRuntime.ByteStream.self, forKey: .messageContent)
        messageContent = messageContentDecoded
    }
}

enum GetRawMessageContentOutputError: ClientRuntime.HttpResponseErrorBinding {
    static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "ResourceNotFoundException": return try await ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension InvalidContentLocation {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InvalidContentLocationBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// WorkMail could not access the updated email content. Possible reasons:
///
/// * You made the request in a region other than your S3 bucket region.
///
/// * The [S3 bucket owner](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-owner-condition.html) is not the same as the calling AWS account.
///
/// * You have an incomplete or missing S3 bucket policy. For more information about policies, see [ Updating message content with AWS Lambda ](https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html) in the WorkMail Administrator Guide.
public struct InvalidContentLocation: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidContentLocation" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct InvalidContentLocationBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidContentLocationBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension MessageFrozen {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: MessageFrozenBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The requested email is not eligible for update. This is usually the case for a redirected email.
public struct MessageFrozen: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "MessageFrozen" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct MessageFrozenBody: Swift.Equatable {
    let message: Swift.String?
}

extension MessageFrozenBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension MessageRejected {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: MessageRejectedBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The requested email could not be updated due to an error in the MIME content. Check the error message for more information about what caused the error.
public struct MessageRejected: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "MessageRejected" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct MessageRejectedBody: Swift.Equatable {
    let message: Swift.String?
}

extension MessageRejectedBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension PutRawMessageContentInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case content
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let content = self.content {
            try encodeContainer.encode(content, forKey: .content)
        }
    }
}

extension PutRawMessageContentInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        guard let messageId = messageId else {
            return nil
        }
        return "/messages/\(messageId.urlPercentEncoding())"
    }
}

public struct PutRawMessageContentInput: Swift.Equatable {
    /// Describes the raw message content of the updated email message.
    /// This member is required.
    public var content: WorkMailMessageFlowClientTypes.RawMessageContent?
    /// The identifier of the email message being updated.
    /// This member is required.
    public var messageId: Swift.String?

    public init(
        content: WorkMailMessageFlowClientTypes.RawMessageContent? = nil,
        messageId: Swift.String? = nil
    )
    {
        self.content = content
        self.messageId = messageId
    }
}

struct PutRawMessageContentInputBody: Swift.Equatable {
    let content: WorkMailMessageFlowClientTypes.RawMessageContent?
}

extension PutRawMessageContentInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case content
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let contentDecoded = try containerValues.decodeIfPresent(WorkMailMessageFlowClientTypes.RawMessageContent.self, forKey: .content)
        content = contentDecoded
    }
}

extension PutRawMessageContentOutput: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
    }
}

public struct PutRawMessageContentOutput: Swift.Equatable {

    public init() { }
}

enum PutRawMessageContentOutputError: ClientRuntime.HttpResponseErrorBinding {
    static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "InvalidContentLocation": return try await InvalidContentLocation(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "MessageFrozen": return try await MessageFrozen(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "MessageRejected": return try await MessageRejected(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ResourceNotFoundException": return try await ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension WorkMailMessageFlowClientTypes.RawMessageContent: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case s3Reference
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let s3Reference = self.s3Reference {
            try encodeContainer.encode(s3Reference, forKey: .s3Reference)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let s3ReferenceDecoded = try containerValues.decodeIfPresent(WorkMailMessageFlowClientTypes.S3Reference.self, forKey: .s3Reference)
        s3Reference = s3ReferenceDecoded
    }
}

extension WorkMailMessageFlowClientTypes {
    /// Provides the MIME content of the updated email message as an S3 object. All MIME content must meet the following criteria:
    ///
    /// * Each part of a multipart MIME message must be formatted properly.
    ///
    /// * Attachments must be of a content type that Amazon SES supports. For more information, see [Unsupported Attachment Types](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types-appendix.html).
    ///
    /// * If any of the MIME parts in a message contain content that is outside of the 7-bit ASCII character range, we recommend encoding that content.
    ///
    /// * Per [RFC 5321](https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6), the maximum length of each line of text, including the , must not exceed 1,000 characters.
    ///
    /// * The message must contain all the required header fields. Check the returned error message for more information.
    ///
    /// * The value of immutable headers must remain unchanged. Check the returned error message for more information.
    ///
    /// * Certain unique headers can only appear once. Check the returned error message for more information.
    public struct RawMessageContent: Swift.Equatable {
        /// The S3 reference of an email message.
        /// This member is required.
        public var s3Reference: WorkMailMessageFlowClientTypes.S3Reference?

        public init(
            s3Reference: WorkMailMessageFlowClientTypes.S3Reference? = nil
        )
        {
            self.s3Reference = s3Reference
        }
    }

}

extension ResourceNotFoundException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ResourceNotFoundExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The requested email message is not found.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceNotFoundException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct ResourceNotFoundExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ResourceNotFoundExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension WorkMailMessageFlowClientTypes.S3Reference: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case bucket
        case key
        case objectVersion
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let bucket = self.bucket {
            try encodeContainer.encode(bucket, forKey: .bucket)
        }
        if let key = self.key {
            try encodeContainer.encode(key, forKey: .key)
        }
        if let objectVersion = self.objectVersion {
            try encodeContainer.encode(objectVersion, forKey: .objectVersion)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bucketDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .bucket)
        bucket = bucketDecoded
        let keyDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .key)
        key = keyDecoded
        let objectVersionDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .objectVersion)
        objectVersion = objectVersionDecoded
    }
}

extension WorkMailMessageFlowClientTypes {
    /// Amazon S3 object representing the updated message content, in MIME format. The region for the S3 bucket containing the S3 object must match the region used for WorkMail operations. Also, for WorkMail to process an S3 object, it must have permission to access that object. For more information, see [ Updating message content with AWS Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html).
    public struct S3Reference: Swift.Equatable {
        /// The S3 bucket name.
        /// This member is required.
        public var bucket: Swift.String?
        /// The S3 key object name.
        /// This member is required.
        public var key: Swift.String?
        /// If you enable versioning for the bucket, you can specify the object version.
        public var objectVersion: Swift.String?

        public init(
            bucket: Swift.String? = nil,
            key: Swift.String? = nil,
            objectVersion: Swift.String? = nil
        )
        {
            self.bucket = bucket
            self.key = key
            self.objectVersion = objectVersion
        }
    }

}
