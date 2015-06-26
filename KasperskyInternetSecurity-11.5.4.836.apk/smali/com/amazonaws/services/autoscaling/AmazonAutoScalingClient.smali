.class public Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonAutoScalingClient.java"

# interfaces
.implements Lcom/amazonaws/services/autoscaling/AmazonAutoScaling;


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
    .line 101
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 125
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 140
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 159
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 160
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 161
    invoke-direct {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->init()V

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 177
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 197
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 199
    invoke-direct {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->init()V

    .line 200
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/autoscaling/model/transform/InvalidNextTokenExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/autoscaling/model/transform/InvalidNextTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/autoscaling/model/transform/ScalingActivityInProgressExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/autoscaling/model/transform/ScalingActivityInProgressExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/autoscaling/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/autoscaling/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/autoscaling/model/transform/AlreadyExistsExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/autoscaling/model/transform/AlreadyExistsExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/autoscaling/model/transform/ResourceInUseExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/autoscaling/model/transform/ResourceInUseExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v1, "autoscaling.amazonaws.com"

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->setEndpoint(Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/amazonaws/auth/AWS4Signer;

    invoke-direct {v1}, Lcom/amazonaws/auth/AWS4Signer;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    .line 214
    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    const-string v2, "autoscaling"

    invoke-virtual {v1, v2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 218
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v1, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/autoscaling/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
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
    .line 1697
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TX;Lcom/amazonaws/transform/StaxUnmarshallerContext;>;"
    iget-object v7, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 1698
    iget v7, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->timeOffset:I

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 1699
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

    .line 1700
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1703
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 1704
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    .line 1705
    .local v5, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1706
    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 1709
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v3

    .line 1710
    .local v3, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    iget-object v7, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v3, v7}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 1711
    invoke-virtual {v3, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 1713
    new-instance v6, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v6, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1714
    .local v6, "responseHandler":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TX;>;"
    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v7, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v7}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 1716
    .local v2, "errorResponseHandler":Lcom/amazonaws/http/DefaultErrorResponseHandler;
    iget-object v7, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v7, p1, v6, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public createAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;)V
    .locals 2
    .param p1, "createAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/CreateAutoScalingGroupRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateAutoScalingGroupRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 434
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/CreateAutoScalingGroupRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 435
    return-void
.end method

.method public createLaunchConfiguration(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)V
    .locals 2
    .param p1, "createLaunchConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 945
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/CreateLaunchConfigurationRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateLaunchConfigurationRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateLaunchConfigurationRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 946
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/CreateLaunchConfigurationRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 947
    return-void
.end method

.method public createOrUpdateTags(Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;)V
    .locals 2
    .param p1, "createOrUpdateTagsRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 833
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/CreateOrUpdateTagsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateOrUpdateTagsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateOrUpdateTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 834
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 835
    return-void
.end method

.method public deleteAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;)V
    .locals 2
    .param p1, "deleteAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 977
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DeleteAutoScalingGroupRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteAutoScalingGroupRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 978
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DeleteAutoScalingGroupRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 979
    return-void
.end method

.method public deleteLaunchConfiguration(Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;)V
    .locals 2
    .param p1, "deleteLaunchConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DeleteLaunchConfigurationRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteLaunchConfigurationRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteLaunchConfigurationRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 343
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 344
    return-void
.end method

.method public deleteNotificationConfiguration(Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;)V
    .locals 2
    .param p1, "deleteNotificationConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DeleteNotificationConfigurationRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteNotificationConfigurationRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteNotificationConfigurationRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 725
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DeleteNotificationConfigurationRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 726
    return-void
.end method

.method public deletePolicy(Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;)V
    .locals 2
    .param p1, "deletePolicyRequest"    # Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 700
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DeletePolicyRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DeletePolicyRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeletePolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 701
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DeletePolicyRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 702
    return-void
.end method

.method public deleteScheduledAction(Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;)V
    .locals 2
    .param p1, "deleteScheduledActionRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 749
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DeleteScheduledActionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteScheduledActionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteScheduledActionRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 750
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DeleteScheduledActionRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 751
    return-void
.end method

.method public deleteTags(Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;)V
    .locals 2
    .param p1, "deleteTagsRequest"    # Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 616
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DeleteTagsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteTagsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DeleteTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 617
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DeleteTagsRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 618
    return-void
.end method

.method public describeAdjustmentTypes()Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1580
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeAdjustmentTypes(Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAdjustmentTypes(Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;
    .locals 2
    .param p1, "describeAdjustmentTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1114
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAdjustmentTypesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAdjustmentTypesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAdjustmentTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1115
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAdjustmentTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAdjustmentTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeAdjustmentTypesResult;

    return-object v1
.end method

.method public describeAutoScalingGroups()Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1320
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeAutoScalingGroups(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingGroups(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;
    .locals 2
    .param p1, "describeAutoScalingGroupsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingGroupsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingGroupsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingGroupsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 256
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingGroupsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingGroupsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingGroupsResult;

    return-object v1
.end method

.method public describeAutoScalingInstances()Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1531
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeAutoScalingInstances(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingInstances(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;
    .locals 2
    .param p1, "describeAutoScalingInstancesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 905
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingInstancesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingInstancesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 906
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingInstancesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingInstancesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingInstancesResult;

    return-object v1
.end method

.method public describeAutoScalingNotificationTypes()Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1501
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeAutoScalingNotificationTypes(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAutoScalingNotificationTypes(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;
    .locals 2
    .param p1, "describeAutoScalingNotificationTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 801
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingNotificationTypesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingNotificationTypesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingNotificationTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 802
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingNotificationTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeAutoScalingNotificationTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeAutoScalingNotificationTypesResult;

    return-object v1
.end method

.method public describeLaunchConfigurations()Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1558
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeLaunchConfigurations(Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeLaunchConfigurations(Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;
    .locals 2
    .param p1, "describeLaunchConfigurationsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1086
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeLaunchConfigurationsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeLaunchConfigurationsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeLaunchConfigurationsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1087
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeLaunchConfigurationsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeLaunchConfigurationsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeLaunchConfigurationsResult;

    return-object v1
.end method

.method public describeMetricCollectionTypes()Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1626
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeMetricCollectionTypes(Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeMetricCollectionTypes(Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;
    .locals 2
    .param p1, "describeMetricCollectionTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1200
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeMetricCollectionTypesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeMetricCollectionTypesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeMetricCollectionTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1201
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeMetricCollectionTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeMetricCollectionTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesResult;

    return-object v1
.end method

.method public describeNotificationConfigurations()Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1424
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeNotificationConfigurations(Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeNotificationConfigurations(Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;
    .locals 2
    .param p1, "describeNotificationConfigurationsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeNotificationConfigurationsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeNotificationConfigurationsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeNotificationConfigurationsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 503
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeNotificationConfigurationsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeNotificationConfigurationsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeNotificationConfigurationsResult;

    return-object v1
.end method

.method public describePolicies()Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1345
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describePolicies(Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;

    move-result-object v0

    return-object v0
.end method

.method public describePolicies(Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;
    .locals 2
    .param p1, "describePoliciesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 372
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribePoliciesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribePoliciesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribePoliciesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 373
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribePoliciesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribePoliciesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribePoliciesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribePoliciesResult;

    return-object v1
.end method

.method public describeScalingActivities()Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1401
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeScalingActivities(Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeScalingActivities(Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;
    .locals 2
    .param p1, "describeScalingActivitiesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 473
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingActivitiesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingActivitiesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingActivitiesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 474
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingActivitiesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingActivitiesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeScalingActivitiesResult;

    return-object v1
.end method

.method public describeScalingProcessTypes()Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1367
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeScalingProcessTypes(Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeScalingProcessTypes(Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;
    .locals 2
    .param p1, "describeScalingProcessTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingProcessTypesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingProcessTypesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingProcessTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 401
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingProcessTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScalingProcessTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeScalingProcessTypesResult;

    return-object v1
.end method

.method public describeScheduledActions()Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1604
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeScheduledActions(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeScheduledActions(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
    .locals 2
    .param p1, "describeScheduledActionsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1144
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1145
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;

    return-object v1
.end method

.method public describeTags()Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1479
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeTags(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeTags(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;
    .locals 2
    .param p1, "describeTagsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 568
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTagsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTagsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 569
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeTagsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTagsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTagsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeTagsResult;

    return-object v1
.end method

.method public describeTerminationPolicyTypes()Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1445
    new-instance v0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->describeTerminationPolicyTypes(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;

    move-result-object v0

    return-object v0
.end method

.method public describeTerminationPolicyTypes(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
    .locals 2
    .param p1, "describeTerminationPolicyTypesRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 529
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTerminationPolicyTypesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTerminationPolicyTypesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTerminationPolicyTypesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 530
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTerminationPolicyTypesResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeTerminationPolicyTypesResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;

    return-object v1
.end method

.method public disableMetricsCollection(Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;)V
    .locals 2
    .param p1, "disableMetricsCollectionRequest"    # Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1004
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/DisableMetricsCollectionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/DisableMetricsCollectionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DisableMetricsCollectionRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1005
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DisableMetricsCollectionRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1006
    return-void
.end method

.method public enableMetricsCollection(Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;)V
    .locals 2
    .param p1, "enableMetricsCollectionRequest"    # Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 288
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/EnableMetricsCollectionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/EnableMetricsCollectionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/EnableMetricsCollectionRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 289
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/EnableMetricsCollectionRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 290
    return-void
.end method

.method public executePolicy(Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;)V
    .locals 2
    .param p1, "executePolicyRequest"    # Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 593
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/ExecutePolicyRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/ExecutePolicyRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/ExecutePolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 594
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/ExecutePolicyRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 595
    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1672
    const-string v0, "autoscaling"

    return-object v0
.end method

.method public putNotificationConfiguration(Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;)V
    .locals 2
    .param p1, "putNotificationConfigurationRequest"    # Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 677
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/PutNotificationConfigurationRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/PutNotificationConfigurationRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/PutNotificationConfigurationRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 678
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/PutNotificationConfigurationRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 679
    return-void
.end method

.method public putScalingPolicy(Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;)Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;
    .locals 2
    .param p1, "putScalingPolicyRequest"    # Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 646
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/PutScalingPolicyRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/PutScalingPolicyRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/PutScalingPolicyRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 647
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/PutScalingPolicyResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/PutScalingPolicyResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/PutScalingPolicyResult;

    return-object v1
.end method

.method public putScheduledUpdateGroupAction(Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;)V
    .locals 2
    .param p1, "putScheduledUpdateGroupActionRequest"    # Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1172
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/PutScheduledUpdateGroupActionRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/PutScheduledUpdateGroupActionRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/PutScheduledUpdateGroupActionRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1173
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1174
    return-void
.end method

.method public resumeProcesses(Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;)V
    .locals 2
    .param p1, "resumeProcessesRequest"    # Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/ResumeProcessesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/ResumeProcessesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/ResumeProcessesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 313
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/ResumeProcessesRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 314
    return-void
.end method

.method public setDesiredCapacity(Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;)V
    .locals 2
    .param p1, "setDesiredCapacityRequest"    # Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1255
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/SetDesiredCapacityRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/SetDesiredCapacityRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/SetDesiredCapacityRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1256
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/SetDesiredCapacityRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1257
    return-void
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
    .line 1665
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->setEndpoint(Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    .line 1667
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p3}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    .line 1668
    return-void
.end method

.method public setInstanceHealth(Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;)V
    .locals 2
    .param p1, "setInstanceHealthRequest"    # Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 772
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/SetInstanceHealthRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/SetInstanceHealthRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/SetInstanceHealthRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 773
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/SetInstanceHealthRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 774
    return-void
.end method

.method public suspendProcesses(Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;)V
    .locals 2
    .param p1, "suspendProcessesRequest"    # Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 869
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/SuspendProcessesRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/SuspendProcessesRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/SuspendProcessesRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 870
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/SuspendProcessesRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 871
    return-void
.end method

.method public terminateInstanceInAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;
    .locals 2
    .param p1, "terminateInstanceInAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1289
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1290
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupRequest;>;"
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/TerminateInstanceInAutoScalingGroupResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/autoscaling/model/TerminateInstanceInAutoScalingGroupResult;

    return-object v1
.end method

.method public updateAutoScalingGroup(Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;)V
    .locals 2
    .param p1, "updateAutoScalingGroupRequest"    # Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1053
    new-instance v1, Lcom/amazonaws/services/autoscaling/model/transform/UpdateAutoScalingGroupRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/autoscaling/model/transform/UpdateAutoScalingGroupRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/autoscaling/model/transform/UpdateAutoScalingGroupRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1054
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/UpdateAutoScalingGroupRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/autoscaling/AmazonAutoScalingClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 1055
    return-void
.end method
