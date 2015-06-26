.class public Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonDynamoDBClient.java"

# interfaces
.implements Lcom/amazonaws/services/dynamodb/AmazonDynamoDB;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field protected exceptionUnmarshallers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/transform/Unmarshaller",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            "Lcom/amazonaws/util/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private signer:Lcom/amazonaws/auth/AWS4Signer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDB;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 116
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 131
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 150
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 152
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 154
    invoke-direct {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->init()V

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 170
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 0
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 190
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 194
    invoke-direct {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->init()V

    .line 195
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 200
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/InternalServerErrorExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/InternalServerErrorExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/ProvisionedThroughputExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/ProvisionedThroughputExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/ResourceInUseExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/ResourceInUseExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/ConditionalCheckFailedExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/ConditionalCheckFailedExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/dynamodb/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/dynamodb/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/transform/JsonErrorUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v1, "dynamodb.us-east-1.amazonaws.com/"

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->setEndpoint(Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/amazonaws/auth/AWS4Signer;

    invoke-direct {v1}, Lcom/amazonaws/auth/AWS4Signer;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    .line 212
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    const-string v2, "dynamodb"

    invoke-virtual {v1, v2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    .line 215
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 216
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/dynamodb/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    iget-object v2, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1, v2}, Lcom/amazonaws/ClientConfiguration;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    .line 221
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/ClientConfiguration;->getMaxErrorRetry()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 222
    sget-object v1, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Overriding default max error retry value to: 10"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 223
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/amazonaws/ClientConfiguration;->setMaxErrorRetry(I)V

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->setConfiguration(Lcom/amazonaws/ClientConfiguration;)V

    .line 226
    return-void
.end method

.method private invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 6
    .param p3, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request",
            "<TY;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TX;>;>;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 972
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TX;>;>;"
    iget-object v5, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v5}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 973
    iget v5, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->timeOffset:I

    invoke-interface {p1, v5}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 975
    invoke-virtual {p3}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 977
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 978
    iget-object v5, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v5}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 979
    .local v1, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 981
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v3

    .line 982
    .local v3, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 983
    invoke-virtual {v3}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 986
    :cond_0
    iget-object v5, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {p3, v5}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 987
    invoke-virtual {p3, v1}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 989
    sget-object v5, Lcom/amazonaws/internal/DynamoDBBackoffStrategy;->DEFAULT:Lcom/amazonaws/internal/CustomBackoffStrategy;

    invoke-virtual {p3, v5}, Lcom/amazonaws/http/ExecutionContext;->setCustomBackoffStrategy(Lcom/amazonaws/internal/CustomBackoffStrategy;)V

    .line 990
    new-instance v2, Lcom/amazonaws/http/JsonErrorResponseHandler;

    iget-object v5, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v5}, Lcom/amazonaws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 992
    .local v2, "errorResponseHandler":Lcom/amazonaws/http/JsonErrorResponseHandler;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 993
    iget-object v5, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v5, p1, p2, v2, p3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v4

    .line 994
    .local v4, "result":Ljava/lang/Object;, "TX;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0}, Lcom/amazonaws/util/AWSRequestMetrics;->log()V

    .line 998
    return-object v4
.end method


