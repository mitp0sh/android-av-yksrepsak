.class public Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonElasticLoadBalancingClient.java"

# interfaces
.implements Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancing;


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
    .line 104
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 128
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 143
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 162
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 163
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 164
    invoke-direct {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->init()V

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 180
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 200
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 202
    invoke-direct {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->init()V

    .line 203
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ListenerNotFoundExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ListenerNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SubnetNotFoundExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SubnetNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidConfigurationRequestExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidConfigurationRequestExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/TooManyPoliciesExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/TooManyPoliciesExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CertificateNotFoundExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CertificateNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSubnetExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSubnetExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSecurityGroupExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSecurityGroupExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerNotFoundExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/LoadBalancerNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyNotFoundExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicateListenerExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicateListenerExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/TooManyLoadBalancersExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/TooManyLoadBalancersExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyTypeNotFoundExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/PolicyTypeNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSchemeExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidSchemeExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidInstanceExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/InvalidInstanceExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicatePolicyNameExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicatePolicyNameExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicateLoadBalancerNameExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DuplicateLoadBalancerNameExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v1, "elasticloadbalancing.amazonaws.com"

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->setEndpoint(Ljava/lang/String;)V

    .line 226
    new-instance v1, Lcom/amazonaws/auth/AWS4Signer;

    invoke-direct {v1}, Lcom/amazonaws/auth/AWS4Signer;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    .line 229
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 230
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/elasticloadbalancing/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
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
    .line 1252
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TX;Lcom/amazonaws/transform/StaxUnmarshallerContext;>;"
    iget-object v7, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 1253
    iget v7, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->timeOffset:I

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 1254
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

    .line 1255
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1258
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 1259
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    .line 1260
    .local v5, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1261
    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 1264
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v3

    .line 1265
    .local v3, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    iget-object v7, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v3, v7}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 1266
    invoke-virtual {v3, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 1268
    new-instance v6, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v6, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1269
    .local v6, "responseHandler":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TX;>;"
    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v7, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v7}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 1271
    .local v2, "errorResponseHandler":Lcom/amazonaws/http/DefaultErrorResponseHandler;
    iget-object v7, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v7, p1, v6, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public applySecurityGroupsToLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;
    .locals 2
    .param p1, "applySecurityGroupsToLoadBalancerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1057
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ApplySecurityGroupsToLoadBalancerRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ApplySecurityGroupsToLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ApplySecurityGroupsToLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1058
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ApplySecurityGroupsToLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ApplySecurityGroupsToLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/ApplySecurityGroupsToLoadBalancerResult;

    return-object v1
.end method

.method public attachLoadBalancerToSubnets(Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsResult;
    .locals 2
    .param p1, "attachLoadBalancerToSubnetsRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 927
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/AttachLoadBalancerToSubnetsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/AttachLoadBalancerToSubnetsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/AttachLoadBalancerToSubnetsRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 928
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/AttachLoadBalancerToSubnetsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/AttachLoadBalancerToSubnetsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/AttachLoadBalancerToSubnetsResult;

    return-object v1
.end method

.method public configureHealthCheck(Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckResult;
    .locals 2
    .param p1, "configureHealthCheckRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 292
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 293
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/ConfigureHealthCheckResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/ConfigureHealthCheckResult;

    return-object v1
.end method

.method public createAppCookieStickinessPolicy(Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;
    .locals 2
    .param p1, "createAppCookieStickinessPolicyRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 978
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 979
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;

    return-object v1
.end method

.method public createLBCookieStickinessPolicy(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyResult;
    .locals 2
    .param p1, "createLBCookieStickinessPolicyRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 891
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLBCookieStickinessPolicyRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLBCookieStickinessPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLBCookieStickinessPolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 892
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLBCookieStickinessPolicyResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLBCookieStickinessPolicyResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLBCookieStickinessPolicyResult;

    return-object v1
.end method

.method public createLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerResult;
    .locals 2
    .param p1, "createLoadBalancerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 674
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 675
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerResult;

    return-object v1
.end method

.method public createLoadBalancerListeners(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;)V
    .locals 2
    .param p1, "createLoadBalancerListenersRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 618
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerListenersRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerListenersRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerListenersRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 619
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 620
    return-void
.end method

.method public createLoadBalancerPolicy(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyResult;
    .locals 2
    .param p1, "createLoadBalancerPolicyRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 547
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerPolicyRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerPolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 548
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerPolicyResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateLoadBalancerPolicyResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyResult;

    return-object v1
.end method

.method public deleteLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;)V
    .locals 2
    .param p1, "deleteLoadBalancerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 715
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 716
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 717
    return-void
.end method

.method public deleteLoadBalancerListeners(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;)V
    .locals 2
    .param p1, "deleteLoadBalancerListenersRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 776
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerListenersRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerListenersRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerListenersRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 777
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerListenersRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 778
    return-void
.end method

.method public deleteLoadBalancerPolicy(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;
    .locals 2
    .param p1, "deleteLoadBalancerPolicyRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 511
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 512
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeleteLoadBalancerPolicyResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyResult;

    return-object v1
.end method

.method public deregisterInstancesFromLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerResult;
    .locals 2
    .param p1, "deregisterInstancesFromLoadBalancerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 811
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 812
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DeregisterInstancesFromLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/DeregisterInstancesFromLoadBalancerResult;

    return-object v1
.end method

.method public describeInstanceHealth(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthResult;
    .locals 2
    .param p1, "describeInstanceHealthRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 481
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeInstanceHealthRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeInstanceHealthRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeInstanceHealthRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 482
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeInstanceHealthResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeInstanceHealthResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeInstanceHealthResult;

    return-object v1
.end method

.method public describeLoadBalancerPolicies()Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1150
    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->describeLoadBalancerPolicies(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeLoadBalancerPolicies(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;
    .locals 2
    .param p1, "describeLoadBalancerPoliciesRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 364
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPoliciesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPoliciesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPoliciesRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 365
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPoliciesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPoliciesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPoliciesResult;

    return-object v1
.end method

.method public describeLoadBalancerPolicyTypes()Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1121
    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->describeLoadBalancerPolicyTypes(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeLoadBalancerPolicyTypes(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;
    .locals 2
    .param p1, "describeLoadBalancerPolicyTypesRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPolicyTypesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPolicyTypesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPolicyTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 264
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPolicyTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancerPolicyTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;

    return-object v1
.end method

.method public describeLoadBalancers()Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1181
    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->describeLoadBalancers(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;

    move-result-object v0

    return-object v0
.end method

.method public describeLoadBalancers(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;
    .locals 2
    .param p1, "describeLoadBalancersRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1094
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancersRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancersRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancersRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1095
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancersResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DescribeLoadBalancersResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancersResult;

    return-object v1
.end method

.method public detachLoadBalancerFromSubnets(Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;
    .locals 2
    .param p1, "detachLoadBalancerFromSubnetsRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DetachLoadBalancerFromSubnetsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DetachLoadBalancerFromSubnetsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DetachLoadBalancerFromSubnetsRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 330
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DetachLoadBalancerFromSubnetsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DetachLoadBalancerFromSubnetsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/DetachLoadBalancerFromSubnetsResult;

    return-object v1
.end method

.method public disableAvailabilityZonesForLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerResult;
    .locals 2
    .param p1, "disableAvailabilityZonesForLoadBalancerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 445
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/DisableAvailabilityZonesForLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/DisableAvailabilityZonesForLoadBalancerResult;

    return-object v1
.end method

.method public enableAvailabilityZonesForLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerResult;
    .locals 2
    .param p1, "enableAvailabilityZonesForLoadBalancerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 587
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/EnableAvailabilityZonesForLoadBalancerRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/EnableAvailabilityZonesForLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/EnableAvailabilityZonesForLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 588
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/EnableAvailabilityZonesForLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/EnableAvailabilityZonesForLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerResult;

    return-object v1
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1227
    const-string v0, "elasticloadbalancing"

    return-object v0
.end method

.method public registerInstancesWithLoadBalancer(Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;
    .locals 2
    .param p1, "registerInstancesWithLoadBalancerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1025
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1026
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/RegisterInstancesWithLoadBalancerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/RegisterInstancesWithLoadBalancerResult;

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
    .line 1220
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->setEndpoint(Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p3}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    .line 1223
    return-void
.end method

.method public setLoadBalancerListenerSSLCertificate(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;)V
    .locals 2
    .param p1, "setLoadBalancerListenerSSLCertificateRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 842
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerListenerSSLCertificateRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerListenerSSLCertificateRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerListenerSSLCertificateRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 843
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerListenerSSLCertificateRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 844
    return-void
.end method

.method public setLoadBalancerPoliciesForBackendServer(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerResult;
    .locals 2
    .param p1, "setLoadBalancerPoliciesForBackendServerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 751
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesForBackendServerRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesForBackendServerRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesForBackendServerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 752
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesForBackendServerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesForBackendServerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerResult;

    return-object v1
.end method

.method public setLoadBalancerPoliciesOfListener(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerResult;
    .locals 2
    .param p1, "setLoadBalancerPoliciesOfListenerRequest"    # Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesOfListenerRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesOfListenerRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesOfListenerRequestMarshaller;->marshall(Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 397
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerRequest;>;"
    new-instance v1, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesOfListenerResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/SetLoadBalancerPoliciesOfListenerResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/elasticloadbalancing/AmazonElasticLoadBalancingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesOfListenerResult;

    return-object v1
.end method
