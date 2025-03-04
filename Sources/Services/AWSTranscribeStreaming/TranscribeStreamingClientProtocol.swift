// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Transcribe streaming offers three main types of real-time transcription: Standard, Medical, and Call Analytics.
///
/// * Standard transcriptions are the most common option. Refer to for details.
///
/// * Medical transcriptions are tailored to medical professionals and incorporate medical terms. A common use case for this service is transcribing doctor-patient dialogue in real time, so doctors can focus on their patient instead of taking notes. Refer to for details.
///
/// * Call Analytics transcriptions are designed for use with call center audio on two different channels; if you're looking for insight into customer service calls, use this option. Refer to for details.
public protocol TranscribeStreamingClientProtocol {
    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to Amazon Transcribe and the transcription results are streamed to your application. Use this operation for [Call Analytics](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html) transcriptions. The following parameters are required:
    ///
    /// * language-code
    ///
    /// * media-encoding
    ///
    /// * sample-rate
    ///
    ///
    /// For more information on streaming with Amazon Transcribe, see [Transcribing streaming audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
    ///
    /// - Parameter StartCallAnalyticsStreamTranscriptionInput : [no documentation found]
    ///
    /// - Returns: `StartCallAnalyticsStreamTranscriptionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One or more arguments to the StartStreamTranscription, StartMedicalStreamTranscription, or StartCallAnalyticsStreamTranscription operation was not valid. For example, MediaEncoding or LanguageCode used not valid values. Check the specified parameters and try your request again.
    /// - `ConflictException` : A new stream started with the same session ID. The current stream has been terminated.
    /// - `InternalFailureException` : A problem occurred while processing the audio. Amazon Transcribe terminated processing.
    /// - `LimitExceededException` : Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length limit. Break your audio stream into smaller chunks and try your request again.
    /// - `ServiceUnavailableException` : The service is currently unavailable. Try your request later.
    func startCallAnalyticsStreamTranscription(input: StartCallAnalyticsStreamTranscriptionInput) async throws -> StartCallAnalyticsStreamTranscriptionOutput
    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to Amazon Transcribe Medical and the transcription results are streamed to your application. The following parameters are required:
    ///
    /// * language-code
    ///
    /// * media-encoding
    ///
    /// * sample-rate
    ///
    ///
    /// For more information on streaming with Amazon Transcribe Medical, see [Transcribing streaming audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
    ///
    /// - Parameter StartMedicalStreamTranscriptionInput : [no documentation found]
    ///
    /// - Returns: `StartMedicalStreamTranscriptionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One or more arguments to the StartStreamTranscription, StartMedicalStreamTranscription, or StartCallAnalyticsStreamTranscription operation was not valid. For example, MediaEncoding or LanguageCode used not valid values. Check the specified parameters and try your request again.
    /// - `ConflictException` : A new stream started with the same session ID. The current stream has been terminated.
    /// - `InternalFailureException` : A problem occurred while processing the audio. Amazon Transcribe terminated processing.
    /// - `LimitExceededException` : Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length limit. Break your audio stream into smaller chunks and try your request again.
    /// - `ServiceUnavailableException` : The service is currently unavailable. Try your request later.
    func startMedicalStreamTranscription(input: StartMedicalStreamTranscriptionInput) async throws -> StartMedicalStreamTranscriptionOutput
    /// Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to Amazon Transcribe and the transcription results are streamed to your application. The following parameters are required:
    ///
    /// * language-code or identify-language
    ///
    /// * media-encoding
    ///
    /// * sample-rate
    ///
    ///
    /// For more information on streaming with Amazon Transcribe, see [Transcribing streaming audio](https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html).
    ///
    /// - Parameter StartStreamTranscriptionInput : [no documentation found]
    ///
    /// - Returns: `StartStreamTranscriptionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : One or more arguments to the StartStreamTranscription, StartMedicalStreamTranscription, or StartCallAnalyticsStreamTranscription operation was not valid. For example, MediaEncoding or LanguageCode used not valid values. Check the specified parameters and try your request again.
    /// - `ConflictException` : A new stream started with the same session ID. The current stream has been terminated.
    /// - `InternalFailureException` : A problem occurred while processing the audio. Amazon Transcribe terminated processing.
    /// - `LimitExceededException` : Your client has exceeded one of the Amazon Transcribe limits. This is typically the audio length limit. Break your audio stream into smaller chunks and try your request again.
    /// - `ServiceUnavailableException` : The service is currently unavailable. Try your request later.
    func startStreamTranscription(input: StartStreamTranscriptionInput) async throws -> StartStreamTranscriptionOutput
}

public enum TranscribeStreamingClientTypes {}
