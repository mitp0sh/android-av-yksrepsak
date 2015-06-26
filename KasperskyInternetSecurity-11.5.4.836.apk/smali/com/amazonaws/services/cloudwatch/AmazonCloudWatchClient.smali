.class public Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonCloudWatchClient.java"

# interfaces
.implements Lcom/amazonaws/services/cloudwatch/AmazonCloudWatch;


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
    .line 137
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 161
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 176
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 195
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 196
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 197
    invoke-direct {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->init()V

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 213
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 233
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    .line 234
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 235
    invoke-direct {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->init()V

    .line 236
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidNextTokenExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidNextTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidParameterCombinationExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidParameterCombinationExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidFormatExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidFormatExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/cloudwatch/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/cloudwatch/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/cloudwatch/model/transform/InternalServiceExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/cloudwatch/model/transform/InternalServiceExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/cloudwatch/model/transform/ResourceNotFoundExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/cloudwatch/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/cloudwatch/model/transform/MissingRequiredParameterExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/cloudwatch/model/transform/MissingRequiredParameterExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidParameterValueExceptionUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/services/cloudwatch/model/transform/InvalidParameterValueExceptionUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    new-instance v2, Lcom/amazonaws/transform/StandardErrorUnmarshaller;

    invoke-direct {v2}, Lcom/amazonaws/transform/StandardErrorUnmarshaller;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v1, "monitoring.amazonaws.com"

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->setEndpoint(Ljava/lang/String;)V

    .line 251
    new-instance v1, Lcom/amazonaws/auth/AWS4Signer;

    invoke-direct {v1}, Lcom/amazonaws/auth/AWS4Signer;-><init>()V

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    .line 253
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    const-string v2, "monitoring"

    invoke-virtual {v1, v2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 257
    .local v0, "chainFactory":Lcom/amazonaws/handlers/HandlerChainFactory;
    iget-object v1, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->requestHandlers:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/cloudwatch/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->newRequestHandlerChain(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
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
    .line 811
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TY;>;"
    .local p2, "unmarshaller":Lcom/amazonaws/transform/Unmarshaller;, "Lcom/amazonaws/transform/Unmarshaller<TX;Lcom/amazonaws/transform/StaxUnmarshallerContext;>;"
    iget-object v7, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->endpoint:Ljava/net/URI;

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 812
    iget v7, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->timeOffset:I

    invoke-interface {p1, v7}, Lcom/amazonaws/Request;->setTimeOffset(I)V

    .line 813
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

    .line 814
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->awsCredentialsProvider:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 818
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    .line 819
    .local v5, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 820
    invoke-virtual {v5}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 823
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->createExecutionContext()Lcom/amazonaws/http/ExecutionContext;

    move-result-object v3

    .line 824
    .local v3, "executionContext":Lcom/amazonaws/http/ExecutionContext;
    iget-object v7, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v3, v7}, Lcom/amazonaws/http/ExecutionContext;->setSigner(Lcom/amazonaws/auth/Signer;)V

    .line 825
    invoke-virtual {v3, v0}, Lcom/amazonaws/http/ExecutionContext;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 827
    new-instance v6, Lcom/amazonaws/http/StaxResponseHandler;

    invoke-direct {v6, p2}, Lcom/amazonaws/http/StaxResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 828
    .local v6, "responseHandler":Lcom/amazonaws/http/StaxResponseHandler;, "Lcom/amazonaws/http/StaxResponseHandler<TX;>;"
    new-instance v2, Lcom/amazonaws/http/DefaultErrorResponseHandler;

    iget-object v7, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->exceptionUnmarshallers:Ljava/util/List;

    invoke-direct {v2, v7}, Lcom/amazonaws/http/DefaultErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 830
    .local v2, "errorResponseHandler":Lcom/amazonaws/http/DefaultErrorResponseHandler;
    iget-object v7, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v7, p1, v6, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public deleteAlarms(Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;)V
    .locals 2
    .param p1, "deleteAlarmsRequest"    # Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 621
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DeleteAlarmsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DeleteAlarmsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DeleteAlarmsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 622
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 623
    return-void
.end method

.method public describeAlarmHistory()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 740
    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->describeAlarmHistory(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmHistory(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;
    .locals 2
    .param p1, "describeAlarmHistoryRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 572
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 573
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;>;"
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmHistoryResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;

    return-object v1
.end method

.method public describeAlarms()Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 712
    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->describeAlarms(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarms(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;
    .locals 2
    .param p1, "describeAlarmsRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 510
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 511
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;

    return-object v1
.end method

.method public describeAlarmsForMetric(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;
    .locals 2
    .param p1, "describeAlarmsForMetricRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 538
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 539
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;>;"
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;

    return-object v1
.end method

.method public disableAlarmActions(Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;)V
    .locals 2
    .param p1, "disableAlarmActionsRequest"    # Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/DisableAlarmActionsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/DisableAlarmActionsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DisableAlarmActionsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 481
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 482
    return-void
.end method

.method public enableAlarmActions(Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;)V
    .locals 2
    .param p1, "enableAlarmActionsRequest"    # Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 596
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/EnableAlarmActionsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/EnableAlarmActionsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/EnableAlarmActionsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 597
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 598
    return-void
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/http/AmazonHttpClient;->getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMetricStatistics(Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;)Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;
    .locals 2
    .param p1, "getMetricStatisticsRequest"    # Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 455
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;

    return-object v1
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    const-string v0, "monitoring"

    return-object v0
.end method

.method public listMetrics()Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 687
    new-instance v0, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->listMetrics(Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;)Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;

    move-result-object v0

    return-object v0
.end method

.method public listMetrics(Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;)Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;
    .locals 2
    .param p1, "listMetricsRequest"    # Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 383
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/ListMetricsRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/ListMetricsRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/ListMetricsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 384
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;>;"
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/ListMetricsResultStaxUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/ListMetricsResultStaxUnmarshaller;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;

    return-object v1
.end method

.method public putMetricAlarm(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)V
    .locals 2
    .param p1, "putMetricAlarmRequest"    # Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricAlarmRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricAlarmRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricAlarmRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 295
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 296
    return-void
.end method

.method public putMetricData(Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;)V
    .locals 2
    .param p1, "putMetricDataRequest"    # Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricDataRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricDataRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricDataRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 343
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 344
    return-void
.end method

.method public setAlarmState(Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)V
    .locals 2
    .param p1, "setAlarmStateRequest"    # Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 650
    new-instance v1, Lcom/amazonaws/services/cloudwatch/model/transform/SetAlarmStateRequestMarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/cloudwatch/model/transform/SetAlarmStateRequestMarshaller;-><init>()V

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/SetAlarmStateRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 651
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->invoke(Lcom/amazonaws/Request;Lcom/amazonaws/transform/Unmarshaller;)Ljava/lang/Object;

    .line 652
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
    .line 779
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->setEndpoint(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p2}, Lcom/amazonaws/auth/AWS4Signer;->setServiceName(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->signer:Lcom/amazonaws/auth/AWS4Signer;

    invoke-virtual {v0, p3}, Lcom/amazonaws/auth/AWS4Signer;->setRegionName(Ljava/lang/String;)V

    .line 782
    return-void
.end method
