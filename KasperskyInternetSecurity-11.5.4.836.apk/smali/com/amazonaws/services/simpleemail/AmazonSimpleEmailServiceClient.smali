.class public Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonSimpleEmailServiceClient.java"

# interfaces
.implements Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailService;


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

.field private signer:Lcom/amazonaws/auth/AWS3Signer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

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

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

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

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

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

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 149
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 150
    invoke-direct {p0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->init()V

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

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

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

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 188
    invoke-direct {p0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->init()V

    .line 189
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/simpleemail/model/transform/MessageRejectedExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/simpleemail/model/transform/MessageRejectedExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v1, "email.us-east-1.amazonaws.com"

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->setEndpoint(Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/amazonaws/auth/AWS3Signer;

    invoke-direct {v1}, Lcom/amazonaws/auth/AWS3Signer;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->signer:Lcom/amazonaws/auth/AWS3Signer;

    .line 200
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 201
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v1, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/simpleemail/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
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
    .line 969
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TX;Lcom/amazonaws/transform/StaxUnmarshallerContext;>;"
    iget-object v7, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 970
    iget v7, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->timeOffset:I

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 971
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

    .line 972
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 975
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 976
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    .line 977
    .local v5, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 978
    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 981
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v3

    .line 982
    .local v3, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    iget-object v7, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->signer:Lcom/amazonaws/auth/AWS3Signer;

    invoke-virtual {v3, v7}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 983
    invoke-virtual {v3, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 985
    new-instance v6, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v6, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 986
    .local v6, "responseHandler":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TX;>;"
    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v7, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v7}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 988
    .local v2, "errorResponseHandler":Lcom/amazonaws/http/DefaultErrorResponseHandler;
    iget-object v7, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v7, p1, v6, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public deleteIdentity(Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;)Lcom/amazonaws/services/simpleemail/model/DeleteIdentityResult;
    .locals 2
    .param p1, "deleteIdentityRequest"    # Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/DeleteIdentityRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/DeleteIdentityRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/DeleteIdentityRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 230
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/DeleteIdentityRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/DeleteIdentityResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/DeleteIdentityResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/DeleteIdentityResult;

    return-object v1
.end method

.method public deleteVerifiedEmailAddress(Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;)V
    .locals 2
    .param p1, "deleteVerifiedEmailAddressRequest"    # Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 807
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/DeleteVerifiedEmailAddressRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/DeleteVerifiedEmailAddressRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/DeleteVerifiedEmailAddressRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 808
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/DeleteVerifiedEmailAddressRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 809
    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 965
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityDkimAttributes(Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;)Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
    .locals 2
    .param p1, "getIdentityDkimAttributesRequest"    # Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 447
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 448
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;

    return-object v1
.end method

.method public getIdentityNotificationAttributes(Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;)Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;
    .locals 2
    .param p1, "getIdentityNotificationAttributesRequest"    # Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 354
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityNotificationAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesResult;

    return-object v1
.end method

.method public getIdentityVerificationAttributes(Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;)Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesResult;
    .locals 2
    .param p1, "getIdentityVerificationAttributesRequest"    # Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityVerificationAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityVerificationAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityVerificationAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 591
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityVerificationAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityVerificationAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/GetIdentityVerificationAttributesResult;

    return-object v1
.end method

.method public getSendQuota()Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 939
    new-instance v0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->getSendQuota(Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;)Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;

    move-result-object v0

    return-object v0
.end method

.method public getSendQuota(Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;)Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;
    .locals 2
    .param p1, "getSendQuotaRequest"    # Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 664
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/GetSendQuotaRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/GetSendQuotaRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/GetSendQuotaRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 665
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/GetSendQuotaRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/GetSendQuotaResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/GetSendQuotaResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;

    return-object v1
.end method

.method public getSendStatistics()Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 895
    new-instance v0, Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->getSendStatistics(Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;)Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsResult;

    move-result-object v0

    return-object v0
.end method

.method public getSendStatistics(Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;)Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsResult;
    .locals 2
    .param p1, "getSendStatisticsRequest"    # Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/GetSendStatisticsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/GetSendStatisticsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/GetSendStatisticsRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 295
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/GetSendStatisticsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/GetSendStatisticsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/GetSendStatisticsResult;

    return-object v1
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 944
    const-string v0, "email"

    return-object v0
.end method

.method public listIdentities()Lcom/amazonaws/services/simpleemail/model/ListIdentitiesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 918
    new-instance v0, Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->listIdentities(Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;)Lcom/amazonaws/services/simpleemail/model/ListIdentitiesResult;

    move-result-object v0

    return-object v0
.end method

.method public listIdentities(Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;)Lcom/amazonaws/services/simpleemail/model/ListIdentitiesResult;
    .locals 2
    .param p1, "listIdentitiesRequest"    # Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 561
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/ListIdentitiesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/ListIdentitiesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/ListIdentitiesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 562
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/ListIdentitiesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/ListIdentitiesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/ListIdentitiesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/ListIdentitiesResult;

    return-object v1
.end method

.method public listVerifiedEmailAddresses()Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 869
    new-instance v0, Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->listVerifiedEmailAddresses(Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;)Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesResult;

    move-result-object v0

    return-object v0
.end method

.method public listVerifiedEmailAddresses(Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;)Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesResult;
    .locals 2
    .param p1, "listVerifiedEmailAddressesRequest"    # Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/ListVerifiedEmailAddressesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/ListVerifiedEmailAddressesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/ListVerifiedEmailAddressesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 263
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/ListVerifiedEmailAddressesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/ListVerifiedEmailAddressesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/ListVerifiedEmailAddressesResult;

    return-object v1
.end method

.method public sendEmail(Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;)Lcom/amazonaws/services/simpleemail/model/SendEmailResult;
    .locals 2
    .param p1, "sendEmailRequest"    # Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 777
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/SendEmailRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/SendEmailRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/SendEmailRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 778
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/SendEmailResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/SendEmailResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/SendEmailResult;

    return-object v1
.end method

.method public sendRawEmail(Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;)Lcom/amazonaws/services/simpleemail/model/SendRawEmailResult;
    .locals 2
    .param p1, "sendRawEmailRequest"    # Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 533
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/SendRawEmailRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/SendRawEmailRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/SendRawEmailRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 534
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/SendRawEmailResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/SendRawEmailResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/SendRawEmailResult;

    return-object v1
.end method

.method public setIdentityDkimEnabled(Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;)Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledResult;
    .locals 2
    .param p1, "setIdentityDkimEnabledRequest"    # Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 638
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityDkimEnabledRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityDkimEnabledRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityDkimEnabledRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 639
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityDkimEnabledResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityDkimEnabledResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/SetIdentityDkimEnabledResult;

    return-object v1
.end method

.method public setIdentityFeedbackForwardingEnabled(Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;)Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;
    .locals 2
    .param p1, "setIdentityFeedbackForwardingEnabledRequest"    # Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 697
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityFeedbackForwardingEnabledRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityFeedbackForwardingEnabledRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityFeedbackForwardingEnabledRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 698
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityFeedbackForwardingEnabledResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityFeedbackForwardingEnabledResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/SetIdentityFeedbackForwardingEnabledResult;

    return-object v1
.end method

.method public setIdentityNotificationTopic(Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;)Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;
    .locals 2
    .param p1, "setIdentityNotificationTopicRequest"    # Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 841
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityNotificationTopicRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityNotificationTopicRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityNotificationTopicRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 842
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityNotificationTopicResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/SetIdentityNotificationTopicResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/SetIdentityNotificationTopicResult;

    return-object v1
.end method

.method public verifyDomainDkim(Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;)Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimResult;
    .locals 2
    .param p1, "verifyDomainDkimRequest"    # Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 397
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/VerifyDomainDkimRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyDomainDkimRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyDomainDkimRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 398
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/VerifyDomainDkimResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyDomainDkimResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/VerifyDomainDkimResult;

    return-object v1
.end method

.method public verifyDomainIdentity(Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;)Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityResult;
    .locals 2
    .param p1, "verifyDomainIdentityRequest"    # Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/VerifyDomainIdentityRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyDomainIdentityRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyDomainIdentityRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 725
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/VerifyDomainIdentityResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyDomainIdentityResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/VerifyDomainIdentityResult;

    return-object v1
.end method

.method public verifyEmailAddress(Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;)V
    .locals 2
    .param p1, "verifyEmailAddressRequest"    # Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/VerifyEmailAddressRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyEmailAddressRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyEmailAddressRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 478
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/VerifyEmailAddressRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 479
    return-void
.end method

.method public verifyEmailIdentity(Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;)Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityResult;
    .locals 2
    .param p1, "verifyEmailIdentityRequest"    # Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/VerifyEmailIdentityRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyEmailIdentityRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyEmailIdentityRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 323
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityRequest;>;"
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/transform/VerifyEmailIdentityResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/transform/VerifyEmailIdentityResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/simpleemail/AmazonSimpleEmailServiceClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/simpleemail/model/VerifyEmailIdentityResult;

    return-object v1
.end method