# virtual methods
.method public batchGetItem(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;
    .locals 6
    .param p1, "batchGetItemRequest"    # Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 863
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 864
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 865
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 866
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 868
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemResultJsonUnmarshaller;-><init>()V

    .line 870
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 874
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/BatchGetItemResult;

    return-object v5
.end method

.method public batchWriteItem(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;)Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;
    .locals 6
    .param p1, "batchWriteItemRequest"    # Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 355
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 356
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 357
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 358
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 360
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemResultJsonUnmarshaller;-><init>()V

    .line 362
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 366
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemResult;

    return-object v5
.end method

.method public createTable(Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;)Lcom/amazonaws/services/dynamodb/model/CreateTableResult;
    .locals 6
    .param p1, "createTableRequest"    # Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 605
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 606
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 607
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 608
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 610
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableResultJsonUnmarshaller;-><init>()V

    .line 612
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/CreateTableResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 616
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/CreateTableResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/CreateTableResult;

    return-object v5
.end method

.method public deleteItem(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;)Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;
    .locals 6
    .param p1, "deleteItemRequest"    # Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 752
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 753
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 754
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 755
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 757
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemResultJsonUnmarshaller;-><init>()V

    .line 759
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 763
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/DeleteItemResult;

    return-object v5
.end method

.method public deleteTable(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;
    .locals 6
    .param p1, "deleteTableRequest"    # Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 704
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 705
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 706
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 707
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 709
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableResultJsonUnmarshaller;-><init>()V

    .line 711
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 715
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/DeleteTableResult;

    return-object v5
.end method

.method public describeTable(Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;)Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;
    .locals 6
    .param p1, "describeTableRequest"    # Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 503
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 504
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 505
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/DescribeTableRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/DescribeTableRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/DescribeTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 506
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/DescribeTableRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 508
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/DescribeTableResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/DescribeTableResultJsonUnmarshaller;-><init>()V

    .line 510
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 514
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/DescribeTableResult;

    return-object v5
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 965
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Lcom/amazonaws/services/dynamodb/model/GetItemRequest;)Lcom/amazonaws/services/dynamodb/model/GetItemResult;
    .locals 6
    .param p1, "getItemRequest"    # Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 803
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 804
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 805
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/GetItemRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/GetItemRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/GetItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/GetItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 806
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/GetItemRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 808
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/GetItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/GetItemResultJsonUnmarshaller;-><init>()V

    .line 810
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/GetItemResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 814
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/GetItemResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/GetItemResult;

    return-object v5
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 944
    const-string v0, "dynamodb"

    return-object v0
.end method

.method public listTables()Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 897
    new-instance v0, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->listTables(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)Lcom/amazonaws/services/dynamodb/model/ListTablesResult;

    move-result-object v0

    return-object v0
.end method

.method public listTables(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
    .locals 6
    .param p1, "listTablesRequest"    # Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 257
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 258
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 259
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 260
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 262
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/ListTablesResultJsonUnmarshaller;-><init>()V

    .line 264
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/ListTablesResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 268
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/ListTablesResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;

    return-object v5
.end method

.method public putItem(Lcom/amazonaws/services/dynamodb/model/PutItemRequest;)Lcom/amazonaws/services/dynamodb/model/PutItemResult;
    .locals 6
    .param p1, "putItemRequest"    # Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 456
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 457
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 458
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/PutItemRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/PutItemRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/PutItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/PutItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 459
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/PutItemRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 461
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/PutItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/PutItemResultJsonUnmarshaller;-><init>()V

    .line 463
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/PutItemResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 467
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/PutItemResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/PutItemResult;

    return-object v5
.end method

.method public query(Lcom/amazonaws/services/dynamodb/model/QueryRequest;)Lcom/amazonaws/services/dynamodb/model/QueryResult;
    .locals 6
    .param p1, "queryRequest"    # Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 307
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 308
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 309
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/QueryRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/QueryRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/QueryRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/QueryRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 310
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/QueryRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 312
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/QueryResultJsonUnmarshaller;-><init>()V

    .line 314
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/QueryResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 318
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/QueryResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/QueryResult;

    return-object v5
.end method

.method public scan(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Lcom/amazonaws/services/dynamodb/model/ScanResult;
    .locals 6
    .param p1, "scanRequest"    # Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 550
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 551
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 552
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/ScanRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/ScanRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/ScanRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 553
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/ScanRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 555
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/ScanResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/ScanResultJsonUnmarshaller;-><init>()V

    .line 557
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/ScanResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 561
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/ScanResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/ScanResult;

    return-object v5
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
    .line 937
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->setEndpoint(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p3}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method public updateItem(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;)Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;
    .locals 6
    .param p1, "updateItemRequest"    # Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 404
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 405
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 406
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 407
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 409
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemResultJsonUnmarshaller;-><init>()V

    .line 411
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 415
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/UpdateItemResult;

    return-object v5
.end method

.method public updateTable(Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;)Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;
    .locals 6
    .param p1, "updateTableRequest"    # Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v1

    .line 653
    .local v1, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    invoke-virtual {v1}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 654
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Ljava/lang/String;)V

    .line 655
    new-instance v5, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableRequestMarshaller;

    invoke-direct {v5}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableRequestMarshaller;-><init>()V

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 656
    .local v2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;>;"
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5}, Lcom/amazonaws/util/AWSRequestMetrics$Field;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Ljava/lang/String;)V

    .line 658
    new-instance v4, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableResultJsonUnmarshaller;-><init>()V

    .line 660
    .local v4, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;Lcom/amazonaws/transform/JsonUnmarshallerContext;>;"
    new-instance v3, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v3, v4}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 664
    .local v3, "responseHandler":Lcom/amazonaws/http/JsonResponseHandler;, "Lcom/amazonaws/http/JsonResponseHandler<Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;>;"
    invoke-direct {p0, v2, v3, v1}, Lcom/amazonaws/services/dynamodb/AmazonDynamoDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/UpdateTableResult;

    return-object v5
.end method
