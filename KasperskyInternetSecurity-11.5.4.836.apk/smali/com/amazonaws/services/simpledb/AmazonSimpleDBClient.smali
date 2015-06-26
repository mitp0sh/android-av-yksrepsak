.class public Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonSimpleDBClient.java"

# interfaces
.implements Lcom/amazonaws/services/simpledb/AmazonSimpleDB;


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
    .line 93
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

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

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

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

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

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

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 153
    invoke-direct {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->init()V

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

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

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

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 190
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 191
    invoke-direct {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->init()V

    .line 192
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/InvalidParameterValueExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/InvalidParameterValueExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainBytesExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainBytesExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/NoSuchDomainExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/NoSuchDomainExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainsExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainsExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/NumberSubmittedItemsExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/NumberSubmittedItemsExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/RequestTimeoutExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/RequestTimeoutExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/InvalidQueryExpressionExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/InvalidQueryExpressionExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/NumberSubmittedAttributesExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/NumberSubmittedAttributesExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/DuplicateItemNameExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/DuplicateItemNameExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainAttributesExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/NumberDomainAttributesExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/InvalidNumberPredicatesExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/InvalidNumberPredicatesExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/TooManyRequestedAttributesExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/TooManyRequestedAttributesExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/InvalidNextTokenExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/InvalidNextTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/NumberItemAttributesExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/NumberItemAttributesExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/AttributeDoesNotExistExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/AttributeDoesNotExistExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/MissingParameterExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/MissingParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpledb/model/transform/InvalidNumberValueTestsExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpledb/model/transform/InvalidNumberValueTestsExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v1, "sdb.amazonaws.com"

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->setEndpoint(Ljava/lang/String;)V

    .line 216
    new-instance v1, Lcom/amazonaws/auth/QueryStringSigner;

    invoke-direct {v1}, Lcom/amazonaws/auth/QueryStringSigner;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    .line 219
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 220
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/simpledb/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
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
    .line 794
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TX;Lcom/amazonaws/transform/StaxUnmarshallerContext;>;"
    iget-object v7, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 795
    iget v7, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->timeOffset:I

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 796
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

    .line 797
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 800
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 801
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    .line 802
    .local v5, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 803
    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v3

    .line 807
    .local v3, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    iget-object v7, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    invoke-virtual {v3, v7}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 808
    invoke-virtual {v3, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 810
    new-instance v6, Lcom/amazonaws/services/simpledb/internal/SimpleDBStaxResponseHandler;

    invoke-direct {v6, p2}, Lcom/amazonaws/services/simpledb/internal/SimpleDBStaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 811
    .local v6, "responseHandler":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TX;>;"
    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v7, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v7}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 813
    .local v2, "errorResponseHandler":Lcom/amazonaws/http/DefaultErrorResponseHandler;
    iget-object v7, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v7, p1, v6, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public batchDeleteAttributes(Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;)V
    .locals 2
    .param p1, "batchDeleteAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/BatchDeleteAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/BatchDeleteAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpledb/model/transform/BatchDeleteAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 402
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 403
    return-void
.end method

.method public batchPutAttributes(Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;)V
    .locals 2
    .param p1, "batchPutAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 699
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/BatchPutAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/BatchPutAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpledb/model/transform/BatchPutAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 700
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 701
    return-void
.end method

.method public createDomain(Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;)V
    .locals 2
    .param p1, "createDomainRequest"    # Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/CreateDomainRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/CreateDomainRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpledb/model/transform/CreateDomainRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 476
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 477
    return-void
.end method

.method public deleteAttributes(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)V
    .locals 2
    .param p1, "deleteAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/DeleteAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/DeleteAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpledb/model/transform/DeleteAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 521
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 522
    return-void
.end method

.method public deleteDomain(Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;)V
    .locals 2
    .param p1, "deleteDomainRequest"    # Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/DeleteDomainRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/DeleteDomainRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpledb/model/transform/DeleteDomainRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 434
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/DeleteDomainRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public domainMetadata(Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;)Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;
    .locals 2
    .param p1, "domainMetadataRequest"    # Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 729
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/DomainMetadataRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/DomainMetadataRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpledb/model/transform/DomainMetadataRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 730
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/DomainMetadataRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/DomainMetadataResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/DomainMetadataResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpledb/model/DomainMetadataResult;

    return-object v1
.end method

.method public getAttributes(Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;)Lcom/amazonaws/services/simpledb/model/GetAttributesResult;
    .locals 2
    .param p1, "getAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 596
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/GetAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/GetAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpledb/model/transform/GetAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 597
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/GetAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/GetAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpledb/model/GetAttributesResult;

    return-object v1
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/simpledb/SimpleDBResponseMetadata;
    .locals 2
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 786
    iget-object v1, p0, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    .line 787
    .local v0, "metadata":Lcom/amazonaws/ResponseMetadata;
    if-eqz v0, :cond_0

    .line 788
    new-instance v1, Lcom/amazonaws/services/simpledb/SimpleDBResponseMetadata;

    invoke-direct {v1, v0}, Lcom/amazonaws/services/simpledb/SimpleDBResponseMetadata;-><init>(Lcom/amazonaws/ResponseMetadata;)V

    .line 790
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    const-string v0, "sdb"

    return-object v0
.end method

.method public listDomains()Lcom/amazonaws/services/simpledb/model/ListDomainsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 760
    new-instance v0, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->listDomains(Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;)Lcom/amazonaws/services/simpledb/model/ListDomainsResult;

    move-result-object v0

    return-object v0
.end method

.method public listDomains(Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;)Lcom/amazonaws/services/simpledb/model/ListDomainsResult;
    .locals 2
    .param p1, "listDomainsRequest"    # Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 555
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/ListDomainsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/ListDomainsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpledb/model/transform/ListDomainsRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 556
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/ListDomainsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/ListDomainsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpledb/model/ListDomainsResult;

    return-object v1
.end method

.method public putAttributes(Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;)V
    .locals 2
    .param p1, "putAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/PutAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/PutAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpledb/model/transform/PutAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 352
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 353
    return-void
.end method

.method public select(Lcom/amazonaws/services/simpledb/model/SelectRequest;)Lcom/amazonaws/services/simpledb/model/SelectResult;
    .locals 2
    .param p1, "selectRequest"    # Lcom/amazonaws/services/simpledb/model/SelectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/SelectRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/SelectRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpledb/model/transform/SelectRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/SelectRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 271
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/SelectRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpledb/model/transform/SelectResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpledb/model/transform/SelectResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpledb/AmazonSimpleDBClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpledb/model/SelectResult;

    return-object v1
.end method
