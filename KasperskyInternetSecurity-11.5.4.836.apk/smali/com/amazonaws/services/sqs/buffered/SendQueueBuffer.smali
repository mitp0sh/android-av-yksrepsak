.class public Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;
.super Ljava/lang/Object;
.source "SendQueueBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;,
        Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;,
        Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;,
        Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;,
        Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;
    }
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final changeMessageVisibilityLock:Ljava/lang/Object;

.field private final config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

.field private final deleteMessageLock:Ljava/lang/Object;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final inflightChangeMessageVisibilityBatches:Ljava/util/concurrent/Semaphore;

.field private final inflightDeleteMessageBatches:Ljava/util/concurrent/Semaphore;

.field private final inflightSendMessageBatches:Ljava/util/concurrent/Semaphore;

.field private final openChangeMessageVisibilityBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;

.field private final openDeleteMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;

.field private final openSendMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;

.field private final qUrl:Ljava/lang/String;

.field private final sendMessageLock:Ljava/lang/Object;

.field private final sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQS;Ljava/util/concurrent/Executor;Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;)V
    .locals 3
    .param p1, "sqsClient"    # Lcom/amazonaws/services/sqs/AmazonSQS;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "paramConfig"    # Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sendMessageLock:Ljava/lang/Object;

    .line 99
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->deleteMessageLock:Ljava/lang/Object;

    .line 104
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->changeMessageVisibilityLock:Ljava/lang/Object;

    .line 110
    new-array v2, v1, [Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;

    iput-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openSendMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;

    .line 116
    new-array v2, v1, [Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;

    iput-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openDeleteMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;

    .line 123
    new-array v2, v1, [Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;

    iput-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openChangeMessageVisibilityBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;

    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

    .line 143
    iput-object p2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->executor:Ljava/util/concurrent/Executor;

    .line 144
    iput-object p3, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    .line 145
    iput-object p4, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->qUrl:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v0

    .line 149
    .local v0, "maxBatch":I
    if-lez v0, :cond_0

    .line 151
    :goto_0
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightSendMessageBatches:Ljava/util/concurrent/Semaphore;

    .line 152
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightDeleteMessageBatches:Ljava/util/concurrent/Semaphore;

    .line 153
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightChangeMessageVisibilityBatches:Ljava/util/concurrent/Semaphore;

    .line 154
    return-void

    :cond_0
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method static synthetic access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->qUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

    return-object v0
.end method

.method private newOutboundBatchTask(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            "Result:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask",
            "<TR;TResult;>;"
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TR;"
    const/4 v1, 0x0

    .line 199
    instance-of v0, p1, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;)V

    .line 204
    :goto_0
    return-object v0

    .line 201
    :cond_0
    instance-of v0, p1, Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;)V

    goto :goto_0

    .line 203
    :cond_1
    instance-of v0, p1, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;

    if-eqz v0, :cond_2

    .line 204
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;)V

    goto :goto_0

    .line 207
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported request type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 6
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<",
            "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->changeMessageVisibilityLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openChangeMessageVisibilityBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;

    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightChangeMessageVisibilityBatches:Ljava/util/concurrent/Semaphore;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->submitOutboundRequest(Ljava/lang/Object;[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;Lcom/amazonaws/AmazonWebServiceRequest;Ljava/util/concurrent/Semaphore;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    return-object v0
.end method

.method public deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 6
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->deleteMessageLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openDeleteMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$DeleteMessageBatchTask;

    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightDeleteMessageBatches:Ljava/util/concurrent/Semaphore;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->submitOutboundRequest(Ljava/lang/Object;[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;Lcom/amazonaws/AmazonWebServiceRequest;Ljava/util/concurrent/Semaphore;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sendMessageLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightSendMessageBatches:Ljava/util/concurrent/Semaphore;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v3}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 223
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightSendMessageBatches:Ljava/util/concurrent/Semaphore;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v3}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 225
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->deleteMessageLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightDeleteMessageBatches:Ljava/util/concurrent/Semaphore;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v3}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 229
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightDeleteMessageBatches:Ljava/util/concurrent/Semaphore;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v3}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 231
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    :try_start_4
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->changeMessageVisibilityLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 233
    :try_start_5
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightChangeMessageVisibilityBatches:Ljava/util/concurrent/Semaphore;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v3}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 235
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightChangeMessageVisibilityBatches:Ljava/util/concurrent/Semaphore;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v3}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightOutboundBatches()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 237
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 241
    :goto_0
    return-void

    .line 225
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 231
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 237
    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
.end method

.method public getConfig()Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    return-object v0
.end method

.method public sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 7
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/SendMessageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
            ">;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/model/SendMessageResult;>;"
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sendMessageLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->openSendMessageBatchTask:[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;

    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->inflightSendMessageBatches:Ljava/util/concurrent/Semaphore;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->submitOutboundRequest(Ljava/lang/Object;[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;Lcom/amazonaws/AmazonWebServiceRequest;Ljava/util/concurrent/Semaphore;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v6

    .line 167
    .local v6, "result":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/model/SendMessageResult;>;"
    return-object v6
.end method

.method submitOutboundRequest(Ljava/lang/Object;[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;Lcom/amazonaws/AmazonWebServiceRequest;Ljava/util/concurrent/Semaphore;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 7
    .param p1, "operationLock"    # Ljava/lang/Object;
    .param p4, "inflightOperationBatches"    # Ljava/util/concurrent/Semaphore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OBT:",
            "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask",
            "<TR;TResult;>;R:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[TOBT;TR;",
            "Ljava/util/concurrent/Semaphore;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<TR;TResult;>;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<TR;TResult;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, "openOutboundBatchTask":[Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "[TOBT;"
    .local p3, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TR;"
    .local p5, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<TR;TResult;>;"
    const/4 v2, 0x0

    .line 277
    .local v2, "theFuture":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TR;TResult;>;"
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, p2, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4, p3, p5}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->addRequest(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v2

    if-nez v2, :cond_2

    .line 279
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->newOutboundBatchTask(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;

    move-result-object v1

    .line 280
    .local v1, "obt":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "TOBT;"
    invoke-virtual {p4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 281
    const/4 v4, 0x0

    aput-object v1, p2, v4

    .line 284
    const/4 v4, 0x0

    aget-object v4, p2, v4

    new-instance v5, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;

    invoke-direct {v5, p0, p4}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Ljava/util/concurrent/Semaphore;)V

    iput-object v5, v4, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->onCompleted:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;

    .line 290
    sget-object v4, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    sget-object v4, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Queue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->qUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " created new batch for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " free slots remain"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 296
    :cond_1
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4, p3, p5}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->addRequest(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v2

    .line 297
    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->executor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 298
    if-nez v2, :cond_2

    .line 302
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to schedule request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for execution"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    .end local v1    # "obt":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "TOBT;"
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 309
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    const-string v4, "Interrupted while waiting for lock."

    invoke-direct {v3, v4}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 310
    .local v3, "toThrow":Lcom/amazonaws/AmazonClientException;
    invoke-virtual {v3, v0}, Lcom/amazonaws/AmazonClientException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 311
    throw v3

    .line 305
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "toThrow":Lcom/amazonaws/AmazonClientException;
    :cond_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    return-object v2
.end method
