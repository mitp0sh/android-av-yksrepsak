.class public Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;
.super Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;
.source "AmazonCloudWatchAsyncClient.java"

# interfaces
.implements Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsync;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 147
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 165
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 213
    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 187
    iput-object p2, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 188
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 232
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 279
    iput-object p3, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 280
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 253
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 254
    return-void
.end method


# virtual methods
.method public deleteAlarmsAsync(Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteAlarmsRequest"    # Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$19;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteAlarmsAsync(Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteAlarmsRequest"    # Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1212
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$20;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DeleteAlarmsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmHistoryAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAlarmHistoryRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$15;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmHistoryAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAlarmHistoryRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1065
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$16;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmsAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAlarmsRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$11;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmsAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAlarmsRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 903
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$12;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmsForMetricAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAlarmsForMetricRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 942
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$13;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public describeAlarmsForMetricAsync(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "describeAlarmsForMetricRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 980
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$14;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public disableAlarmActionsAsync(Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "disableAlarmActionsRequest"    # Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$9;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public disableAlarmActionsAsync(Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "disableAlarmActionsRequest"    # Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 827
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$10;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/DisableAlarmActionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public enableAlarmActionsAsync(Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "enableAlarmActionsRequest"    # Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$17;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public enableAlarmActionsAsync(Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "enableAlarmActionsRequest"    # Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1139
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$18;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/EnableAlarmActionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getMetricStatisticsAsync(Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getMetricStatisticsRequest"    # Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$7;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getMetricStatisticsAsync(Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getMetricStatisticsRequest"    # Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 749
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$8;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listMetricsAsync(Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listMetricsRequest"    # Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$5;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listMetricsAsync(Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listMetricsRequest"    # Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 596
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;Lcom/amazonaws/services/cloudwatch/model/ListMetricsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$6;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/ListMetricsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putMetricAlarmAsync(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putMetricAlarmRequest"    # Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$1;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putMetricAlarmAsync(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putMetricAlarmRequest"    # Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 387
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$2;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putMetricDataAsync(Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putMetricDataRequest"    # Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$3;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public putMetricDataAsync(Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "putMetricDataRequest"    # Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 500
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$4;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setAlarmStateAsync(Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setAlarmStateRequest"    # Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$21;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$21;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setAlarmStateAsync(Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setAlarmStateRequest"    # Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 1291
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient$22;-><init>(Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchClient;->shutdown()V

    .line 303
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/AmazonCloudWatchAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 304
    return-void
.end method
