.class public Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;
.super Ljava/lang/Object;
.source "AmazonSQSBufferedAsyncClient.java"

# interfaces
.implements Lcom/amazonaws/services/sqs/AmazonSQSAsync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;
    }
.end annotation


# static fields
.field public static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private final bufferConfigExemplar:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

.field private final buffers:Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;

.field private final realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQSAsync;)V
    .locals 1
    .param p1, "paramRealSQS"    # Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    .prologue
    .line 92
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-direct {v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;-><init>(Lcom/amazonaws/services/sqs/AmazonSQSAsync;Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQSAsync;Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;)V
    .locals 4
    .param p1, "paramRealSQS"    # Lcom/amazonaws/services/sqs/AmazonSQSAsync;
    .param p2, "config"    # Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;-><init>(Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;IFZ)V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->buffers:Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;

    .line 98
    invoke-virtual {p2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->validate()V

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    .line 100
    iput-object p2, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->bufferConfigExemplar:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    .line 101
    return-void
.end method

.method private declared-synchronized getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    .locals 3
    .param p1, "qUrl"    # Ljava/lang/String;

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->buffers:Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    .line 393
    .local v1, "toReturn":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    if-nez v1, :cond_0

    .line 394
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->bufferConfigExemplar:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-direct {v0, v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;)V

    .line 395
    .local v0, "config":Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    new-instance v1, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    .end local v1    # "toReturn":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-direct {v1, v0, p1, v2}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;Lcom/amazonaws/services/sqs/AmazonSQSAsync;)V

    .line 396
    .restart local v1    # "toReturn":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->buffers:Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;

    invoke-virtual {v2, p1, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v0    # "config":Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 392
    .end local v1    # "toReturn":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public addPermission(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)V
    .locals 1
    .param p1, "addPermissionRequest"    # Lcom/amazonaws/services/sqs/model/AddPermissionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 356
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 357
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->addPermission(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)V

    .line 358
    return-void
.end method

.method public addPermissionAsync(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 349
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 350
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->addPermissionAsync(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public addPermissionAsync(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 533
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/AddPermissionRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->addPermissionAsync(Lcom/amazonaws/services/sqs/model/AddPermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)V
    .locals 2
    .param p1, "changeMessageVisibilityRequest"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 131
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 132
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 133
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->changeMessageVisibilitySync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)V

    .line 134
    return-void
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
    .line 198
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 199
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 200
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
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
    .line 420
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Ljava/lang/Void;>;"
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 421
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 422
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public changeMessageVisibilityBatch(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;
    .locals 1
    .param p1, "changeMessageVisibilityBatchRequest"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->changeMessageVisibilityBatch(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;

    move-result-object v0

    return-object v0
.end method

.method public changeMessageVisibilityBatchAsync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 190
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 191
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->changeMessageVisibilityBatchAsync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public changeMessageVisibilityBatchAsync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 466
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->changeMessageVisibilityBatchAsync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createQueue(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Lcom/amazonaws/services/sqs/model/CreateQueueResult;
    .locals 1
    .param p1, "createQueueRequest"    # Lcom/amazonaws/services/sqs/model/CreateQueueRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 341
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 342
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->createQueue(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Lcom/amazonaws/services/sqs/model/CreateQueueResult;

    move-result-object v0

    return-object v0
.end method

.method public createQueueAsync(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 334
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 335
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->createQueueAsync(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public createQueueAsync(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 526
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/CreateQueueRequest;Lcom/amazonaws/services/sqs/model/CreateQueueResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->createQueueAsync(Lcom/amazonaws/services/sqs/model/CreateQueueRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;)V
    .locals 2
    .param p1, "deleteMessageRequest"    # Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 173
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 174
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 175
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->deleteMessageSync(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;)V

    .line 176
    return-void
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
    .line 378
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 379
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 380
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
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
    .line 449
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Ljava/lang/Void;>;"
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 450
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 451
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public deleteMessageBatch(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;
    .locals 1
    .param p1, "deleteMessageBatchRequest"    # Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 167
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->deleteMessageBatch(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessageBatchAsync(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 236
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->deleteMessageBatchAsync(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessageBatchAsync(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 518
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->deleteMessageBatchAsync(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteQueue(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;)V
    .locals 1
    .param p1, "deleteQueueRequest"    # Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 312
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->deleteQueue(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;)V

    .line 313
    return-void
.end method

.method public deleteQueueAsync(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 304
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 305
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->deleteQueueAsync(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public deleteQueueAsync(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 504
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->deleteQueueAsync(Lcom/amazonaws/services/sqs/model/DeleteQueueRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 370
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 371
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->getCachedResponseMetadata(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getQueueAttributes(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;
    .locals 1
    .param p1, "getQueueAttributesRequest"    # Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 297
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 298
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->getQueueAttributes(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;

    move-result-object v0

    return-object v0
.end method

.method public getQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 289
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 290
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->getQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 489
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->getQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getQueueUrl(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;
    .locals 1
    .param p1, "getQueueUrlRequest"    # Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 275
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->getQueueUrl(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;

    move-result-object v0

    return-object v0
.end method

.method public getQueueUrlAsync(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 259
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 260
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->getQueueUrlAsync(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getQueueUrlAsync(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 474
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;Lcom/amazonaws/services/sqs/model/GetQueueUrlResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->getQueueUrlAsync(Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listQueues()Lcom/amazonaws/services/sqs/model/ListQueuesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->listQueues()Lcom/amazonaws/services/sqs/model/ListQueuesResult;

    move-result-object v0

    return-object v0
.end method

.method public listQueues(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Lcom/amazonaws/services/sqs/model/ListQueuesResult;
    .locals 1
    .param p1, "listQueuesRequest"    # Lcom/amazonaws/services/sqs/model/ListQueuesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 327
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->listQueues(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Lcom/amazonaws/services/sqs/model/ListQueuesResult;

    move-result-object v0

    return-object v0
.end method

.method public listQueuesAsync(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 319
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 320
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->listQueuesAsync(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public listQueuesAsync(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 511
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/ListQueuesRequest;Lcom/amazonaws/services/sqs/model/ListQueuesResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->listQueuesAsync(Lcom/amazonaws/services/sqs/model/ListQueuesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public receiveMessage(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;
    .locals 2
    .param p1, "receiveMessageRequest"    # Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 157
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 158
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 159
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveMessageSync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;

    move-result-object v1

    return-object v1
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
    .line 226
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 227
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 228
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveMessage(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
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
    .line 439
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 440
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 441
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveMessage(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public removePermission(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)V
    .locals 1
    .param p1, "removePermissionRequest"    # Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 282
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->removePermission(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)V

    .line 283
    return-void
.end method

.method public removePermissionAsync(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 267
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 268
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->removePermissionAsync(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public removePermissionAsync(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 481
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->removePermissionAsync(Lcom/amazonaws/services/sqs/model/RemovePermissionRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Lcom/amazonaws/services/sqs/model/SendMessageResult;
    .locals 2
    .param p1, "sendMessageRequest"    # Lcom/amazonaws/services/sqs/model/SendMessageRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 149
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 150
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendMessageSync(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Lcom/amazonaws/services/sqs/model/SendMessageResult;

    move-result-object v1

    return-object v1
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
    .line 216
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 217
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 218
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
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
    .line 429
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/model/SendMessageResult;>;"
    sget-object v1, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 430
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->getQBuffer(Ljava/lang/String;)Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    move-result-object v0

    .line 431
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public sendMessageBatch(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    .locals 1
    .param p1, "sendMessageBatchRequest"    # Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->sendMessageBatch(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;

    move-result-object v0

    return-object v0
.end method

.method public sendMessageBatchAsync(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 208
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 209
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->sendMessageBatchAsync(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public sendMessageBatchAsync(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 497
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->sendMessageBatchAsync(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->setEndpoint(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setQueueAttributes(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)V
    .locals 1
    .param p1, "setQueueAttributesRequest"    # Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 115
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->setQueueAttributes(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)V

    .line 117
    return-void
.end method

.method public setQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 251
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 252
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->setQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 458
    .local p2, "asyncHandler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1, p2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->setQueueAttributesAsync(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setRegion(Lcom/amazonaws/regions/Region;)V
    .locals 1
    .param p1, "region"    # Lcom/amazonaws/regions/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v0, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->setRegion(Lcom/amazonaws/regions/Region;)V

    .line 110
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 180
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->buffers:Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient$CachingMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    .line 181
    .local v0, "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->shutdown()V

    goto :goto_0

    .line 183
    .end local v0    # "buffer":Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->realSQS:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v2}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->shutdown()V

    .line 184
    return-void
.end method
