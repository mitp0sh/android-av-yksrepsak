.class public Lcom/amazonaws/services/sns/AmazonSNSClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonSNSClient.java"

# interfaces
.implements Lcom/amazonaws/services/sns/AmazonSNS;


# instance fields
.field private awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field protected final exceptionUnmarshallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lorg/w3c/dom/Node;",
            ">;>;"
        }
    .end annotation
.end field

.field private signer:Lcom/amazonaws/auth/QueryStringSigner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 114
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 129
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 148
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 149
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 150
    invoke-direct {p0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->init()V

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 166
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 186
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 188
    invoke-direct {p0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->init()V

    .line 189
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sns/model/transform/AuthorizationErrorExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sns/model/transform/AuthorizationErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sns/model/transform/TopicLimitExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sns/model/transform/TopicLimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sns/model/transform/NotFoundExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sns/model/transform/NotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sns/model/transform/InternalErrorExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sns/model/transform/InternalErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sns/model/transform/SubscriptionLimitExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sns/model/transform/SubscriptionLimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sns/model/transform/InvalidParameterExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sns/model/transform/InvalidParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v1, "sns.us-east-1.amazonaws.com"

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->setEndpoint(Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/amazonaws/auth/QueryStringSigner;

    invoke-direct {v1}, Lcom/amazonaws/auth/QueryStringSigner;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    .line 205
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 206
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v1, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/sns/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    return-void
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TY;>;",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<TX;",
            "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
            ">;)TX;"
        }
    .end annotation

    .prologue
    .line 785
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TX;Lcom/amazonaws/transform/StaxUnmarshallerContext;>;"
    iget-object v7, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 786
    iget v7, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->timeOffset:I

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 787
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazonaws/AmazonWebServiceRequest;->copyPrivateRequestParameters()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 788
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 791
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 792
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    .line 793
    .local v5, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 794
    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v3

    .line 798
    .local v3, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    iget-object v7, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    invoke-virtual {v3, v7}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 799
    invoke-virtual {v3, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 801
    new-instance v6, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v6, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 802
    .local v6, "responseHandler":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TX;>;"
    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v7, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v7}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 804
    .local v2, "errorResponseHandler":Lcom/amazonaws/http/DefaultErrorResponseHandler;
    iget-object v7, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v7, p1, v6, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public addPermission(Lcom/amazonaws/services/sns/model/AddPermissionRequest;)V
    .locals 2
    .param p1, "addPermissionRequest"    # Lcom/amazonaws/services/sns/model/AddPermissionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 492
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/AddPermissionRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/AddPermissionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 493
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/AddPermissionRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 494
    return-void
.end method

.method public confirmSubscription(Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Lcom/amazonaws/services/sns/model/ConfirmSubscriptionResult;
    .locals 2
    .param p1, "confirmSubscriptionRequest"    # Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ConfirmSubscriptionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ConfirmSubscriptionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/ConfirmSubscriptionRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 245
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ConfirmSubscriptionResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ConfirmSubscriptionResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sns/model/ConfirmSubscriptionResult;

    return-object v1
.end method

.method public createTopic(Lcom/amazonaws/services/sns/model/CreateTopicRequest;)Lcom/amazonaws/services/sns/model/CreateTopicResult;
    .locals 2
    .param p1, "createTopicRequest"    # Lcom/amazonaws/services/sns/model/CreateTopicRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/CreateTopicRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/CreateTopicRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/CreateTopicRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/CreateTopicRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 528
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/CreateTopicRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/CreateTopicResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/CreateTopicResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sns/model/CreateTopicResult;

    return-object v1
.end method

.method public deleteTopic(Lcom/amazonaws/services/sns/model/DeleteTopicRequest;)V
    .locals 2
    .param p1, "deleteTopicRequest"    # Lcom/amazonaws/services/sns/model/DeleteTopicRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 372
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/DeleteTopicRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/DeleteTopicRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/DeleteTopicRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/DeleteTopicRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 373
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/DeleteTopicRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 374
    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    const-string v0, "sns"

    return-object v0
.end method

.method public getSubscriptionAttributes(Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;
    .locals 2
    .param p1, "getSubscriptionAttributesRequest"    # Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 559
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/GetSubscriptionAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/GetSubscriptionAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/GetSubscriptionAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 560
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/GetSubscriptionAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/GetSubscriptionAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;

    return-object v1
.end method

.method public getTopicAttributes(Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;)Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;
    .locals 2
    .param p1, "getTopicAttributesRequest"    # Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/GetTopicAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/GetTopicAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/GetTopicAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 278
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/GetTopicAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;

    return-object v1
.end method

.method public listSubscriptions()Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->listSubscriptions(Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptions(Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;
    .locals 2
    .param p1, "listSubscriptionsRequest"    # Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 435
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;

    return-object v1
.end method

.method public listSubscriptionsByTopic(Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;
    .locals 2
    .param p1, "listSubscriptionsByTopicRequest"    # Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 662
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 663
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ListSubscriptionsByTopicResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;

    return-object v1
.end method

.method public listTopics()Lcom/amazonaws/services/sns/model/ListTopicsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 755
    new-instance v0, Lcom/amazonaws/services/sns/model/ListTopicsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/ListTopicsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->listTopics(Lcom/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazonaws/services/sns/model/ListTopicsResult;

    move-result-object v0

    return-object v0
.end method

.method public listTopics(Lcom/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazonaws/services/sns/model/ListTopicsResult;
    .locals 2
    .param p1, "listTopicsRequest"    # Lcom/amazonaws/services/sns/model/ListTopicsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ListTopicsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ListTopicsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/ListTopicsRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 593
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/ListTopicsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/ListTopicsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/ListTopicsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sns/model/ListTopicsResult;

    return-object v1
.end method

.method public publish(Lcom/amazonaws/services/sns/model/PublishRequest;)Lcom/amazonaws/services/sns/model/PublishResult;
    .locals 2
    .param p1, "publishRequest"    # Lcom/amazonaws/services/sns/model/PublishRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 697
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/PublishRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/PublishRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/PublishRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/PublishRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 698
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/PublishRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/PublishResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/PublishResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sns/model/PublishResult;

    return-object v1
.end method

.method public removePermission(Lcom/amazonaws/services/sns/model/RemovePermissionRequest;)V
    .locals 2
    .param p1, "removePermissionRequest"    # Lcom/amazonaws/services/sns/model/RemovePermissionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/RemovePermissionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/RemovePermissionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/RemovePermissionRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/RemovePermissionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 401
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/RemovePermissionRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 402
    return-void
.end method

.method public setSubscriptionAttributes(Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)V
    .locals 2
    .param p1, "setSubscriptionAttributesRequest"    # Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 463
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/SetSubscriptionAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/SetSubscriptionAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/SetSubscriptionAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 464
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 465
    return-void
.end method

.method public setTopicAttributes(Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;)V
    .locals 2
    .param p1, "setTopicAttributesRequest"    # Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/SetTopicAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 342
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 343
    return-void
.end method

.method public subscribe(Lcom/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazonaws/services/sns/model/SubscribeResult;
    .locals 2
    .param p1, "subscribeRequest"    # Lcom/amazonaws/services/sns/model/SubscribeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/SubscribeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/SubscribeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/SubscribeRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 313
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/SubscribeRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/SubscribeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/SubscribeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sns/model/SubscribeResult;

    return-object v1
.end method

.method public unsubscribe(Lcom/amazonaws/services/sns/model/UnsubscribeRequest;)V
    .locals 2
    .param p1, "unsubscribeRequest"    # Lcom/amazonaws/services/sns/model/UnsubscribeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 626
    new-instance v1, Lcom/amazonaws/services/sns/model/transform/UnsubscribeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sns/model/transform/UnsubscribeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sns/model/transform/UnsubscribeRequestMarshaller;->marshall(Lcom/amazonaws/services/sns/model/UnsubscribeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 627
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sns/model/UnsubscribeRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sns/AmazonSNSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 628
    return-void
.end method
