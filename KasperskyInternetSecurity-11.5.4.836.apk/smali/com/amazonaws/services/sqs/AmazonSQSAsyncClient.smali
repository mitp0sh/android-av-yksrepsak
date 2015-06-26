.class public Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;
.super Lcom/amazonaws/services/sqs/AmazonSQSClient;
.source "AmazonSQSAsyncClient.java"

# interfaces
.implements Lcom/amazonaws/services/sqs/AmazonSQSAsync;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 103
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 121
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 169
    iput-object p3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentials"    # Lcom/amazonaws/auth/AWSCredentials;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 143
    iput-object p2, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 188
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    .line 235
    iput-object p3, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "awsCredentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 209
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Ljava/util/concurrent/ExecutorService;)V

    .line 210
    return-void
.end method


# virtual methods
.method public addPermissionAsync(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "addPermissionRequest"    # Lcom/amazonaws/services/sqs/model/AddPermissionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/AddPermissionRequest;",
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
    .line 1472
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$27;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$27;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public addPermissionAsync(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "addPermissionRequest"    # Lcom/amazonaws/services/sqs/model/AddPermissionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/AddPermissionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/AddPermissionRequest;",
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
    .line 1526
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/AddPermissionRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$28;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/AddPermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public changeMessageVisibilityAsync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "changeMessageVisibilityRequest"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
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
    .line 468
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$5;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$5;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public changeMessageVisibilityAsync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "changeMessageVisibilityRequest"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
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
    .line 535
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$6;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public changeMessageVisibilityBatchAsync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "changeMessageVisibilityBatchRequest"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;",
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
    .line 362
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$3;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$3;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public changeMessageVisibilityBatchAsync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "changeMessageVisibilityBatchRequest"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;",
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
    .line 401
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$4;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createQueueAsync(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createQueueRequest"    # Lcom/amazonaws/services/sqs/model/CreateQueueRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/CreateQueueRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/CreateQueueResult;",
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
    .line 1367
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$25;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$25;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createQueueAsync(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "createQueueRequest"    # Lcom/amazonaws/services/sqs/model/CreateQueueRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/CreateQueueRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/CreateQueueRequest;",
            "Lcom/amazonaws/services/sqs/model/CreateQueueResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/CreateQueueResult;",
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
    .line 1418
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/CreateQueueRequest;Lcom/amazonaws/services/sqs/model/CreateQueueResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$26;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/CreateQueueRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessageAsync(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteMessageRequest"    # Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
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
    .line 1564
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$29;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$29;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessageAsync(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteMessageRequest"    # Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
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
    .line 1603
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$30;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessageBatchAsync(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteMessageBatchRequest"    # Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;",
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
    .line 1278
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$23;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$23;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessageBatchAsync(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteMessageBatchRequest"    # Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;",
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
    .line 1315
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$24;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteQueueAsync(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteQueueRequest"    # Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;",
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
    .line 942
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$15;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$15;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteQueueAsync(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "deleteQueueRequest"    # Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;",
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
    .line 984
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$16;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getQueueAttributesRequest"    # Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;",
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
    .line 754
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$11;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$11;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getQueueAttributesRequest"    # Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;",
            "Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;",
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
    .line 825
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$12;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getQueueUrlAsync(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getQueueUrlRequest"    # Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;",
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
    .line 571
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$7;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$7;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getQueueUrlAsync(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "getQueueUrlRequest"    # Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;",
            "Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;",
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
    .line 607
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$8;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listQueuesAsync(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listQueuesRequest"    # Lcom/amazonaws/services/sqs/model/ListQueuesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ListQueuesRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/ListQueuesResult;",
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
    .line 1205
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$21;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$21;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listQueuesAsync(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "listQueuesRequest"    # Lcom/amazonaws/services/sqs/model/ListQueuesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ListQueuesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/ListQueuesRequest;",
            "Lcom/amazonaws/services/sqs/model/ListQueuesResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/ListQueuesResult;",
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
    .line 1240
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/ListQueuesRequest;Lcom/amazonaws/services/sqs/model/ListQueuesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$22;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/ListQueuesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public receiveMessageAsync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "receiveMessageRequest"    # Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
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
    .line 1113
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$19;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$19;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public receiveMessageAsync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "receiveMessageRequest"    # Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
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
    .line 1169
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$20;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public removePermissionAsync(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "removePermissionRequest"    # Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;",
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
    .line 645
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$9;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$9;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public removePermissionAsync(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "removePermissionRequest"    # Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;",
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
    .line 683
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$10;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public sendMessageAsync(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "sendMessageRequest"    # Lcom/amazonaws/services/sqs/model/SendMessageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
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
    .line 1020
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$17;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$17;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/SendMessageRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public sendMessageAsync(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "sendMessageRequest"    # Lcom/amazonaws/services/sqs/model/SendMessageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
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
    .line 1056
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/model/SendMessageResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$18;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public sendMessageBatchAsync(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "sendMessageBatchRequest"    # Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;",
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
    .line 863
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$13;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$13;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public sendMessageBatchAsync(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "sendMessageBatchRequest"    # Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;",
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
    .line 900
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$14;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setQueueAttributesRequest"    # Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;",
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
    .line 285
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$1;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "setQueueAttributesRequest"    # Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;",
            "Lcom/amazonaws/handlers/AsyncHandler",
            "<",
            "Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;",
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
    .line 323
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient$2;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/amazonaws/services/sqs/AmazonSQSClient;->shutdown()V

    .line 259
    iget-object v0, p0, Lcom/amazonaws/services/sqs/AmazonSQSAsyncClient;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 260
    return-void
.end method
