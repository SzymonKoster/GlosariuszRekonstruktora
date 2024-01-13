import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI API Group Code

class OpenAIAPIGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static CreateChatCompletionCall createChatCompletionCall =
      CreateChatCompletionCall();
  static CreateCompletionCall createCompletionCall = CreateCompletionCall();
  static CreateEditCall createEditCall = CreateEditCall();
  static CreateImageCall createImageCall = CreateImageCall();
  static CreateImageEditCall createImageEditCall = CreateImageEditCall();
  static CreateImageVariationCall createImageVariationCall =
      CreateImageVariationCall();
  static CreateEmbeddingCall createEmbeddingCall = CreateEmbeddingCall();
  static CreateSpeechCall createSpeechCall = CreateSpeechCall();
  static CreateTranscriptionCall createTranscriptionCall =
      CreateTranscriptionCall();
  static CreateTranslationCall createTranslationCall = CreateTranslationCall();
  static ListFilesCall listFilesCall = ListFilesCall();
  static CreateFileCall createFileCall = CreateFileCall();
  static DeleteFileCall deleteFileCall = DeleteFileCall();
  static RetrieveFileCall retrieveFileCall = RetrieveFileCall();
  static DownloadFileCall downloadFileCall = DownloadFileCall();
  static CreateFineTuningJobCall createFineTuningJobCall =
      CreateFineTuningJobCall();
  static ListPaginatedFineTuningJobsCall listPaginatedFineTuningJobsCall =
      ListPaginatedFineTuningJobsCall();
  static RetrieveFineTuningJobCall retrieveFineTuningJobCall =
      RetrieveFineTuningJobCall();
  static ListFineTuningEventsCall listFineTuningEventsCall =
      ListFineTuningEventsCall();
  static CancelFineTuningJobCall cancelFineTuningJobCall =
      CancelFineTuningJobCall();
  static CreateFineTuneCall createFineTuneCall = CreateFineTuneCall();
  static ListFineTunesCall listFineTunesCall = ListFineTunesCall();
  static RetrieveFineTuneCall retrieveFineTuneCall = RetrieveFineTuneCall();
  static CancelFineTuneCall cancelFineTuneCall = CancelFineTuneCall();
  static ListFineTuneEventsCall listFineTuneEventsCall =
      ListFineTuneEventsCall();
  static ListModelsCall listModelsCall = ListModelsCall();
  static RetrieveModelCall retrieveModelCall = RetrieveModelCall();
  static DeleteModelCall deleteModelCall = DeleteModelCall();
  static CreateModerationCall createModerationCall = CreateModerationCall();
  static ListAssistantsCall listAssistantsCall = ListAssistantsCall();
  static CreateAssistantCall createAssistantCall = CreateAssistantCall();
  static GetAssistantCall getAssistantCall = GetAssistantCall();
  static ModifyAssistantCall modifyAssistantCall = ModifyAssistantCall();
  static DeleteAssistantCall deleteAssistantCall = DeleteAssistantCall();
  static CreateThreadCall createThreadCall = CreateThreadCall();
  static GetThreadCall getThreadCall = GetThreadCall();
  static ModifyThreadCall modifyThreadCall = ModifyThreadCall();
  static DeleteThreadCall deleteThreadCall = DeleteThreadCall();
  static ListMessagesCall listMessagesCall = ListMessagesCall();
  static CreateMessageCall createMessageCall = CreateMessageCall();
  static GetMessageCall getMessageCall = GetMessageCall();
  static ModifyMessageCall modifyMessageCall = ModifyMessageCall();
  static CreateThreadAndRunCall createThreadAndRunCall =
      CreateThreadAndRunCall();
  static ListRunsCall listRunsCall = ListRunsCall();
  static CreateRunCall createRunCall = CreateRunCall();
  static GetRunCall getRunCall = GetRunCall();
  static ModifyRunCall modifyRunCall = ModifyRunCall();
  static SubmitToolOuputsToRunCall submitToolOuputsToRunCall =
      SubmitToolOuputsToRunCall();
  static CancelRunCall cancelRunCall = CancelRunCall();
  static ListRunStepsCall listRunStepsCall = ListRunStepsCall();
  static GetRunStepCall getRunStepCall = GetRunStepCall();
  static ListAssistantFilesCall listAssistantFilesCall =
      ListAssistantFilesCall();
  static CreateAssistantFileCall createAssistantFileCall =
      CreateAssistantFileCall();
  static GetAssistantFileCall getAssistantFileCall = GetAssistantFileCall();
  static DeleteAssistantFileCall deleteAssistantFileCall =
      DeleteAssistantFileCall();
  static ListMessageFilesCall listMessageFilesCall = ListMessageFilesCall();
  static GetMessageFileCall getMessageFileCall = GetMessageFileCall();
}

class CreateChatCompletionCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? imageURL = '',
    String? apiKey = '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',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-4-vision-preview",
  "messages": [
    {
      "role": "user",
      "content": [
        {
          "type": "text",
          "text": "$query"
        },
        {
          "type": "image_url",
          "image_url": {
            "url": "$imageURL"
          }
        }
      ]
    }
  ],
  "max_tokens": 300
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createChatCompletion',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic responseText(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

class CreateCompletionCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "model": "",
  "prompt": "",
  "best_of": 0,
  "echo": false,
  "frequency_penalty": 0,
  "logit_bias": {},
  "logprobs": 0,
  "max_tokens": 16,
  "n": 1,
  "presence_penalty": 0,
  "seed": 0,
  "stop": "",
  "stream": false,
  "suffix": "test.",
  "temperature": 1,
  "top_p": 1,
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createCompletion',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEditCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "instruction": "Fix the spelling mistakes.",
  "model": "text-davinci-edit-001",
  "input": "What day of the wek is it?",
  "n": 1,
  "temperature": 1,
  "top_p": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createEdit',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/edits',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "prompt": "A cute baby sea otter",
  "model": "dall-e-3",
  "n": 1,
  "quality": "standard",
  "response_format": "url",
  "size": "1024x1024",
  "style": "vivid",
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createImage',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageEditCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createImageEdit',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/images/edits',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageVariationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createImageVariation',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/images/variations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEmbeddingCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "input": "The quick brown fox jumped over the lazy dog",
  "model": "text-embedding-ada-002",
  "encoding_format": "float",
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createEmbedding',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/embeddings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateSpeechCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "model": "",
  "input": "",
  "voice": "alloy",
  "response_format": "mp3",
  "speed": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createSpeech',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/audio/speech',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateTranscriptionCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createTranscription',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/audio/transcriptions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateTranslationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createTranslation',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/audio/translations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFilesCall {
  Future<ApiCallResponse> call({
    String? purpose = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFiles',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'purpose': purpose,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFileCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createFile',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/files',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteFile',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/files/$fileId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFile',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/files/$fileId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DownloadFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'downloadFile',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/files/$fileId/content',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "training_file": "file-abc123",
  "hyperparameters": {
    "batch_size": "",
    "learning_rate_multiplier": "",
    "n_epochs": ""
  },
  "suffix": "",
  "validation_file": "file-abc123"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createFineTuningJob',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine_tuning/jobs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListPaginatedFineTuningJobsCall {
  Future<ApiCallResponse> call({
    String? after = '',
    int? limit,
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listPaginatedFineTuningJobs',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine_tuning/jobs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'after': after,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFineTuningJob',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine_tuning/jobs/$fineTuningJobId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTuningEventsCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? after = '',
    int? limit,
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFineTuningEvents',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/fine_tuning/jobs/$fineTuningJobId/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'after': after,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cancelFineTuningJob',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/fine_tuning/jobs/$fineTuningJobId/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFineTuneCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "training_file": "file-abc123",
  "batch_size": 0,
  "classification_betas": [
    0
  ],
  "classification_n_classes": 0,
  "classification_positive_class": "",
  "compute_classification_metrics": false,
  "hyperparameters": {
    "n_epochs": ""
  },
  "learning_rate_multiplier": 0,
  "model": "curie",
  "prompt_loss_weight": 0,
  "suffix": "",
  "validation_file": "file-abc123"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createFineTune',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine-tunes',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTunesCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFineTunes',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine-tunes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFineTuneCall {
  Future<ApiCallResponse> call({
    String? fineTuneId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFineTune',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine-tunes/$fineTuneId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelFineTuneCall {
  Future<ApiCallResponse> call({
    String? fineTuneId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cancelFineTune',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine-tunes/$fineTuneId/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTuneEventsCall {
  Future<ApiCallResponse> call({
    String? fineTuneId = '',
    bool? stream,
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listFineTuneEvents',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/fine-tunes/$fineTuneId/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'stream': stream,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListModelsCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listModels',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/models',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveModelCall {
  Future<ApiCallResponse> call({
    String? model = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'retrieveModel',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/models/$model',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteModelCall {
  Future<ApiCallResponse> call({
    String? model = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteModel',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/models/$model',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateModerationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "input": "",
  "model": "text-moderation-stable"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createModeration',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/moderations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAssistantsCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listAssistants',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAssistantCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "model": "",
  "name": "",
  "description": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "file_ids": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAssistant',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAssistant',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "model": "",
  "name": "",
  "description": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "file_ids": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyAssistant',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteAssistant',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateThreadCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "messages": [
    {
      "role": "user",
      "content": "",
      "file_ids": [
        ""
      ],
      "metadata": {}
    }
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createThread',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getThread',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyThread',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteThread',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListMessagesCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listMessages',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "role": "user",
  "content": "",
  "file_ids": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createMessage',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getMessage',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages/$messageId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyMessage',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages/$messageId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateThreadAndRunCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "assistant_id": "",
  "thread": {
    "messages": [
      {
        "role": "user",
        "content": "",
        "file_ids": [
          ""
        ],
        "metadata": {}
      }
    ],
    "metadata": {}
  },
  "model": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createThreadAndRun',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListRunsCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listRuns',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "assistant_id": "",
  "model": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createRun',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRun',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyRun',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SubmitToolOuputsToRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "tool_outputs": [
    {
      "tool_call_id": "",
      "output": ""
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'submitToolOuputsToRun',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId/submit_tool_outputs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cancelRun',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListRunStepsCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listRunSteps',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId/steps',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRunStepCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? stepId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRunStep',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/runs/$runId/steps/$stepId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAssistantFilesCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listAssistantFiles',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAssistantFileCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    const ffApiRequestBody = '''
{
  "file_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAssistantFile',
      apiUrl: '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId/files',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssistantFileCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAssistantFile',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId/files/$fileId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAssistantFileCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deleteAssistantFile',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/assistants/$assistantId/files/$fileId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListMessageFilesCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'listMessageFiles',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages/$messageId/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMessageFileCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apiKey = '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',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getMessageFile',
      apiUrl:
          '${OpenAIAPIGroup.baseUrl}/threads/$threadId/messages/$messageId/files/$fileId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $apiKeyAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OpenAI API Group Code

class GenerateCharactersVisualisationCall {
  static Future<ApiCallResponse> call({
    String? characterDescription = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "dall-e-3",
  "prompt": "Wygeneruj prawdopodobną wizualiazację postaci na podstawie podanego opisu. Skup się na tym żeby postać wyglądała jakby żyła w czasach średniowiecza i przypominała prawdziwego człowieka. Na grafice zabronione jest umieszczanie tekstu. Grafika ma być fotorealistyczna wiernie odwzorowywująca czasy średniowiecza. Oto opis: $characterDescription",
  "n": 1,
  "size": "1024x1024"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GenerateCharactersVisualisation',
      apiUrl: 'https://api.openai.com/v1/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? imagesResponse(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GenerateMedievalCharacterCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? gender = '',
    int? age,
    String? origin = '',
    String? profession = '',
    String? socialClass = '',
    int? richness,
    String? pickedHistoricalEvent = '',
    String? language = '',
    String? characterDescription = '',
    List<String>? listOfItemsList,
  }) async {
    final listOfItems = _serializeList(listOfItemsList);

    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": [
    {
      "role": "system",
      "content": "Twoim zadaniem jest tworzenie kart postaci dla osób zajmujących się rekonstrukcją średniowieczną, dla całej epoki średniowiecza z uwzględnieniem wiarygodności i rzeczywistej możliwości istnienia danej postaci w czasach średniowiecza.  Na wejściu otrzymasz informację w następującej formie: character_content, language, character description, name, gender, age, origin, profesion, social_class, richness, picked_tournament. Wartość language powie ci w jakim języku masz wygenerować opis. Wartość character description dostarczy ci dodatowych informacji o postaci. Wartość name dostarczy ci informacji o imieniu postaci. Wartość gender dostarczy ci informacji o płci danej postaci. Wartośc age dostarczy ci informacji o wieku postaci. Wartośc origin dostarczy ci informacji o miejscowości z której pochodzi dana postać. Wartość profesion dostarczy ci informacji o zawodzie wykonywanym przez daną postać, zwróć jednak uwagę na to żeby dany zawód pasował do czasów średniowiecza. Wartośc social_class da ci informacje o klasie społecznej do której przynależy dana postać. Wartośc richness wyrażona w skali od 1 do 6, gdzie 1 oznacza biedę a 6 bogactwo, da ci informacje o zamożności danej postaci. Wartość picked_tournament da ci informację o wydarzeniu historycznym w którym mógła by wziąć udział postać której opis będziesz miał za zadanie wygenerować. Skup się na wygenerowniu opisu odpowiadającego jak najbardziej średniowiecznym realiom. Postaraj się aby opis był wypunktowany i podzielony na sekcje któe będą czytelniejsze dla użytkownika. Generuj proszę bardzo rozbudowane opisy, tak żeby zainspirować użytkownika i pozwolić mu łatwiejsze zainspirowanie się do potencjalnej roli."
    },
    {
      "role": "user",
      "content": "language: $language character description: $characterDescription, name: $name, gender: $gender, age: $age, origin: $origin, profesion: $profession, social_class: $socialClass, richness: $richness , picked_historical_event: $pickedHistoricalEvent, optional list of items owned by the character: $listOfItems "
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GenerateMedievalCharacter',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? output(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
