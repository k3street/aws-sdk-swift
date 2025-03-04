// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Certificate Manager You can use Certificate Manager (ACM) to manage SSL/TLS certificates for your Amazon Web Services-based websites and applications. For more information about using ACM, see the [Certificate Manager User Guide](https://docs.aws.amazon.com/acm/latest/userguide/).
public protocol ACMClientProtocol {
    /// Adds one or more tags to an ACM certificate. Tags are labels that you can use to identify and organize your Amazon Web Services resources. Each tag consists of a key and an optional value. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair. You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see [Tagging ACM certificates](https://docs.aws.amazon.com/acm/latest/userguide/tags.html). To remove one or more tags, use the [RemoveTagsFromCertificate] action. To view all of the tags that have been applied to the certificate, use the [ListTagsForCertificate] action.
    ///
    /// - Parameter AddTagsToCertificateInput : [no documentation found]
    ///
    /// - Returns: `AddTagsToCertificateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `InvalidParameterException` : An input parameter was invalid.
    /// - `InvalidTagException` : One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with aws:.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    /// - `TagPolicyException` : A specified tag did not comply with an existing tag policy and was rejected.
    /// - `ThrottlingException` : The request was denied because it exceeded a quota.
    /// - `TooManyTagsException` : The request contains too many tags. Try the request again with fewer tags.
    func addTagsToCertificate(input: AddTagsToCertificateInput) async throws -> AddTagsToCertificateOutput
    /// Deletes a certificate and its associated private key. If this action succeeds, the certificate no longer appears in the list that can be displayed by calling the [ListCertificates] action or be retrieved by calling the [GetCertificate] action. The certificate will not be available for use by Amazon Web Services services integrated with ACM. You cannot delete an ACM certificate that is being used by another Amazon Web Services service. To delete a certificate that is in use, the certificate association must first be removed.
    ///
    /// - Parameter DeleteCertificateInput : [no documentation found]
    ///
    /// - Returns: `DeleteCertificateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have access required to perform this action.
    /// - `ConflictException` : You are trying to update a resource or configuration that is already being created or updated. Wait for the previous operation to finish and try again.
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `ResourceInUseException` : The certificate is in use by another Amazon Web Services service in the caller's account. Remove the association and try again.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    /// - `ThrottlingException` : The request was denied because it exceeded a quota.
    func deleteCertificate(input: DeleteCertificateInput) async throws -> DeleteCertificateOutput
    /// Returns detailed metadata about the specified ACM certificate. If you have just created a certificate using the RequestCertificate action, there is a delay of several seconds before you can retrieve information about it.
    ///
    /// - Parameter DescribeCertificateInput : [no documentation found]
    ///
    /// - Returns: `DescribeCertificateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    func describeCertificate(input: DescribeCertificateInput) async throws -> DescribeCertificateOutput
    /// Exports a private certificate issued by a private certificate authority (CA) for use anywhere. The exported file contains the certificate, the certificate chain, and the encrypted private 2048-bit RSA key associated with the public key that is embedded in the certificate. For security, you must assign a passphrase for the private key when exporting it. For information about exporting and formatting a certificate using the ACM console or CLI, see [Export a Private Certificate](https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-export-private.html).
    ///
    /// - Parameter ExportCertificateInput : [no documentation found]
    ///
    /// - Returns: `ExportCertificateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `RequestInProgressException` : The certificate request is in process and the certificate in your account has not yet been issued.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    func exportCertificate(input: ExportCertificateInput) async throws -> ExportCertificateOutput
    /// Returns the account configuration options associated with an Amazon Web Services account.
    ///
    /// - Parameter GetAccountConfigurationInput : [no documentation found]
    ///
    /// - Returns: `GetAccountConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have access required to perform this action.
    /// - `ThrottlingException` : The request was denied because it exceeded a quota.
    func getAccountConfiguration(input: GetAccountConfigurationInput) async throws -> GetAccountConfigurationOutput
    /// Retrieves an Amazon-issued certificate and its certificate chain. The chain consists of the certificate of the issuing CA and the intermediate certificates of any other subordinate CAs. All of the certificates are base64 encoded. You can use [OpenSSL](https://wiki.openssl.org/index.php/Command_Line_Utilities) to decode the certificates and inspect individual fields.
    ///
    /// - Parameter GetCertificateInput : [no documentation found]
    ///
    /// - Returns: `GetCertificateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `RequestInProgressException` : The certificate request is in process and the certificate in your account has not yet been issued.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    func getCertificate(input: GetCertificateInput) async throws -> GetCertificateOutput
    /// Imports a certificate into Certificate Manager (ACM) to use with services that are integrated with ACM. Note that [integrated services](https://docs.aws.amazon.com/acm/latest/userguide/acm-services.html) allow only certificate types and keys they support to be associated with their resources. Further, their support differs depending on whether the certificate is imported into IAM or into ACM. For more information, see the documentation for each service. For more information about importing certificates into ACM, see [Importing Certificates](https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html) in the Certificate Manager User Guide. ACM does not provide [managed renewal](https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for certificates that you import. Note the following guidelines when importing third party certificates:
    ///
    /// * You must enter the private key that matches the certificate you are importing.
    ///
    /// * The private key must be unencrypted. You cannot import a private key that is protected by a password or a passphrase.
    ///
    /// * The private key must be no larger than 5 KB (5,120 bytes).
    ///
    /// * If the certificate you are importing is not self-signed, you must enter its certificate chain.
    ///
    /// * If a certificate chain is included, the issuer must be the subject of one of the certificates in the chain.
    ///
    /// * The certificate, private key, and certificate chain must be PEM-encoded.
    ///
    /// * The current time must be between the Not Before and Not After certificate fields.
    ///
    /// * The Issuer field must not be empty.
    ///
    /// * The OCSP authority URL, if present, must not exceed 1000 characters.
    ///
    /// * To import a new certificate, omit the CertificateArn argument. Include this argument only when you want to replace a previously imported certificate.
    ///
    /// * When you import a certificate by using the CLI, you must specify the certificate, the certificate chain, and the private key by their file names preceded by fileb://. For example, you can specify a certificate saved in the C:\temp folder as fileb://C:\temp\certificate_to_import.pem. If you are making an HTTP or HTTPS Query request, include these arguments as BLOBs.
    ///
    /// * When you import a certificate by using an SDK, you must specify the certificate, the certificate chain, and the private key files in the manner required by the programming language you're using.
    ///
    /// * The cryptographic algorithm of an imported certificate must match the algorithm of the signing CA. For example, if the signing CA key type is RSA, then the certificate key type must also be RSA.
    ///
    ///
    /// This operation returns the [Amazon Resource Name (ARN)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the imported certificate.
    ///
    /// - Parameter ImportCertificateInput : [no documentation found]
    ///
    /// - Returns: `ImportCertificateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `InvalidParameterException` : An input parameter was invalid.
    /// - `InvalidTagException` : One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with aws:.
    /// - `LimitExceededException` : An ACM quota has been exceeded.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    /// - `TagPolicyException` : A specified tag did not comply with an existing tag policy and was rejected.
    /// - `TooManyTagsException` : The request contains too many tags. Try the request again with fewer tags.
    func importCertificate(input: ImportCertificateInput) async throws -> ImportCertificateOutput
    /// Retrieves a list of certificate ARNs and domain names. You can request that only certificates that match a specific status be listed. You can also filter by specific attributes of the certificate. Default filtering returns only RSA_2048 certificates. For more information, see [Filters].
    ///
    /// - Parameter ListCertificatesInput : [no documentation found]
    ///
    /// - Returns: `ListCertificatesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArgsException` : One or more of of request parameters specified is not valid.
    /// - `ValidationException` : The supplied input failed to satisfy constraints of an Amazon Web Services service.
    func listCertificates(input: ListCertificatesInput) async throws -> ListCertificatesOutput
    /// Lists the tags that have been applied to the ACM certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM certificate, use the [AddTagsToCertificate] action. To delete a tag, use the [RemoveTagsFromCertificate] action.
    ///
    /// - Parameter ListTagsForCertificateInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForCertificateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    func listTagsForCertificate(input: ListTagsForCertificateInput) async throws -> ListTagsForCertificateOutput
    /// Adds or modifies account-level configurations in ACM. The supported configuration option is DaysBeforeExpiry. This option specifies the number of days prior to certificate expiration when ACM starts generating EventBridge events. ACM sends one event per day per certificate until the certificate expires. By default, accounts receive events starting 45 days before certificate expiration.
    ///
    /// - Parameter PutAccountConfigurationInput : [no documentation found]
    ///
    /// - Returns: `PutAccountConfigurationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have access required to perform this action.
    /// - `ConflictException` : You are trying to update a resource or configuration that is already being created or updated. Wait for the previous operation to finish and try again.
    /// - `ThrottlingException` : The request was denied because it exceeded a quota.
    /// - `ValidationException` : The supplied input failed to satisfy constraints of an Amazon Web Services service.
    func putAccountConfiguration(input: PutAccountConfigurationInput) async throws -> PutAccountConfigurationOutput
    /// Remove one or more tags from an ACM certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value. To add tags to a certificate, use the [AddTagsToCertificate] action. To view all of the tags that have been applied to a specific ACM certificate, use the [ListTagsForCertificate] action.
    ///
    /// - Parameter RemoveTagsFromCertificateInput : [no documentation found]
    ///
    /// - Returns: `RemoveTagsFromCertificateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `InvalidParameterException` : An input parameter was invalid.
    /// - `InvalidTagException` : One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with aws:.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    /// - `TagPolicyException` : A specified tag did not comply with an existing tag policy and was rejected.
    /// - `ThrottlingException` : The request was denied because it exceeded a quota.
    func removeTagsFromCertificate(input: RemoveTagsFromCertificateInput) async throws -> RemoveTagsFromCertificateOutput
    /// Renews an eligible ACM certificate. At this time, only exported private certificates can be renewed with this operation. In order to renew your Amazon Web Services Private CA certificates with ACM, you must first [grant the ACM service principal permission to do so](https://docs.aws.amazon.com/privateca/latest/userguide/PcaPermissions.html). For more information, see [Testing Managed Renewal](https://docs.aws.amazon.com/acm/latest/userguide/manual-renewal.html) in the ACM User Guide.
    ///
    /// - Parameter RenewCertificateInput : [no documentation found]
    ///
    /// - Returns: `RenewCertificateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    func renewCertificate(input: RenewCertificateInput) async throws -> RenewCertificateOutput
    /// Requests an ACM certificate for use with other Amazon Web Services services. To request an ACM certificate, you must specify a fully qualified domain name (FQDN) in the DomainName parameter. You can also specify additional FQDNs in the SubjectAlternativeNames parameter. If you are requesting a private certificate, domain validation is not required. If you are requesting a public certificate, each domain name that you specify must be validated to verify that you own or control the domain. You can use [DNS validation](https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html) or [email validation](https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html). We recommend that you use DNS validation. ACM issues public certificates after receiving approval from the domain owner. ACM behavior differs from the [RFC 6125](https://datatracker.ietf.org/doc/html/rfc6125#appendix-B.2) specification of the certificate validation process. ACM first checks for a Subject Alternative Name, and, if it finds one, ignores the common name (CN). After successful completion of the RequestCertificate action, there is a delay of several seconds before you can retrieve information about the new certificate.
    ///
    /// - Parameter RequestCertificateInput : [no documentation found]
    ///
    /// - Returns: `RequestCertificateOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `InvalidDomainValidationOptionsException` : One or more values in the [DomainValidationOption] structure is incorrect.
    /// - `InvalidParameterException` : An input parameter was invalid.
    /// - `InvalidTagException` : One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with aws:.
    /// - `LimitExceededException` : An ACM quota has been exceeded.
    /// - `TagPolicyException` : A specified tag did not comply with an existing tag policy and was rejected.
    /// - `TooManyTagsException` : The request contains too many tags. Try the request again with fewer tags.
    func requestCertificate(input: RequestCertificateInput) async throws -> RequestCertificateOutput
    /// Resends the email that requests domain ownership validation. The domain owner or an authorized representative must approve the ACM certificate before it can be issued. The certificate can be approved by clicking a link in the mail to navigate to the Amazon certificate approval website and then clicking I Approve. However, the validation email can be blocked by spam filters. Therefore, if you do not receive the original mail, you can request that the mail be resent within 72 hours of requesting the ACM certificate. If more than 72 hours have elapsed since your original request or since your last attempt to resend validation mail, you must request a new certificate. For more information about setting up your contact email addresses, see [Configure Email for your Domain](https://docs.aws.amazon.com/acm/latest/userguide/setup-email.html).
    ///
    /// - Parameter ResendValidationEmailInput : [no documentation found]
    ///
    /// - Returns: `ResendValidationEmailOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `InvalidDomainValidationOptionsException` : One or more values in the [DomainValidationOption] structure is incorrect.
    /// - `InvalidStateException` : Processing has reached an invalid state.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    func resendValidationEmail(input: ResendValidationEmailInput) async throws -> ResendValidationEmailOutput
    /// Updates a certificate. Currently, you can use this function to specify whether to opt in to or out of recording your certificate in a certificate transparency log. For more information, see [ Opting Out of Certificate Transparency Logging](https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency).
    ///
    /// - Parameter UpdateCertificateOptionsInput : [no documentation found]
    ///
    /// - Returns: `UpdateCertificateOptionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidArnException` : The requested Amazon Resource Name (ARN) does not refer to an existing resource.
    /// - `InvalidStateException` : Processing has reached an invalid state.
    /// - `LimitExceededException` : An ACM quota has been exceeded.
    /// - `ResourceNotFoundException` : The specified certificate cannot be found in the caller's account or the caller's account cannot be found.
    func updateCertificateOptions(input: UpdateCertificateOptionsInput) async throws -> UpdateCertificateOptionsOutput
}

public enum ACMClientTypes {}
