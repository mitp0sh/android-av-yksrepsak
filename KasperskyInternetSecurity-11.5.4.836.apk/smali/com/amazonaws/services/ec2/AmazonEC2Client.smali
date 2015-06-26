.class public Lcom/amazonaws/services/ec2/AmazonEC2Client;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonEC2Client.java"

# interfaces
.implements Lcom/amazonaws/services/ec2/AmazonEC2;


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

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

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

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

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

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

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

    iput-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->exceptionUnmarshallers:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 153
    invoke-direct {p0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->init()V

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

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

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

    iput-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->exceptionUnmarshallers:Ljava/util/List;

    .line 190
    iput-object p1, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 191
    invoke-direct {p0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->init()V

    .line 192
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/transform/LegacyErrorUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v1, "ec2.amazonaws.com"

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->setEndpoint(Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/amazonaws/auth/QueryStringSigner;

    invoke-direct {v1}, Lcom/amazonaws/auth/QueryStringSigner;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    .line 202
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 203
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v1, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/ec2/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
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
    .line 4080
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TX;Lcom/amazonaws/transform/StaxUnmarshallerContext;>;"
    iget-object v7, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 4081
    iget v7, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->timeOffset:I

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 4082
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

    .line 4083
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4086
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 4087
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    .line 4088
    .local v5, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 4089
    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 4092
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v3

    .line 4093
    .local v3, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    iget-object v7, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->signer:Lcom/amazonaws/auth/QueryStringSigner;

    invoke-virtual {v3, v7}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 4094
    invoke-virtual {v3, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 4096
    new-instance v6, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v6, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 4097
    .local v6, "responseHandler":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TX;>;"
    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v7, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v7}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 4099
    .local v2, "errorResponseHandler":Lcom/amazonaws/http/DefaultErrorResponseHandler;
    iget-object v7, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v7, p1, v6, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public activateLicense(Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;)V
    .locals 2
    .param p1, "activateLicenseRequest"    # Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1012
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ActivateLicenseRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ActivateLicenseRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ActivateLicenseRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1013
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ActivateLicenseRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1014
    return-void
.end method

.method public allocateAddress()Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3955
    new-instance v0, Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->allocateAddress(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;)Lcom/amazonaws/services/ec2/model/AllocateAddressResult;

    move-result-object v0

    return-object v0
.end method

.method public allocateAddress(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;)Lcom/amazonaws/services/ec2/model/AllocateAddressResult;
    .locals 2
    .param p1, "allocateAddressRequest"    # Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2854
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/AllocateAddressRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/AllocateAddressRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/AllocateAddressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2855
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/AllocateAddressRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/AllocateAddressResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/AllocateAddressResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/AllocateAddressResult;

    return-object v1
.end method

.method public associateAddress(Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;)Lcom/amazonaws/services/ec2/model/AssociateAddressResult;
    .locals 2
    .param p1, "associateAddressRequest"    # Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1193
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/AssociateAddressRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/AssociateAddressRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/AssociateAddressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1194
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/AssociateAddressRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/AssociateAddressResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/AssociateAddressResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/AssociateAddressResult;

    return-object v1
.end method

.method public attachVolume(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;)Lcom/amazonaws/services/ec2/model/AttachVolumeResult;
    .locals 2
    .param p1, "attachVolumeRequest"    # Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 933
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 934
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/AttachVolumeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/AttachVolumeResult;

    return-object v1
.end method

.method public authorizeSecurityGroupIngress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3654
    new-instance v0, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->authorizeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)V

    .line 3655
    return-void
.end method

.method public authorizeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)V
    .locals 2
    .param p1, "authorizeSecurityGroupIngressRequest"    # Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1971
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/AuthorizeSecurityGroupIngressRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/AuthorizeSecurityGroupIngressRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/AuthorizeSecurityGroupIngressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1972
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1973
    return-void
.end method

.method public bundleInstance(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;)Lcom/amazonaws/services/ec2/model/BundleInstanceResult;
    .locals 2
    .param p1, "bundleInstanceRequest"    # Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2779
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2780
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/BundleInstanceRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/BundleInstanceResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/BundleInstanceResult;

    return-object v1
.end method

.method public cancelBundleTask(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;)Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;
    .locals 2
    .param p1, "cancelBundleTaskRequest"    # Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2218
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2219
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;

    return-object v1
.end method

.method public cancelConversionTask(Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;)V
    .locals 2
    .param p1, "cancelConversionTaskRequest"    # Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1160
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelConversionTaskRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelConversionTaskRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelConversionTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1161
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CancelConversionTaskRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1162
    return-void
.end method

.method public cancelExportTask(Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;)V
    .locals 2
    .param p1, "cancelExportTaskRequest"    # Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2052
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelExportTaskRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelExportTaskRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelExportTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2053
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CancelExportTaskRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 2054
    return-void
.end method

.method public cancelReservedInstancesListing(Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;)Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;
    .locals 2
    .param p1, "cancelReservedInstancesListingRequest"    # Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1910
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelReservedInstancesListingRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelReservedInstancesListingRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelReservedInstancesListingRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1911
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelReservedInstancesListingResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelReservedInstancesListingResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CancelReservedInstancesListingResult;

    return-object v1
.end method

.method public cancelSpotInstanceRequests(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;
    .locals 2
    .param p1, "cancelSpotInstanceRequestsRequest"    # Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2257
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelSpotInstanceRequestsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelSpotInstanceRequestsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelSpotInstanceRequestsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2258
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CancelSpotInstanceRequestsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CancelSpotInstanceRequestsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CancelSpotInstanceRequestsResult;

    return-object v1
.end method

.method public confirmProductInstance(Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;)Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;
    .locals 2
    .param p1, "confirmProductInstanceRequest"    # Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2522
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ConfirmProductInstanceRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ConfirmProductInstanceRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ConfirmProductInstanceRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2523
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ConfirmProductInstanceResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ConfirmProductInstanceResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/ConfirmProductInstanceResult;

    return-object v1
.end method

.method public copyImage(Lcom/amazonaws/services/ec2/model/CopyImageRequest;)Lcom/amazonaws/services/ec2/model/CopyImageResult;
    .locals 2
    .param p1, "copyImageRequest"    # Lcom/amazonaws/services/ec2/model/CopyImageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2075
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CopyImageRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CopyImageRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CopyImageRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CopyImageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2076
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CopyImageRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CopyImageResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CopyImageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CopyImageResult;

    return-object v1
.end method

.method public copySnapshot(Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;)Lcom/amazonaws/services/ec2/model/CopySnapshotResult;
    .locals 2
    .param p1, "copySnapshotRequest"    # Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2827
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CopySnapshotRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CopySnapshotRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CopySnapshotRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2828
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CopySnapshotRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CopySnapshotResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CopySnapshotResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CopySnapshotResult;

    return-object v1
.end method

.method public createImage(Lcom/amazonaws/services/ec2/model/CreateImageRequest;)Lcom/amazonaws/services/ec2/model/CreateImageResult;
    .locals 2
    .param p1, "createImageRequest"    # Lcom/amazonaws/services/ec2/model/CreateImageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateImageRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateImageRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateImageRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateImageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 400
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateImageRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateImageResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateImageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CreateImageResult;

    return-object v1
.end method

.method public createInstanceExportTask(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;
    .locals 2
    .param p1, "createInstanceExportTaskRequest"    # Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 456
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskResult;

    return-object v1
.end method

.method public createKeyPair(Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;)Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;
    .locals 2
    .param p1, "createKeyPairRequest"    # Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2944
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2945
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateKeyPairRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateKeyPairResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CreateKeyPairResult;

    return-object v1
.end method

.method public createPlacementGroup(Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;)V
    .locals 2
    .param p1, "createPlacementGroupRequest"    # Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2749
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreatePlacementGroupRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreatePlacementGroupRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CreatePlacementGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2750
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreatePlacementGroupRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 2751
    return-void
.end method

.method public createReservedInstancesListing(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;
    .locals 2
    .param p1, "createReservedInstancesListingRequest"    # Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 699
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateReservedInstancesListingRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateReservedInstancesListingRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateReservedInstancesListingRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 700
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateReservedInstancesListingResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateReservedInstancesListingResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CreateReservedInstancesListingResult;

    return-object v1
.end method

.method public createSecurityGroup(Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;)Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;
    .locals 2
    .param p1, "createSecurityGroupRequest"    # Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateSecurityGroupRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateSecurityGroupRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateSecurityGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 610
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateSecurityGroupRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateSecurityGroupResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateSecurityGroupResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CreateSecurityGroupResult;

    return-object v1
.end method

.method public createSnapshot(Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;)Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;
    .locals 2
    .param p1, "createSnapshotRequest"    # Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1076
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateSnapshotRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateSnapshotRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateSnapshotRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1077
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateSnapshotRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateSnapshotResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateSnapshotResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CreateSnapshotResult;

    return-object v1
.end method

.method public createSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;
    .locals 2
    .param p1, "createSpotDatafeedSubscriptionRequest"    # Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1522
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateSpotDatafeedSubscriptionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateSpotDatafeedSubscriptionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateSpotDatafeedSubscriptionRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1523
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateSpotDatafeedSubscriptionResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateSpotDatafeedSubscriptionResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CreateSpotDatafeedSubscriptionResult;

    return-object v1
.end method

.method public createTags(Lcom/amazonaws/services/ec2/model/CreateTagsRequest;)V
    .locals 2
    .param p1, "createTagsRequest"    # Lcom/amazonaws/services/ec2/model/CreateTagsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2138
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateTagsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateTagsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2139
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateTagsRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 2140
    return-void
.end method

.method public createVolume(Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;)Lcom/amazonaws/services/ec2/model/CreateVolumeResult;
    .locals 2
    .param p1, "createVolumeRequest"    # Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2548
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateVolumeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateVolumeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2549
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/CreateVolumeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/CreateVolumeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/CreateVolumeResult;

    return-object v1
.end method

.method public deactivateLicense(Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;)V
    .locals 2
    .param p1, "deactivateLicenseRequest"    # Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1218
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DeactivateLicenseRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DeactivateLicenseRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DeactivateLicenseRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1219
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DeactivateLicenseRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1220
    return-void
.end method

.method public deleteKeyPair(Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;)V
    .locals 2
    .param p1, "deleteKeyPairRequest"    # Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DeleteKeyPairRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DeleteKeyPairRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteKeyPairRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 343
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DeleteKeyPairRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 344
    return-void
.end method

.method public deletePlacementGroup(Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;)V
    .locals 2
    .param p1, "deletePlacementGroupRequest"    # Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2804
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DeletePlacementGroupRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DeletePlacementGroupRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DeletePlacementGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2805
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DeletePlacementGroupRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 2806
    return-void
.end method

.method public deleteSecurityGroup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3093
    new-instance v0, Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->deleteSecurityGroup(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;)V

    .line 3094
    return-void
.end method

.method public deleteSecurityGroup(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;)V
    .locals 2
    .param p1, "deleteSecurityGroupRequest"    # Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DeleteSecurityGroupRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DeleteSecurityGroupRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteSecurityGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 432
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DeleteSecurityGroupRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public deleteSnapshot(Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;)V
    .locals 2
    .param p1, "deleteSnapshotRequest"    # Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2696
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DeleteSnapshotRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DeleteSnapshotRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteSnapshotRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2697
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DeleteSnapshotRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 2698
    return-void
.end method

.method public deleteSpotDatafeedSubscription()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3754
    new-instance v0, Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->deleteSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)V

    .line 3755
    return-void
.end method

.method public deleteSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)V
    .locals 2
    .param p1, "deleteSpotDatafeedSubscriptionRequest"    # Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2375
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DeleteSpotDatafeedSubscriptionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DeleteSpotDatafeedSubscriptionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteSpotDatafeedSubscriptionRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2376
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DeleteSpotDatafeedSubscriptionRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 2377
    return-void
.end method

.method public deleteTags(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;)V
    .locals 2
    .param p1, "deleteTagsRequest"    # Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 860
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DeleteTagsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DeleteTagsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 861
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 862
    return-void
.end method

.method public deleteVolume(Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;)V
    .locals 2
    .param p1, "deleteVolumeRequest"    # Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1100
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DeleteVolumeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DeleteVolumeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1101
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DeleteVolumeRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1102
    return-void
.end method

.method public deregisterImage(Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;)V
    .locals 2
    .param p1, "deregisterImageRequest"    # Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 804
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DeregisterImageRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DeregisterImageRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DeregisterImageRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 805
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DeregisterImageRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 806
    return-void
.end method

.method public describeAccountAttributes()Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3239
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeAccountAttributes(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAccountAttributes(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;
    .locals 2
    .param p1, "describeAccountAttributesRequest"    # Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 884
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeAccountAttributesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAccountAttributesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAccountAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 885
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeAccountAttributesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAccountAttributesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;

    return-object v1
.end method

.method public describeAddresses()Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3776
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeAddresses(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAddresses(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;
    .locals 2
    .param p1, "describeAddressesRequest"    # Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2430
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeAddressesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAddressesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAddressesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2431
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeAddressesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeAddressesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAddressesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeAddressesResult;

    return-object v1
.end method

.method public describeAvailabilityZones()Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3067
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeAvailabilityZones(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAvailabilityZones(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;)Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;
    .locals 2
    .param p1, "describeAvailabilityZonesRequest"    # Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeAvailabilityZonesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAvailabilityZonesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAvailabilityZonesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 294
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeAvailabilityZonesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeAvailabilityZonesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeAvailabilityZonesResult;

    return-object v1
.end method

.method public describeBundleTasks()Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3415
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeBundleTasks(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;

    move-result-object v0

    return-object v0
.end method

.method public describeBundleTasks(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;
    .locals 2
    .param p1, "describeBundleTasksRequest"    # Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1371
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeBundleTasksRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeBundleTasksRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeBundleTasksRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1372
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeBundleTasksRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeBundleTasksResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeBundleTasksResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeBundleTasksResult;

    return-object v1
.end method

.method public describeConversionTasks()Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3464
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeConversionTasks(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;

    move-result-object v0

    return-object v0
.end method

.method public describeConversionTasks(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;
    .locals 2
    .param p1, "describeConversionTasksRequest"    # Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1546
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1547
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeConversionTasksResult;

    return-object v1
.end method

.method public describeExportTasks()Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3335
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeExportTasks(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;

    move-result-object v0

    return-object v0
.end method

.method public describeExportTasks(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;)Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;
    .locals 2
    .param p1, "describeExportTasksRequest"    # Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1242
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeExportTasksRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeExportTasksRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeExportTasksRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1243
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeExportTasksRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeExportTasksResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeExportTasksResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeExportTasksResult;

    return-object v1
.end method

.method public describeImageAttribute(Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;
    .locals 2
    .param p1, "describeImageAttributeRequest"    # Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2458
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeImageAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImageAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImageAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2459
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeImageAttributeRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeImageAttributeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImageAttributeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeImageAttributeResult;

    return-object v1
.end method

.method public describeImages()Lcom/amazonaws/services/ec2/model/DescribeImagesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3623
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeImages(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Lcom/amazonaws/services/ec2/model/DescribeImagesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeImages(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Lcom/amazonaws/services/ec2/model/DescribeImagesResult;
    .locals 2
    .param p1, "describeImagesRequest"    # Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1850
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1851
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeImagesResult;

    return-object v1
.end method

.method public describeInstanceAttribute(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;
    .locals 2
    .param p1, "describeInstanceAttributeRequest"    # Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1574
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1575
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceAttributeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceAttributeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeInstanceAttributeResult;

    return-object v1
.end method

.method public describeInstanceStatus()Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3887
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeInstanceStatus(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;

    move-result-object v0

    return-object v0
.end method

.method public describeInstanceStatus(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;
    .locals 2
    .param p1, "describeInstanceStatusRequest"    # Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2641
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceStatusRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceStatusRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceStatusRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2642
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceStatusResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstanceStatusResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeInstanceStatusResult;

    return-object v1
.end method

.method public describeInstances()Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3555
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeInstances(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeInstances(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    .locals 2
    .param p1, "describeInstancesRequest"    # Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1756
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1757
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeInstancesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;

    return-object v1
.end method

.method public describeKeyPairs()Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3800
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeKeyPairs(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;)Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeKeyPairs(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;)Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;
    .locals 2
    .param p1, "describeKeyPairsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2487
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeKeyPairsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeKeyPairsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeKeyPairsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2488
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeKeyPairsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeKeyPairsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeKeyPairsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeKeyPairsResult;

    return-object v1
.end method

.method public describeLicenses()Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3262
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeLicenses(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeLicenses(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;
    .locals 2
    .param p1, "describeLicensesRequest"    # Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 961
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeLicensesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeLicensesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeLicensesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 962
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeLicensesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeLicensesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeLicensesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeLicensesResult;

    return-object v1
.end method

.method public describePlacementGroups()Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3521
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describePlacementGroups(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;

    move-result-object v0

    return-object v0
.end method

.method public describePlacementGroups(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;
    .locals 2
    .param p1, "describePlacementGroupsRequest"    # Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1717
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribePlacementGroupsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribePlacementGroupsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribePlacementGroupsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1718
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribePlacementGroupsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribePlacementGroupsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribePlacementGroupsResult;

    return-object v1
.end method

.method public describeRegions()Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3148
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeRegions(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeRegions(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;
    .locals 2
    .param p1, "describeRegionsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 675
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeRegionsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeRegionsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeRegionsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 676
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeRegionsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeRegionsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeRegionsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeRegionsResult;

    return-object v1
.end method

.method public describeReservedInstances()Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3039
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeReservedInstances(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstances(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;
    .locals 2
    .param p1, "describeReservedInstancesRequest"    # Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 260
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesResult;

    return-object v1
.end method

.method public describeReservedInstancesListings()Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3376
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeReservedInstancesListings(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstancesListings(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;
    .locals 2
    .param p1, "describeReservedInstancesListingsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1294
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesListingsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesListingsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesListingsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1295
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesListingsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesListingsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesListingsResult;

    return-object v1
.end method

.method public describeReservedInstancesOfferings()Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3912
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeReservedInstancesOfferings(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeReservedInstancesOfferings(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;
    .locals 2
    .param p1, "describeReservedInstancesOfferingsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2672
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2673
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsResult;

    return-object v1
.end method

.method public describeSecurityGroups()Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3194
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSecurityGroups(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSecurityGroups(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;
    .locals 2
    .param p1, "describeSecurityGroupsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 780
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSecurityGroupsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSecurityGroupsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSecurityGroupsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 781
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSecurityGroupsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSecurityGroupsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeSecurityGroupsResult;

    return-object v1
.end method

.method public describeSnapshotAttribute(Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;
    .locals 2
    .param p1, "describeSnapshotAttributeRequest"    # Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2403
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2404
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotAttributeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotAttributeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeSnapshotAttributeResult;

    return-object v1
.end method

.method public describeSnapshots()Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 4013
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSnapshots(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSnapshots(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;
    .locals 2
    .param p1, "describeSnapshotsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2974
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2975
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsResult;

    return-object v1
.end method

.method public describeSpotDatafeedSubscription()Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3221
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotDatafeedSubscription(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;
    .locals 2
    .param p1, "describeSpotDatafeedSubscriptionRequest"    # Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 837
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotDatafeedSubscriptionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotDatafeedSubscriptionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotDatafeedSubscriptionRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 838
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotDatafeedSubscriptionResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotDatafeedSubscriptionResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionResult;

    return-object v1
.end method

.method public describeSpotInstanceRequests()Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3709
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSpotInstanceRequests(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotInstanceRequests(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;
    .locals 2
    .param p1, "describeSpotInstanceRequestsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2032
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotInstanceRequestsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotInstanceRequestsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotInstanceRequestsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2033
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotInstanceRequestsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotInstanceRequestsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;

    return-object v1
.end method

.method public describeSpotPriceHistory()Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3126
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSpotPriceHistory(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSpotPriceHistory(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;
    .locals 2
    .param p1, "describeSpotPriceHistoryRequest"    # Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 648
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 649
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryResult;

    return-object v1
.end method

.method public describeSubnets()Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3499
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeSubnets(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeSubnets(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;)Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;
    .locals 2
    .param p1, "describeSubnetsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1614
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSubnetsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSubnetsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSubnetsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1615
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeSubnetsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeSubnetsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSubnetsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeSubnetsResult;

    return-object v1
.end method

.method public describeTags()Lcom/amazonaws/services/ec2/model/DescribeTagsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3730
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeTags(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Lcom/amazonaws/services/ec2/model/DescribeTagsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeTags(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Lcom/amazonaws/services/ec2/model/DescribeTagsResult;
    .locals 2
    .param p1, "describeTagsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2188
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2189
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeTagsResult;

    return-object v1
.end method

.method public describeVolumeAttribute(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;
    .locals 2
    .param p1, "describeVolumeAttributeRequest"    # Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2162
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2163
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeAttributeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeAttributeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeVolumeAttributeResult;

    return-object v1
.end method

.method public describeVolumeStatus()Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3283
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeVolumeStatus(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;

    move-result-object v0

    return-object v0
.end method

.method public describeVolumeStatus(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;
    .locals 2
    .param p1, "describeVolumeStatusRequest"    # Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 988
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeStatusRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeStatusRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeStatusRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 989
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeStatusResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumeStatusResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeVolumeStatusResult;

    return-object v1
.end method

.method public describeVolumes()Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3358
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeVolumes(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeVolumes(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;)Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;
    .locals 2
    .param p1, "describeVolumesRequest"    # Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1270
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1271
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeVolumesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVolumesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeVolumesResult;

    return-object v1
.end method

.method public describeVpcs()Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3317
    new-instance v0, Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->describeVpcs(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeVpcs(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;
    .locals 2
    .param p1, "describeVpcsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1139
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVpcsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVpcsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVpcsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1140
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeVpcsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DescribeVpcsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DescribeVpcsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DescribeVpcsResult;

    return-object v1
.end method

.method public detachVolume(Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;)Lcom/amazonaws/services/ec2/model/DetachVolumeResult;
    .locals 2
    .param p1, "detachVolumeRequest"    # Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DetachVolumeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DetachVolumeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DetachVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 320
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DetachVolumeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DetachVolumeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/DetachVolumeResult;

    return-object v1
.end method

.method public disassociateAddress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3933
    new-instance v0, Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->disassociateAddress(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;)V

    .line 3934
    return-void
.end method

.method public disassociateAddress(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;)V
    .locals 2
    .param p1, "disassociateAddressRequest"    # Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2723
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/DisassociateAddressRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/DisassociateAddressRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/DisassociateAddressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2724
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DisassociateAddressRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 2725
    return-void
.end method

.method public enableVolumeIO(Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;)V
    .locals 2
    .param p1, "enableVolumeIORequest"    # Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 907
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/EnableVolumeIORequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/EnableVolumeIORequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/EnableVolumeIORequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 908
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/EnableVolumeIORequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 909
    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 4076
    iget-object v0, p0, Lcom/amazonaws/services/ec2/AmazonEC2Client;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getConsoleOutput(Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;)Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;
    .locals 2
    .param p1, "getConsoleOutputRequest"    # Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1464
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/GetConsoleOutputRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/GetConsoleOutputRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/GetConsoleOutputRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1465
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/GetConsoleOutputRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/GetConsoleOutputResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/GetConsoleOutputResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/GetConsoleOutputResult;

    return-object v1
.end method

.method public getPasswordData(Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;)Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;
    .locals 2
    .param p1, "getPasswordDataRequest"    # Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 488
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/GetPasswordDataRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/GetPasswordDataRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/GetPasswordDataRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 489
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/GetPasswordDataRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/GetPasswordDataResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/GetPasswordDataResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/GetPasswordDataResult;

    return-object v1
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4055
    const-string v0, "ec2"

    return-object v0
.end method

.method public importInstance(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Lcom/amazonaws/services/ec2/model/ImportInstanceResult;
    .locals 2
    .param p1, "importInstanceRequest"    # Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1394
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1395
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/ImportInstanceResult;

    return-object v1
.end method

.method public importKeyPair(Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;)Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;
    .locals 2
    .param p1, "importKeyPairRequest"    # Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 572
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ImportKeyPairRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ImportKeyPairRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ImportKeyPairRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 573
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ImportKeyPairResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ImportKeyPairResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/ImportKeyPairResult;

    return-object v1
.end method

.method public importVolume()Lcom/amazonaws/services/ec2/model/ImportVolumeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3166
    new-instance v0, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->importVolume(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Lcom/amazonaws/services/ec2/model/ImportVolumeResult;

    move-result-object v0

    return-object v0
.end method

.method public importVolume(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Lcom/amazonaws/services/ec2/model/ImportVolumeResult;
    .locals 2
    .param p1, "importVolumeRequest"    # Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 746
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 747
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ImportVolumeRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ImportVolumeResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/ImportVolumeResult;

    return-object v1
.end method

.method public modifyImageAttribute(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;)V
    .locals 2
    .param p1, "modifyImageAttributeRequest"    # Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1488
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ModifyImageAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ModifyImageAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifyImageAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1489
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1490
    return-void
.end method

.method public modifyInstanceAttribute(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;)V
    .locals 2
    .param p1, "modifyInstanceAttributeRequest"    # Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1934
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ModifyInstanceAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ModifyInstanceAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifyInstanceAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1935
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1936
    return-void
.end method

.method public modifySnapshotAttribute(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;)V
    .locals 2
    .param p1, "modifySnapshotAttributeRequest"    # Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2312
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ModifySnapshotAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ModifySnapshotAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifySnapshotAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2313
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 2314
    return-void
.end method

.method public modifyVolumeAttribute(Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;)V
    .locals 2
    .param p1, "modifyVolumeAttributeRequest"    # Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1777
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ModifyVolumeAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ModifyVolumeAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifyVolumeAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1778
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ModifyVolumeAttributeRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1779
    return-void
.end method

.method public monitorInstances(Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;)Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;
    .locals 2
    .param p1, "monitorInstancesRequest"    # Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1341
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/MonitorInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/MonitorInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/MonitorInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1342
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/MonitorInstancesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/MonitorInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/MonitorInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/MonitorInstancesResult;

    return-object v1
.end method

.method public purchaseReservedInstancesOffering(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;
    .locals 2
    .param p1, "purchaseReservedInstancesOfferingRequest"    # Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2288
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2289
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/PurchaseReservedInstancesOfferingResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/PurchaseReservedInstancesOfferingResult;

    return-object v1
.end method

.method public rebootInstances(Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;)V
    .locals 2
    .param p1, "rebootInstancesRequest"    # Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RebootInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RebootInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/RebootInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 232
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/RebootInstancesRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method public registerImage()Lcom/amazonaws/services/ec2/model/RegisterImageResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 4050
    new-instance v0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->registerImage(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Lcom/amazonaws/services/ec2/model/RegisterImageResult;

    move-result-object v0

    return-object v0
.end method

.method public registerImage(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Lcom/amazonaws/services/ec2/model/RegisterImageResult;
    .locals 2
    .param p1, "registerImageRequest"    # Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3016
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RegisterImageRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RegisterImageRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/RegisterImageRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RegisterImageRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 3017
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/RegisterImageRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RegisterImageResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RegisterImageResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/RegisterImageResult;

    return-object v1
.end method

.method public releaseAddress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3988
    new-instance v0, Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->releaseAddress(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;)V

    .line 3989
    return-void
.end method

.method public releaseAddress(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;)V
    .locals 2
    .param p1, "releaseAddressRequest"    # Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2892
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ReleaseAddressRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ReleaseAddressRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ReleaseAddressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2893
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ReleaseAddressRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 2894
    return-void
.end method

.method public reportInstanceStatus()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3391
    new-instance v0, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->reportInstanceStatus(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)V

    .line 3392
    return-void
.end method

.method public reportInstanceStatus(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)V
    .locals 2
    .param p1, "reportInstanceStatusRequest"    # Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1315
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ReportInstanceStatusRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ReportInstanceStatusRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ReportInstanceStatusRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1316
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1317
    return-void
.end method

.method public requestSpotInstances(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;)Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;
    .locals 2
    .param p1, "requestSpotInstancesRequest"    # Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2113
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2114
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;

    return-object v1
.end method

.method public resetImageAttribute(Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;)V
    .locals 2
    .param p1, "resetImageAttributeRequest"    # Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1040
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ResetImageAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ResetImageAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ResetImageAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1041
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ResetImageAttributeRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1042
    return-void
.end method

.method public resetInstanceAttribute(Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;)V
    .locals 2
    .param p1, "resetInstanceAttributeRequest"    # Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2916
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ResetInstanceAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ResetInstanceAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ResetInstanceAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2917
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ResetInstanceAttributeRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 2918
    return-void
.end method

.method public resetSnapshotAttribute(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)V
    .locals 2
    .param p1, "resetSnapshotAttributeRequest"    # Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 723
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/ResetSnapshotAttributeRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/ResetSnapshotAttributeRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/ResetSnapshotAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 724
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ResetSnapshotAttributeRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 725
    return-void
.end method

.method public revokeSecurityGroupIngress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 3446
    new-instance v0, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->revokeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)V

    .line 3447
    return-void
.end method

.method public revokeSecurityGroupIngress(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)V
    .locals 2
    .param p1, "revokeSecurityGroupIngressRequest"    # Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1431
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RevokeSecurityGroupIngressRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RevokeSecurityGroupIngressRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/RevokeSecurityGroupIngressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1432
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/RevokeSecurityGroupIngressRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1433
    return-void
.end method

.method public runInstances(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Lcom/amazonaws/services/ec2/model/RunInstancesResult;
    .locals 2
    .param p1, "runInstancesRequest"    # Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1689
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RunInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RunInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/RunInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1690
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/RunInstancesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/RunInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/RunInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/RunInstancesResult;

    return-object v1
.end method

.method public startInstances(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;)Lcom/amazonaws/services/ec2/model/StartInstancesResult;
    .locals 2
    .param p1, "startInstancesRequest"    # Lcom/amazonaws/services/ec2/model/StartInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1886
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/StartInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/StartInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/StartInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/StartInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1887
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/StartInstancesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/StartInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/StartInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/StartInstancesResult;

    return-object v1
.end method

.method public stopInstances(Lcom/amazonaws/services/ec2/model/StopInstancesRequest;)Lcom/amazonaws/services/ec2/model/StopInstancesResult;
    .locals 2
    .param p1, "stopInstancesRequest"    # Lcom/amazonaws/services/ec2/model/StopInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/StopInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/StopInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/StopInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/StopInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 527
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/StopInstancesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/StopInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/StopInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/StopInstancesResult;

    return-object v1
.end method

.method public terminateInstances(Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;)Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;
    .locals 2
    .param p1, "terminateInstancesRequest"    # Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 2345
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/TerminateInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/TerminateInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/TerminateInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 2346
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/TerminateInstancesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/TerminateInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/TerminateInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/TerminateInstancesResult;

    return-object v1
.end method

.method public unmonitorInstances(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;
    .locals 2
    .param p1, "unmonitorInstancesRequest"    # Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/UnmonitorInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/UnmonitorInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/ec2/model/transform/UnmonitorInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 370
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/UnmonitorInstancesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/ec2/model/transform/UnmonitorInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/ec2/model/transform/UnmonitorInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/ec2/AmazonEC2Client;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/ec2/model/UnmonitorInstancesResult;

    return-object v1
.end method
