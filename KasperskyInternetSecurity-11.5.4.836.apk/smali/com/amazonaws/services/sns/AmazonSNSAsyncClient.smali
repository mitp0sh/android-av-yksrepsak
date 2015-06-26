.class public Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;
.super Lcom/amazonaws/services/sns/AmazonSNSClient;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Lcom/amazonaws/services/sns/AmazonSNSAsync;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 100
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 118
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 166
    iput-object p3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 140
    iput-object p2, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 185
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 232
    iput-object p3, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 233
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 206
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 207
    return-void
.end method


# virtual methods
.method public addPermissionAsync(Lcom/amazonaws/services/sns/model/AddPermissionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "addPermissionRequest"    # Lcom/amazonaws/services/sns/model/AddPermissionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/AddPermissionRequest;",
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
    .line 898
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$17;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/AddPermissionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public addPermissionAsync(Lcom/amazonaws/services/sns/model/AddPermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "addPermissionRequest"    # Lcom/amazonaws/services/sns/model/AddPermissionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/AddPermissionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/AddPermissionRequest;",
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
    .line 936
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/AddPermissionRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$18;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/AddPermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public confirmSubscriptionAsync(Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "confirmSubscriptionRequest"    # Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/ConfirmSubscriptionResult;",
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
    .line 285
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$1;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public confirmSubscriptionAsync(Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "confirmSubscriptionRequest"    # Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;",
            "Lcom/amazonaws/services/sns/model/ConfirmSubscriptionResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/ConfirmSubscriptionResult;",
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
    .line 325
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;Lcom/amazonaws/services/sns/model/ConfirmSubscriptionResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$2;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/ConfirmSubscriptionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createTopicAsync(Lcom/amazonaws/services/sns/model/CreateTopicRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createTopicRequest"    # Lcom/amazonaws/services/sns/model/CreateTopicRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/CreateTopicRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/CreateTopicResult;",
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
    .line 976
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$19;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/CreateTopicRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createTopicAsync(Lcom/amazonaws/services/sns/model/CreateTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createTopicRequest"    # Lcom/amazonaws/services/sns/model/CreateTopicRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/CreateTopicRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/CreateTopicRequest;",
            "Lcom/amazonaws/services/sns/model/CreateTopicResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/CreateTopicResult;",
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
    .line 1016
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/CreateTopicRequest;Lcom/amazonaws/services/sns/model/CreateTopicResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$20;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/CreateTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteTopicAsync(Lcom/amazonaws/services/sns/model/DeleteTopicRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteTopicRequest"    # Lcom/amazonaws/services/sns/model/DeleteTopicRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/DeleteTopicRequest;",
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
    .line 592
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$9;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/DeleteTopicRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteTopicAsync(Lcom/amazonaws/services/sns/model/DeleteTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteTopicRequest"    # Lcom/amazonaws/services/sns/model/DeleteTopicRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/DeleteTopicRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/DeleteTopicRequest;",
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
    .line 632
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/DeleteTopicRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$10;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/DeleteTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getSubscriptionAttributesAsync(Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getSubscriptionAttributesRequest"    # Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;",
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
    .line 1054
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$21;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$21;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionAttributesAsync(Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getSubscriptionAttributesRequest"    # Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;",
            "Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;",
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
    .line 1091
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$22;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/GetSubscriptionAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getTopicAttributesAsync(Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getTopicAttributesRequest"    # Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;",
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
    .line 363
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$3;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getTopicAttributesAsync(Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getTopicAttributesRequest"    # Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;",
            "Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;",
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
    .line 400
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;Lcom/amazonaws/services/sns/model/GetTopicAttributesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$4;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/GetTopicAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptionsAsync(Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listSubscriptionsRequest"    # Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;",
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
    .line 745
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$13;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptionsAsync(Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listSubscriptionsRequest"    # Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;",
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
    .line 785
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;Lcom/amazonaws/services/sns/model/ListSubscriptionsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$14;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/ListSubscriptionsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptionsByTopicAsync(Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listSubscriptionsByTopicRequest"    # Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;",
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
    .line 1297
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$27;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$27;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptionsByTopicAsync(Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listSubscriptionsByTopicRequest"    # Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;",
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
    .line 1338
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$28;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/ListSubscriptionsByTopicRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listTopicsAsync(Lcom/amazonaws/services/sns/model/ListTopicsRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listTopicsRequest"    # Lcom/amazonaws/services/sns/model/ListTopicsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/ListTopicsRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/ListTopicsResult;",
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
    .line 1131
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$23;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$23;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/ListTopicsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listTopicsAsync(Lcom/amazonaws/services/sns/model/ListTopicsRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listTopicsRequest"    # Lcom/amazonaws/services/sns/model/ListTopicsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/ListTopicsRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/ListTopicsRequest;",
            "Lcom/amazonaws/services/sns/model/ListTopicsResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/ListTopicsResult;",
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
    .line 1170
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/ListTopicsRequest;Lcom/amazonaws/services/sns/model/ListTopicsResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$24;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/ListTopicsRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public publishAsync(Lcom/amazonaws/services/sns/model/PublishRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "publishRequest"    # Lcom/amazonaws/services/sns/model/PublishRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/PublishRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/PublishResult;",
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
    .line 1379
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$29;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$29;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/PublishRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public publishAsync(Lcom/amazonaws/services/sns/model/PublishRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "publishRequest"    # Lcom/amazonaws/services/sns/model/PublishRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/PublishRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/PublishRequest;",
            "Lcom/amazonaws/services/sns/model/PublishResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/PublishResult;",
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
    .line 1419
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/PublishRequest;Lcom/amazonaws/services/sns/model/PublishResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$30;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/PublishRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public removePermissionAsync(Lcom/amazonaws/services/sns/model/RemovePermissionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "removePermissionRequest"    # Lcom/amazonaws/services/sns/model/RemovePermissionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/RemovePermissionRequest;",
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
    .line 668
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$11;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/RemovePermissionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public removePermissionAsync(Lcom/amazonaws/services/sns/model/RemovePermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "removePermissionRequest"    # Lcom/amazonaws/services/sns/model/RemovePermissionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/RemovePermissionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/RemovePermissionRequest;",
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
    .line 705
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/RemovePermissionRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$12;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/RemovePermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setSubscriptionAttributesAsync(Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setSubscriptionAttributesRequest"    # Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;",
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
    .line 823
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$15;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setSubscriptionAttributesAsync(Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setSubscriptionAttributesRequest"    # Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;",
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
    .line 861
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$16;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/SetSubscriptionAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setTopicAttributesAsync(Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setTopicAttributesRequest"    # Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;",
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
    .line 516
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$7;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setTopicAttributesAsync(Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setTopicAttributesRequest"    # Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;",
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
    .line 553
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$8;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/SetTopicAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/amazonaws/services/sns/AmazonSNSClient;->shutdown()V

    .line 256
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 257
    return-void
.end method

.method public subscribeAsync(Lcom/amazonaws/services/sns/model/SubscribeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "subscribeRequest"    # Lcom/amazonaws/services/sns/model/SubscribeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/SubscribeRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/SubscribeResult;",
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
    .line 440
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$5;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/SubscribeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public subscribeAsync(Lcom/amazonaws/services/sns/model/SubscribeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "subscribeRequest"    # Lcom/amazonaws/services/sns/model/SubscribeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/SubscribeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/SubscribeRequest;",
            "Lcom/amazonaws/services/sns/model/SubscribeResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sns/model/SubscribeResult;",
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
    .line 479
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/SubscribeRequest;Lcom/amazonaws/services/sns/model/SubscribeResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$6;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/SubscribeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeAsync(Lcom/amazonaws/services/sns/model/UnsubscribeRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "unsubscribeRequest"    # Lcom/amazonaws/services/sns/model/UnsubscribeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/UnsubscribeRequest;",
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
    .line 1213
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$25;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$25;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/UnsubscribeRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeAsync(Lcom/amazonaws/services/sns/model/UnsubscribeRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "unsubscribeRequest"    # Lcom/amazonaws/services/sns/model/UnsubscribeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sns/model/UnsubscribeRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sns/model/UnsubscribeRequest;",
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
    .line 1256
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sns/model/UnsubscribeRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sns/AmazonSNSAsyncClient$26;-><init>(Lcom/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazonaws/services/sns/model/UnsubscribeRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
