.class public Lcom/amazonaws/http/AmazonHttpClient;
.super Ljava/lang/Object;
.source "AmazonHttpClient.java"


# static fields
.field private static final MAX_BACKOFF_IN_MILLISECONDS:I = 0x4e20

.field public static final PROFILING_SYSTEM_PROPERTY:Ljava/lang/String; = "com.amazonaws.sdk.enableRuntimeProfiling"

.field private static httpClientFactory:Lcom/amazonaws/http/HttpClientFactory;

.field private static httpRequestFactory:Lcom/amazonaws/http/HttpRequestFactory;

.field static final log:Lorg/apache/commons/logging/Log;

.field private static final random:Ljava/util/Random;

.field private static final requestLog:Lorg/apache/commons/logging/Log;


# instance fields
.field private final config:Lcom/amazonaws/ClientConfiguration;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final responseMetadataCache:Lcom/amazonaws/util/ResponseMetadataCache;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    const-string v2, "com.amazonaws.request"

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    .line 73
    const-class v2, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    .line 87
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sput-object v2, Lcom/amazonaws/http/AmazonHttpClient;->random:Ljava/util/Random;

    .line 89
    new-instance v2, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v2}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    sput-object v2, Lcom/amazonaws/http/AmazonHttpClient;->httpRequestFactory:Lcom/amazonaws/http/HttpRequestFactory;

    .line 90
    new-instance v2, Lcom/amazonaws/http/HttpClientFactory;

    invoke-direct {v2}, Lcom/amazonaws/http/HttpClientFactory;-><init>()V

    sput-object v2, Lcom/amazonaws/http/AmazonHttpClient;->httpClientFactory:Lcom/amazonaws/http/HttpClientFactory;

    .line 99
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1.6.0_06"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1.6.0_13"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "1.6.0_17"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "problematicJvmVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "jvmVersion":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected a possible problem with the current JVM version ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ").  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "If you experience XML parsing problems using the SDK, try upgrading to a more recent JVM update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/amazonaws/util/ResponseMetadataCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/amazonaws/util/ResponseMetadataCache;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->responseMetadataCache:Lcom/amazonaws/util/ResponseMetadataCache;

    .line 117
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 118
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->httpClientFactory:Lcom/amazonaws/http/HttpClientFactory;

    iget-object v1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0, v1}, Lcom/amazonaws/http/HttpClientFactory;->createHttpClient(Lcom/amazonaws/ClientConfiguration;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 119
    return-void
.end method

.method private applyRequestData(Lcom/amazonaws/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/RequestClientOptions;->getClientMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/RequestClientOptions;->getClientMarker()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/http/AmazonHttpClient;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_1
    return-void
.end method

.method private createResponse(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/amazonaws/Request;Lorg/apache/http/HttpResponse;)Lcom/amazonaws/http/HttpResponse;
    .locals 7
    .param p1, "method"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p3, "apacheHttpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    .local p2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    new-instance v2, Lcom/amazonaws/http/HttpResponse;

    invoke-direct {v2, p2, p1}, Lcom/amazonaws/http/HttpResponse;-><init>(Lcom/amazonaws/Request;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 656
    .local v2, "httpResponse":Lcom/amazonaws/http/HttpResponse;
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 657
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/http/HttpResponse;->setContent(Ljava/io/InputStream;)V

    .line 660
    :cond_0
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/http/HttpResponse;->setStatusCode(I)V

    .line 661
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/http/HttpResponse;->setStatusText(Ljava/lang/String;)V

    .line 662
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 663
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/amazonaws/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 666
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_1
    return-object v2
.end method

.method private static createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "existingUserAgentString"    # Ljava/lang/String;
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    .end local p0    # "existingUserAgentString":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "existingUserAgentString":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private executeHelper(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 21
    .param p4, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TT;>;>;"
    .local p3, "errorResponseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonServiceException;>;"
    const/4 v14, 0x0

    .line 218
    .local v14, "leaveHttpConnectionOpen":Z
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v9

    .line 220
    .local v9, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    invoke-direct/range {p0 .. p1}, Lcom/amazonaws/http/AmazonHttpClient;->applyRequestData(Lcom/amazonaws/Request;)V

    .line 227
    const/16 v20, 0x0

    .line 228
    .local v20, "retryCount":I
    const/16 v19, 0x0

    .line 229
    .local v19, "redirectedURI":Ljava/net/URI;
    const/4 v11, 0x0

    .line 230
    .local v11, "entity":Lorg/apache/http/HttpEntity;
    const/4 v12, 0x0

    .line 234
    .local v12, "exception":Lcom/amazonaws/AmazonServiceException;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v17, "originalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 236
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v16, "originalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 240
    :cond_0
    :goto_0
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AttemptCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v20, 0x1

    int-to-long v4, v4

    invoke-virtual {v9, v3, v4, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->setCounter(Ljava/lang/String;J)V

    .line 241
    if-lez v20, :cond_1

    .line 242
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setParameters(Ljava/util/Map;)V

    .line 243
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHeaders(Ljava/util/Map;)V

    .line 246
    :cond_1
    const/4 v6, 0x0

    .line 247
    .local v6, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    const/4 v7, 0x0

    .line 252
    .local v7, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getSigner()Lcom/amazonaws/auth/Signer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 253
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getSigner()Lcom/amazonaws/auth/Signer;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lcom/amazonaws/auth/Signer;->sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V

    .line 255
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 258
    :cond_2
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending Request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 262
    :cond_3
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->httpRequestFactory:Lcom/amazonaws/http/HttpRequestFactory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v4, v11, v1}, Lcom/amazonaws/http/HttpRequestFactory;->createHttpRequest(Lcom/amazonaws/Request;Lcom/amazonaws/ClientConfiguration;Lorg/apache/http/HttpEntity;Lcom/amazonaws/http/ExecutionContext;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v6

    .line 264
    instance-of v3, v6, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v3, :cond_4

    .line 265
    move-object v0, v6

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v3, v0

    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 268
    :cond_4
    if-eqz v19, :cond_5

    .line 269
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 272
    :cond_5
    if-lez v20, :cond_6

    .line 273
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getCustomBackoffStrategy()Lcom/amazonaws/internal/CustomBackoffStrategy;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v12, v3}, Lcom/amazonaws/http/AmazonHttpClient;->pauseExponentially(ILcom/amazonaws/AmazonServiceException;Lcom/amazonaws/internal/CustomBackoffStrategy;)V

    .line 275
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 278
    :cond_6
    if-eqz v11, :cond_7

    .line 279
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 280
    .local v10, "content":Ljava/io/InputStream;
    if-lez v20, :cond_9

    .line 281
    invoke-virtual {v10}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 282
    invoke-virtual {v10}, Ljava/io/InputStream;->reset()V

    .line 283
    const/4 v3, -0x1

    invoke-virtual {v10, v3}, Ljava/io/InputStream;->mark(I)V

    .line 292
    .end local v10    # "content":Ljava/io/InputStream;
    :cond_7
    :goto_1
    const/4 v12, 0x0

    .line 294
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 296
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/amazonaws/http/AmazonHttpClient;->isRequestSuccessful(Lorg/apache/http/HttpResponse;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 301
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v14

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    .line 308
    invoke-direct/range {v3 .. v8}, Lcom/amazonaws/http/AmazonHttpClient;->handleResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 347
    add-int/lit8 v20, v20, 0x1

    .line 356
    if-nez v14, :cond_8

    .line 357
    :try_start_1
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :cond_8
    :goto_2
    return-object v3

    .line 286
    .restart local v10    # "content":Ljava/io/InputStream;
    :cond_9
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 287
    const/4 v3, -0x1

    invoke-virtual {v10, v3}, Ljava/io/InputStream;->mark(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 337
    .end local v10    # "content":Ljava/io/InputStream;
    :catch_0
    move-exception v13

    .line 338
    .local v13, "ioe":Ljava/io/IOException;
    :try_start_3
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to execute HTTP request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 339
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v6, v13, v1}, Lcom/amazonaws/http/AmazonHttpClient;->shouldRetry(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 343
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to execute HTTP request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    .end local v13    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    add-int/lit8 v20, v20, 0x1

    .line 356
    if-nez v14, :cond_a

    .line 357
    :try_start_4
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_a
    :goto_3
    throw v3

    .line 309
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/amazonaws/http/AmazonHttpClient;->isTemporaryRedirect(Lorg/apache/http/HttpResponse;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 316
    const-string v3, "location"

    invoke-interface {v7, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v15

    .line 317
    .local v15, "locationHeaders":[Lorg/apache/http/Header;
    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 318
    .local v18, "redirectedLocation":Ljava/lang/String;
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redirecting to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 319
    invoke-static/range {v18 .. v18}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v19

    .line 320
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 321
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v9, v3, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 347
    .end local v15    # "locationHeaders":[Lorg/apache/http/Header;
    .end local v18    # "redirectedLocation":Ljava/lang/String;
    :goto_4
    add-int/lit8 v20, v20, 0x1

    .line 356
    if-nez v14, :cond_0

    .line 357
    :try_start_6
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 326
    :cond_c
    :try_start_7
    invoke-interface/range {p3 .. p3}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v14

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/amazonaws/http/AmazonHttpClient;->handleErrorResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v12

    .line 328
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/amazonaws/AmazonServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    sget-object v3, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v6, v12, v1}, Lcom/amazonaws/http/AmazonHttpClient;->shouldRetry(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 333
    throw v12

    .line 335
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/amazonaws/http/AmazonHttpClient;->resetRequestAfterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 345
    .restart local v13    # "ioe":Ljava/io/IOException;
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/amazonaws/http/AmazonHttpClient;->resetRequestAfterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 347
    add-int/lit8 v20, v20, 0x1

    .line 356
    if-nez v14, :cond_0

    .line 357
    :try_start_9
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v3

    goto/16 :goto_0

    .end local v13    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto/16 :goto_3

    :catch_4
    move-exception v4

    goto/16 :goto_2
.end method

.method private handleErrorResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 12
    .param p3, "method"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p4, "apacheHttpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonServiceException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "errorResponseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonServiceException;>;"
    const/16 v11, 0x1f7

    const/16 v10, 0x19d

    .line 599
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 600
    .local v6, "status":I
    move-object/from16 v0, p4

    invoke-direct {p0, p3, p1, v0}, Lcom/amazonaws/http/AmazonHttpClient;->createResponse(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/amazonaws/Request;Lorg/apache/http/HttpResponse;)Lcom/amazonaws/http/HttpResponse;

    move-result-object v5

    .line 601
    .local v5, "response":Lcom/amazonaws/http/HttpResponse;
    invoke-interface {p2}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    instance-of v7, p3, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v7, :cond_0

    move-object v2, p3

    .line 602
    check-cast v2, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 603
    .local v2, "entityEnclosingRequest":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    new-instance v7, Lcom/amazonaws/http/HttpMethodReleaseInputStream;

    invoke-direct {v7, v2}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    invoke-virtual {v5, v7}, Lcom/amazonaws/http/HttpResponse;->setContent(Ljava/io/InputStream;)V

    .line 606
    .end local v2    # "entityEnclosingRequest":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    :cond_0
    const/4 v4, 0x0

    .line 608
    .local v4, "exception":Lcom/amazonaws/AmazonServiceException;
    :try_start_0
    invoke-interface {p2, v5}, Lcom/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/amazonaws/AmazonServiceException;

    move-object v4, v0

    .line 609
    sget-object v7, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received error response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/amazonaws/AmazonServiceException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    invoke-virtual {v4, v6}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 632
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v4}, Lcom/amazonaws/AmazonServiceException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 634
    return-object v4

    .line 610
    :catch_0
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/Exception;
    if-ne v6, v10, :cond_1

    .line 614
    new-instance v4, Lcom/amazonaws/AmazonServiceException;

    .end local v4    # "exception":Lcom/amazonaws/AmazonServiceException;
    const-string v7, "Request entity too large"

    invoke-direct {v4, v7}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 615
    .restart local v4    # "exception":Lcom/amazonaws/AmazonServiceException;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v4, v10}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 617
    sget-object v7, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 618
    const-string v7, "Request entity too large"

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_1
    if-ne v6, v11, :cond_2

    const-string v7, "Service Unavailable"

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 620
    new-instance v4, Lcom/amazonaws/AmazonServiceException;

    .end local v4    # "exception":Lcom/amazonaws/AmazonServiceException;
    const-string v7, "Service unavailable"

    invoke-direct {v4, v7}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 621
    .restart local v4    # "exception":Lcom/amazonaws/AmazonServiceException;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v4, v11}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 623
    sget-object v7, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 624
    const-string v7, "Service unavailable"

    invoke-virtual {v4, v7}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    .line 626
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to unmarshall error response ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "errorMessage":Ljava/lang/String;
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v7, v3, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private handleResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 11
    .param p3, "method"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p4, "apacheHttpResponse"    # Lorg/apache/http/HttpResponse;
    .param p5, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Lorg/apache/http/HttpResponse;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TT;>;>;"
    invoke-direct {p0, p3, p1, p4}, Lcom/amazonaws/http/AmazonHttpClient;->createResponse(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/amazonaws/Request;Lorg/apache/http/HttpResponse;)Lcom/amazonaws/http/HttpResponse;

    move-result-object v7

    .line 537
    .local v7, "httpResponse":Lcom/amazonaws/http/HttpResponse;
    invoke-interface {p2}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v8

    if-eqz v8, :cond_0

    instance-of v8, p3, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v8, :cond_0

    move-object v6, p3

    .line 538
    check-cast v6, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 539
    .local v6, "httpEntityEnclosingRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    new-instance v8, Lcom/amazonaws/http/HttpMethodReleaseInputStream;

    invoke-direct {v8, v6}, Lcom/amazonaws/http/HttpMethodReleaseInputStream;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    invoke-virtual {v7, v8}, Lcom/amazonaws/http/HttpResponse;->setContent(Ljava/io/InputStream;)V

    .line 543
    .end local v6    # "httpEntityEnclosingRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_0
    const/4 v2, 0x0

    .line 544
    .local v2, "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    :try_start_0
    const-string v8, "com.amazonaws.sdk.enableRuntimeProfiling"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 545
    new-instance v3, Lcom/amazonaws/util/CountingInputStream;

    invoke-virtual {v7}, Lcom/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/amazonaws/util/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 546
    .end local v2    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    .local v3, "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    :try_start_1
    invoke-virtual {v7, v3}, Lcom/amazonaws/http/HttpResponse;->setContent(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 549
    .end local v3    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    .restart local v2    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    :cond_1
    :try_start_2
    invoke-virtual/range {p5 .. p5}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 550
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v8, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v8}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 551
    invoke-interface {p2, v7}, Lcom/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/AmazonWebServiceResponse;

    .line 552
    .local v1, "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    sget-object v8, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v8}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 553
    if-eqz v2, :cond_2

    .line 554
    sget-object v8, Lcom/amazonaws/util/AWSRequestMetrics$Field;->BytesProcessed:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v8}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/amazonaws/util/CountingInputStream;->getByteCount()J

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10}, Lcom/amazonaws/util/AWSRequestMetrics;->setCounter(Ljava/lang/String;J)V

    .line 558
    :cond_2
    if-nez v1, :cond_3

    .line 559
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unable to unmarshall response metadata"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 570
    .end local v0    # "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    .end local v1    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    :catch_0
    move-exception v4

    .line 571
    .local v4, "e":Lcom/amazonaws/internal/CRC32MismatchException;
    :goto_0
    throw v4

    .line 561
    .end local v4    # "e":Lcom/amazonaws/internal/CRC32MismatchException;
    .restart local v0    # "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    .restart local v1    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/amazonaws/http/AmazonHttpClient;->responseMetadataCache:Lcom/amazonaws/util/ResponseMetadataCache;

    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v9

    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceResponse;->getResponseMetadata()Lcom/amazonaws/ResponseMetadata;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/amazonaws/util/ResponseMetadataCache;->add(Ljava/lang/Object;Lcom/amazonaws/ResponseMetadata;)V

    .line 563
    sget-object v8, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 564
    sget-object v8, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received successful response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", AWS Request ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 567
    :cond_4
    sget-object v8, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v8}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceResponse;->getResult()Ljava/lang/Object;
    :try_end_3
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v8

    return-object v8

    .line 572
    .end local v0    # "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    .end local v1    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    :catch_1
    move-exception v4

    .line 573
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to unmarshall response ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, "errorMessage":Ljava/lang/String;
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v8, v5, v4}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 572
    .end local v2    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "errorMessage":Ljava/lang/String;
    .restart local v3    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    .restart local v2    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    goto :goto_1

    .line 570
    .end local v2    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    .restart local v3    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    .restart local v2    # "countingInputStream":Lcom/amazonaws/util/CountingInputStream;
    goto :goto_0
.end method

.method private isRequestSuccessful(Lorg/apache/http/HttpResponse;)Z
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 502
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 503
    .local v0, "status":I
    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTemporaryRedirect(Lorg/apache/http/HttpResponse;)Z
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 495
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 496
    .local v0, "status":I
    const/16 v1, 0x133

    if-ne v0, v1, :cond_0

    const-string v1, "Location"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Location"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isThrottlingException(Lcom/amazonaws/AmazonServiceException;)Z
    .locals 3
    .param p1, "ase"    # Lcom/amazonaws/AmazonServiceException;

    .prologue
    const/4 v0, 0x0

    .line 714
    if-nez p1, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "Throttling"

    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ThrottlingException"

    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ProvisionedThroughputExceededException"

    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pauseExponentially(ILcom/amazonaws/AmazonServiceException;Lcom/amazonaws/internal/CustomBackoffStrategy;)V
    .locals 9
    .param p1, "retries"    # I
    .param p2, "previousException"    # Lcom/amazonaws/AmazonServiceException;
    .param p3, "backoffStrategy"    # Lcom/amazonaws/internal/CustomBackoffStrategy;

    .prologue
    .line 679
    const-wide/16 v0, 0x0

    .line 680
    .local v0, "delay":J
    if-eqz p3, :cond_1

    .line 681
    invoke-virtual {p3, p1}, Lcom/amazonaws/internal/CustomBackoffStrategy;->getBackoffPeriod(I)I

    move-result v5

    int-to-long v0, v5

    .line 690
    :goto_0
    const-wide/16 v5, 0x4e20

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 691
    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 692
    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retriable error detected, will retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, attempt number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 697
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    return-void

    .line 683
    :cond_1
    const-wide/16 v3, 0x12c

    .line 684
    .local v3, "scaleFactor":J
    invoke-direct {p0, p2}, Lcom/amazonaws/http/AmazonHttpClient;->isThrottlingException(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 685
    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->random:Ljava/util/Random;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x1f4

    int-to-long v3, v5

    .line 687
    :cond_2
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    int-to-double v7, p1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    long-to-double v7, v3

    mul-double/2addr v5, v7

    double-to-long v0, v5

    goto :goto_0

    .line 698
    .end local v3    # "scaleFactor":J
    :catch_0
    move-exception v2

    .line 699
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 700
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private resetRequestAfterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Encountered an exception and stream is not resettable"

    invoke-direct {v1, v2, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 385
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Encountered an exception and couldn\'t reset the stream to retry"

    invoke-direct {v1, v2, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private shouldRetry(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;I)Z
    .locals 6
    .param p1, "method"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "exception"    # Ljava/lang/Exception;
    .param p3, "retries"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 446
    iget-object v4, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v4}, Lcom/amazonaws/ClientConfiguration;->getMaxErrorRetry()I

    move-result v4

    if-lt p3, v4, :cond_1

    .line 491
    .end local p1    # "method":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_0
    :goto_0
    return v2

    .line 448
    .restart local p1    # "method":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_1
    instance-of v4, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_2

    .line 449
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1    # "method":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 450
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 451
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Entity not repeatable"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_2
    instance-of v4, p2, Ljava/io/IOException;

    if-eqz v4, :cond_4

    .line 459
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    sget-object v2, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrying on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    move v2, v3

    .line 463
    goto :goto_0

    .line 466
    :cond_4
    instance-of v4, p2, Lcom/amazonaws/AmazonServiceException;

    if-eqz v4, :cond_0

    move-object v0, p2

    .line 467
    check-cast v0, Lcom/amazonaws/AmazonServiceException;

    .line 477
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v4

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v4

    const/16 v5, 0x1f7

    if-ne v4, v5, :cond_6

    :cond_5
    move v2, v3

    .line 479
    goto :goto_0

    .line 488
    :cond_6
    invoke-direct {p0, v0}, Lcom/amazonaws/http/AmazonHttpClient;->isThrottlingException(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public disableStrictHostnameVerification()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 11
    .param p4, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TT;>;>;"
    .local p3, "errorResponseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonServiceException;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 169
    .local v5, "startTime":J
    if-nez p4, :cond_0

    new-instance v9, Lcom/amazonaws/AmazonClientException;

    const-string v10, "Internal SDK Error: No execution context parameter specified."

    invoke-direct {v9, v10}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 170
    :cond_0
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->getRequestHandlers()Ljava/util/List;

    move-result-object v4

    .line 171
    .local v4, "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler;>;"
    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .restart local v4    # "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/handlers/RequestHandler;

    .line 175
    .local v3, "requestHandler":Lcom/amazonaws/handlers/RequestHandler;
    invoke-interface {v3, p1}, Lcom/amazonaws/handlers/RequestHandler;->beforeRequest(Lcom/amazonaws/Request;)V

    goto :goto_0

    .line 179
    .end local v3    # "requestHandler":Lcom/amazonaws/handlers/RequestHandler;
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/AmazonHttpClient;->executeHelper(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v7

    .line 180
    .local v7, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazonaws/util/AWSRequestMetrics;->getTimingInfo()Lcom/amazonaws/util/TimingInfo;

    move-result-object v8

    .line 181
    .local v8, "timingInfo":Lcom/amazonaws/util/TimingInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/amazonaws/util/TimingInfo;->setEndTime(J)V

    .line 183
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/handlers/RequestHandler;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .local v1, "handler":Lcom/amazonaws/handlers/RequestHandler;
    :try_start_1
    invoke-interface {v1, p1, v7, v8}, Lcom/amazonaws/handlers/RequestHandler;->afterResponse(Lcom/amazonaws/Request;Ljava/lang/Object;Lcom/amazonaws/util/TimingInfo;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 186
    :catch_0
    move-exception v9

    goto :goto_1

    .line 189
    .end local v1    # "handler":Lcom/amazonaws/handlers/RequestHandler;
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    .end local v8    # "timingInfo":Lcom/amazonaws/util/TimingInfo;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Lcom/amazonaws/AmazonClientException;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/handlers/RequestHandler;

    .line 191
    .restart local v1    # "handler":Lcom/amazonaws/handlers/RequestHandler;
    invoke-interface {v1, p1, v0}, Lcom/amazonaws/handlers/RequestHandler;->afterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V

    goto :goto_2

    .line 193
    .end local v1    # "handler":Lcom/amazonaws/handlers/RequestHandler;
    :cond_3
    throw v0

    .line 188
    .end local v0    # "e":Lcom/amazonaws/AmazonClientException;
    .restart local v7    # "t":Ljava/lang/Object;, "TT;"
    .restart local v8    # "timingInfo":Lcom/amazonaws/util/TimingInfo;
    :cond_4
    return-object v7
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/amazonaws/http/AmazonHttpClient;->shutdown()V

    .line 723
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 724
    return-void
.end method

.method public getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->responseMetadataCache:Lcom/amazonaws/util/ResponseMetadataCache;

    invoke-virtual {v0, p1}, Lcom/amazonaws/util/ResponseMetadataCache;->get(Ljava/lang/Object;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/http/IdleConnectionReaper;->removeConnectionManager(Lorg/apache/http/conn/ClientConnectionManager;)V

    .line 430
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 431
    return-void
.end method
