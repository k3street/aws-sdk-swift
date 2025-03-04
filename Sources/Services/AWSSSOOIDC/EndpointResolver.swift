// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

public struct EndpointParams {
    /// Override the endpoint used to send this request
    public let endpoint: Swift.String?
    /// The AWS region used to dispatch the request.
    public let region: Swift.String?
    /// When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
    public let useDualStack: Swift.Bool
    /// When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
    public let useFIPS: Swift.Bool

    public init(
        endpoint: Swift.String? = nil,
        region: Swift.String? = nil,
        useDualStack: Swift.Bool = false,
        useFIPS: Swift.Bool = false
    )
    {
        self.endpoint = endpoint
        self.region = region
        self.useDualStack = useDualStack
        self.useFIPS = useFIPS
    }
}

public protocol EndpointResolver {
    func resolve(params: EndpointParams) throws -> ClientRuntime.Endpoint
}

public struct DefaultEndpointResolver: EndpointResolver  {

    private let engine: AWSClientRuntime.AWSEndpointsRuleEngine
    private let ruleSet = "{\"version\":\"1.0\",\"parameters\":{\"Region\":{\"builtIn\":\"AWS::Region\",\"required\":false,\"documentation\":\"The AWS region used to dispatch the request.\",\"type\":\"String\"},\"UseDualStack\":{\"builtIn\":\"AWS::UseDualStack\",\"required\":true,\"default\":false,\"documentation\":\"When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.\",\"type\":\"Boolean\"},\"UseFIPS\":{\"builtIn\":\"AWS::UseFIPS\",\"required\":true,\"default\":false,\"documentation\":\"When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.\",\"type\":\"Boolean\"},\"Endpoint\":{\"builtIn\":\"SDK::Endpoint\",\"required\":false,\"documentation\":\"Override the endpoint used to send this request\",\"type\":\"String\"}},\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Endpoint\"}]}],\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"error\":\"Invalid Configuration: FIPS and custom endpoint are not supported\",\"type\":\"error\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"error\":\"Invalid Configuration: Dualstack and custom endpoint are not supported\",\"type\":\"error\"},{\"conditions\":[],\"endpoint\":{\"url\":{\"ref\":\"Endpoint\"},\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}],\"type\":\"tree\"},{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Region\"}]}],\"rules\":[{\"conditions\":[{\"fn\":\"aws.partition\",\"argv\":[{\"ref\":\"Region\"}],\"assign\":\"PartitionResult\"}],\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[true,{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsFIPS\"]}]},{\"fn\":\"booleanEquals\",\"argv\":[true,{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsDualStack\"]}]}],\"rules\":[{\"conditions\":[],\"endpoint\":{\"url\":\"https://oidc-fips.{Region}.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}],\"type\":\"tree\"},{\"conditions\":[],\"error\":\"FIPS and DualStack are enabled, but this partition does not support one or both\",\"type\":\"error\"}],\"type\":\"tree\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[true,{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsFIPS\"]}]}],\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[\"aws-us-gov\",{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"name\"]}]}],\"endpoint\":{\"url\":\"https://oidc.{Region}.amazonaws.com\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://oidc-fips.{Region}.{PartitionResult#dnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}],\"type\":\"tree\"},{\"conditions\":[],\"error\":\"FIPS is enabled but this partition does not support FIPS\",\"type\":\"error\"}],\"type\":\"tree\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[true,{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsDualStack\"]}]}],\"rules\":[{\"conditions\":[],\"endpoint\":{\"url\":\"https://oidc.{Region}.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}],\"type\":\"tree\"},{\"conditions\":[],\"error\":\"DualStack is enabled but this partition does not support DualStack\",\"type\":\"error\"}],\"type\":\"tree\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://oidc.{Region}.{PartitionResult#dnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}],\"type\":\"tree\"}],\"type\":\"tree\"},{\"conditions\":[],\"error\":\"Invalid Configuration: Missing Region\",\"type\":\"error\"}]}"

    public init() throws {
        engine = try AWSClientRuntime.AWSEndpointsRuleEngine(ruleSet: ruleSet)
    }

