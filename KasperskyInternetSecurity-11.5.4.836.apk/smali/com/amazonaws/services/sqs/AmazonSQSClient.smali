.class public Lcom/amazonaws/services/sqs/AmazonSQSClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonSQSClient.java"

# interfaces
.implements Lcom/amazonaws/services/sqs/AmazonSQS;


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

.field private signer:Lcom/amazonaws/auth/AWS4Signer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 117
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 132
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 151
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 153
    invoke-direct {p0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->init()V

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 169
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 189
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 190
    iput-object p1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 191
    invoke-direct {p0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->init()V

    .line 192
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/QueueDeletedRecentlyExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/QueueDeletedRecentlyExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/QueueNameExistsExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/QueueNameExistsExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/EmptyBatchRequestExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/EmptyBatchRequestExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/InvalidMessageContentsExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/InvalidMessageContentsExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/InvalidBatchEntryIdExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/InvalidBatchEntryIdExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/OverLimitExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/OverLimitExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/TooManyEntriesInBatchRequestExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/TooManyEntriesInBatchRequestExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/InvalidIdFormatExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/InvalidIdFormatExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/QueueDoesNotExistExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/QueueDoesNotExistExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/InvalidAttributeNameExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/InvalidAttributeNameExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/BatchRequestTooLongExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/BatchRequestTooLongExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/ReceiptHandleIsInvalidExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/ReceiptHandleIsInvalidExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/MessageNotInflightExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/MessageNotInflightExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/sqs/model/transform/BatchEntryIdsNotDistinctExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/sqs/model/transform/BatchEntryIdsNotDistinctExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v1, "sqs.us-east-1.amazonaws.com"

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->setEndpoint(Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/amazonaws/auth/AWS4Signer;

    invoke-direct {v1}, Lcom/amazonaws/auth/AWS4Signer;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    .line 216
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 217
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v1, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/sqs/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
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
    .line 856
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TX;Lcom/amazonaws/transform/StaxUnmarshallerContext;>;"
    iget-object v7, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 857
    iget v7, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->timeOffset:I

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 858
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

    .line 859
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 863
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    .line 864
    .local v5, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 865
    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 868
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v3

    .line 869
    .local v3, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    iget-object v7, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v3, v7}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 870
    invoke-virtual {v3, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 872
    new-instance v6, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v6, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 873
    .local v6, "responseHandler":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TX;>;"
    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v7, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v7}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 875
    .local v2, "errorResponseHandler":Lcom/amazonaws/http/DefaultErrorResponseHandler;
    iget-object v7, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v7, p1, v6, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public addPermission(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)V
    .locals 2
    .param p1, "addPermissionRequest"    # Lcom/amazonaws/services/sqs/model/AddPermissionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 735
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/AddPermissionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/AddPermissionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/AddPermissionRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 736
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/AddPermissionRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 737
    return-void
.end method

.method public changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)V
    .locals 2
    .param p1, "changeMessageVisibilityRequest"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 336
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public changeMessageVisibilityBatch(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;
    .locals 2
    .param p1, "changeMessageVisibilityBatchRequest"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityBatchRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityBatchRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityBatchRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 280
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityBatchResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ChangeMessageVisibilityBatchResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;

    return-object v1
.end method

.method public createQueue(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Lcom/amazonaws/services/sqs/model/CreateQueueResult;
    .locals 2
    .param p1, "createQueueRequest"    # Lcom/amazonaws/services/sqs/model/CreateQueueRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/CreateQueueRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/CreateQueueRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/CreateQueueRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 694
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/CreateQueueRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/CreateQueueResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/CreateQueueResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/CreateQueueResult;

    return-object v1
.end method

.method public deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;)V
    .locals 2
    .param p1, "deleteMessageRequest"    # Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 763
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 764
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 765
    return-void
.end method

.method public deleteMessageBatch(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;
    .locals 2
    .param p1, "deleteMessageBatchRequest"    # Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 649
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 650
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;

    return-object v1
.end method

.method public deleteQueue(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;)V
    .locals 2
    .param p1, "deleteQueueRequest"    # Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 514
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/DeleteQueueRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/DeleteQueueRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/DeleteQueueRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 515
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 516
    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getQueueAttributes(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;
    .locals 2
    .param p1, "getQueueAttributesRequest"    # Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 452
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/GetQueueAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/GetQueueAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/GetQueueAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 453
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/GetQueueAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/GetQueueAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;

    return-object v1
.end method

.method public getQueueUrl(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;
    .locals 2
    .param p1, "getQueueUrlRequest"    # Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/GetQueueUrlRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/GetQueueUrlRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/GetQueueUrlRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 364
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/GetQueueUrlResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/GetQueueUrlResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;

    return-object v1
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    const-string v0, "sqs"

    return-object v0
.end method

.method public listQueues()Lcom/amazonaws/services/sqs/model/ListQueuesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 785
    new-instance v0, Lcom/amazonaws/services/sqs/model/ListQueuesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/model/ListQueuesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->listQueues(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Lcom/amazonaws/services/sqs/model/ListQueuesResult;

    move-result-object v0

    return-object v0
.end method

.method public listQueues(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Lcom/amazonaws/services/sqs/model/ListQueuesResult;
    .locals 2
    .param p1, "listQueuesRequest"    # Lcom/amazonaws/services/sqs/model/ListQueuesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 616
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ListQueuesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ListQueuesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/ListQueuesRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 617
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/ListQueuesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ListQueuesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ListQueuesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/ListQueuesResult;

    return-object v1
.end method

.method public receiveMessage(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;
    .locals 2
    .param p1, "receiveMessageRequest"    # Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 591
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/ReceiveMessageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;

    return-object v1
.end method

.method public removePermission(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)V
    .locals 2
    .param p1, "removePermissionRequest"    # Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/RemovePermissionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/RemovePermissionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/RemovePermissionRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 389
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Lcom/amazonaws/services/sqs/model/SendMessageResult;
    .locals 2
    .param p1, "sendMessageRequest"    # Lcom/amazonaws/services/sqs/model/SendMessageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/SendMessageRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 543
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/SendMessageRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/SendMessageResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/SendMessageResult;

    return-object v1
.end method

.method public sendMessageBatch(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    .locals 2
    .param p1, "sendMessageBatchRequest"    # Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 485
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 486
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;>;"
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;

    return-object v1
.end method

.method public setEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "regionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->setEndpoint(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p3}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method public setQueueAttributes(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)V
    .locals 2
    .param p1, "setQueueAttributesRequest"    # Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v1, Lcom/amazonaws/services/sqs/model/transform/SetQueueAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/sqs/model/transform/SetQueueAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/sqs/model/transform/SetQueueAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 246
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 247
    return-void
.end method