    public func resolve(params: EndpointParams) throws -> ClientRuntime.Endpoint {
        let context = try AWSClientRuntime.AWSEndpointsRequestContext()
        try context.add(name: "Endpoint", value: params.endpoint)
        try context.add(name: "Region", value: params.region)
        try context.add(name: "UseDualStack", value: params.useDualStack)
        try context.add(name: "UseFIPS", value: params.useFIPS)

        guard let crtResolvedEndpoint = try engine.resolve(context: context) else {
            throw EndpointError.unresolved("Failed to resolved endpoint")
        }

        if crtResolvedEndpoint.getType() == .error {
            let error = crtResolvedEndpoint.getError()
            throw EndpointError.unresolved(error)
        }

        guard let url = crtResolvedEndpoint.getURL() else {
            assertionFailure("This must be a bug in either CRT or the rule engine, if the endpoint is not an error, it must have a url")
            throw EndpointError.unresolved("Failed to resolved endpoint")
        }

        let headers = crtResolvedEndpoint.getHeaders() ?? [:]
        let properties = crtResolvedEndpoint.getProperties() ?? [:]
        return try Endpoint(urlString: url, headers: Headers(headers), properties: properties)
    }
}

public struct EndpointResolverMiddleware<OperationStackOutput: ClientRuntime.HttpResponseBinding, OperationStackError: ClientRuntime.HttpResponseErrorBinding>: ClientRuntime.Middleware {
    public let id: Swift.String = "EndpointResolverMiddleware"

    let endpointResolver: EndpointResolver

    let endpointParams: EndpointParams

    let authSchemeResolver: AWSClientRuntime.AuthSchemeResolver

    public init(endpointResolver: EndpointResolver, endpointParams: EndpointParams, authSchemeResolver: AWSClientRuntime.AuthSchemeResolver = AWSClientRuntime.DefaultAuthSchemeResolver()) {
        self.endpointResolver = endpointResolver
        self.endpointParams = endpointParams
        self.authSchemeResolver = authSchemeResolver
    }

    public func handle<H>(context: Context,
                  input: ClientRuntime.SdkHttpRequestBuilder,
                  next: H) async throws -> ClientRuntime.OperationOutput<OperationStackOutput>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        let endpoint = try endpointResolver.resolve(params: endpointParams)

        var signingName: String? = nil
        var signingRegion: String? = nil
        var signingAlgorithm: String? = nil
        if let authSchemes = endpoint.authSchemes() {
            let schemes = try authSchemes.map { try AuthScheme(from: $0) }
            let authScheme = try authSchemeResolver.resolve(authSchemes: schemes)
            signingAlgorithm = authScheme.name
            switch authScheme {
            case .sigV4(let param):
                signingName = param.signingName
                signingRegion = param.signingRegion
            case .sigV4A(let param):
                signingName = param.signingName
                signingRegion = param.signingRegionSet?.first
            case .none:
                break
            }
        }

        let awsEndpoint = AWSEndpoint(endpoint: endpoint, signingName: signingName, signingRegion: signingRegion)

        var host = ""
        if let hostOverride = context.getHost() {
            host = hostOverride
        } else {
            host = "\(context.getHostPrefix() ?? "")\(awsEndpoint.endpoint.host)"
        }

        if let protocolType = awsEndpoint.endpoint.protocolType {
            input.withProtocol(protocolType)
        }

        if let signingRegion = signingRegion {
            context.attributes.set(key: HttpContext.signingRegion, value: signingRegion)
        }
        if let signingName = signingName {
            context.attributes.set(key: HttpContext.signingName, value: signingName)
        }
        if let signingAlgorithm = signingAlgorithm {
            context.attributes.set(key: HttpContext.signingAlgorithm, value: signingAlgorithm)
        }

        if let headers = endpoint.headers {
            input.withHeaders(headers)
        }

        input.withMethod(context.getMethod())
            .withHost(host)
            .withPort(awsEndpoint.endpoint.port)
            .withPath(awsEndpoint.endpoint.path.appendingPathComponent(context.getPath()))
            .withHeader(name: "Host", value: host)

        return try await next.handle(context: context, input: input)
    }

    public typealias MInput = ClientRuntime.SdkHttpRequestBuilder
    public typealias MOutput = ClientRuntime.OperationOutput<OperationStackOutput>
    public typealias Context = ClientRuntime.HttpContext
}
