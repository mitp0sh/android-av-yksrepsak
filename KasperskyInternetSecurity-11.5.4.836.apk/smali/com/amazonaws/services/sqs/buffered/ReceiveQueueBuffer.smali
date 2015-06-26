.class public Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;
.super Ljava/lang/Object;
.source "ReceiveQueueBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;,
        Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;
    }
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private bufferCounter:J

.field private final config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

.field private final executor:Ljava/util/concurrent/Executor;

.field private finishedTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;",
            ">;"
        }
    .end annotation
.end field

.field private final futures:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;",
            ">;"
        }
    .end annotation
.end field

.field private volatile inflightReceiveMessageBatches:I

.field private final qUrl:Ljava/lang/String;

.field volatile shutDown:Z

.field private final sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

.field private final taskSpawnSyncPoint:Ljava/lang/Object;

.field private volatile visibilityTimeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/sqs/AmazonSQS;Ljava/util/concurrent/Executor;Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;)V
    .locals 2
    .param p1, "paramSQS"    # Lcom/amazonaws/services/sqs/AmazonSQS;
    .param p2, "paramExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "paramConfig"    # Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->bufferCounter:J

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->visibilityTimeoutNanos:J

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->taskSpawnSyncPoint:Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->shutDown:Z

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    .line 100
    iput-object p3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    .line 101
    iput-object p2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->executor:Ljava/util/concurrent/Executor;

    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

    .line 103
    iput-object p4, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)J
    .locals 2
    .param p0, "x0"    # Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->visibilityTimeoutNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    return-object v0
.end method

.method private fillFuture(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;)V
    .locals 8
    .param p1, "f"    # Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;

    .prologue
    .line 192
    new-instance v4, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;

    invoke-direct {v4}, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;-><init>()V

    .line 193
    .local v4, "r":Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 194
    .local v3, "messages":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/amazonaws/services/sqs/model/Message;>;"
    invoke-virtual {v4, v3}, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;->setMessages(Ljava/util/Collection;)V

    .line 195
    const/4 v1, 0x0

    .line 197
    .local v1, "exception":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 198
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;

    .line 200
    .local v6, "t":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    invoke-virtual {v6}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 201
    const/4 v5, 0x0

    .line 203
    .local v5, "retrieved":I
    const/4 v0, 0x0

    .line 204
    .local v0, "batchDone":Z
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;->getRequestedSize()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 206
    invoke-virtual {v6}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->removeMessage()Lcom/amazonaws/services/sqs/model/Message;

    move-result-object v2

    .line 210
    .local v2, "m":Lcom/amazonaws/services/sqs/model/Message;
    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_0
    const/4 v0, 0x1

    .line 222
    .end local v2    # "m":Lcom/amazonaws/services/sqs/model/Message;
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v6}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v1, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 224
    :goto_1
    if-eqz v0, :cond_3

    .line 225
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 227
    :cond_3
    invoke-virtual {v4, v3}, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;->setMessages(Ljava/util/Collection;)V

    .line 235
    .end local v0    # "batchDone":Z
    .end local v5    # "retrieved":I
    .end local v6    # "t":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    :cond_4
    if-eqz v1, :cond_7

    .line 236
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;->setFailure(Ljava/lang/Exception;)V

    .line 243
    :goto_2
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 244
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;

    .line 245
    .restart local v6    # "t":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    invoke-virtual {v6}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 254
    .end local v6    # "t":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    :cond_5
    return-void

    .line 222
    .restart local v0    # "batchDone":Z
    .restart local v5    # "retrieved":I
    .restart local v6    # "t":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 238
    .end local v0    # "batchDone":Z
    .end local v5    # "retrieved":I
    .end local v6    # "t":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    :cond_7
    invoke-virtual {p1, v4}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;->setSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 252
    .restart local v6    # "t":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    :cond_8
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_2
.end method

.method private issueFuture(ILcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
            ">;)",
            "Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    monitor-enter v2

    .line 159
    :try_start_0
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;-><init>(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;I)V

    .line 160
    .local v0, "theFuture":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 161
    monitor-exit v2

    return-object v0

    .line 162
    .end local v0    # "theFuture":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private satisfyFuturesFromBuffer()V
    .locals 4

    .prologue
    .line 171
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->futures:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;

    .line 177
    .local v0, "currentFuture":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;
    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->fillFuture(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;)V

    goto :goto_0

    .line 179
    .end local v0    # "currentFuture":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 180
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 179
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 181
    return-void
.end method

.method private spawnMoreReceiveTasks()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    .line 263
    iget-boolean v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->shutDown:Z

    if-eqz v7, :cond_0

    .line 307
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v7}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxDoneReceiveBatches()I

    move-result v0

    .line 267
    .local v0, "desiredBatches":I
    if-ge v0, v8, :cond_1

    move v0, v8

    .line 269
    :cond_1
    iget-object v9, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    monitor-enter v9

    .line 270
    :try_start_0
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lt v7, v0, :cond_2

    .line 271
    monitor-exit v9

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 277
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    iget v10, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    add-int/2addr v7, v10

    if-lt v7, v0, :cond_3

    .line 278
    monitor-exit v9

    goto :goto_0

    .line 279
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    iget-object v9, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->taskSpawnSyncPoint:Ljava/lang/Object;

    monitor-enter v9

    .line 282
    :try_start_2
    iget-wide v10, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->visibilityTimeoutNanos:J

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_4

    .line 283
    new-instance v7, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    invoke-direct {v7}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;-><init>()V

    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->withQueueUrl(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    move-result-object v7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "VisibilityTimeout"

    aput-object v12, v10, v11

    invoke-virtual {v7, v10}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->withAttributeNames([Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    move-result-object v2

    .line 286
    .local v2, "request":Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
    sget-object v7, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 287
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;

    invoke-interface {v7, v2}, Lcom/amazonaws/services/sqs/AmazonSQS;->getQueueAttributes(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;->getAttributes()Ljava/util/Map;

    move-result-object v7

    const-string v10, "VisibilityTimeout"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 288
    .local v5, "visibilityTimeoutSeconds":J
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v5, v6, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->visibilityTimeoutNanos:J

    .line 291
    .end local v2    # "request":Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
    .end local v5    # "visibilityTimeoutSeconds":J
    :cond_4
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v7}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightReceiveBatches()I

    move-result v1

    .line 294
    .local v1, "max":I
    if-lez v1, :cond_7

    .line 295
    :goto_1
    iget v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    sub-int v4, v1, v7

    .line 296
    .local v4, "toSpawn":I
    if-lez v4, :cond_6

    .line 297
    new-instance v3, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;

    invoke-direct {v3, p0, p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)V

    .line 298
    .local v3, "task":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    iget v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    .line 299
    iget-wide v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->bufferCounter:J

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    iput-wide v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->bufferCounter:J

    .line 300
    sget-object v7, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 301
    sget-object v7, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Spawned receive batch #"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->bufferCounter:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " of "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " inflight) for queue "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 304
    :cond_5
    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v7, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 306
    .end local v3    # "task":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    :cond_6
    monitor-exit v9

    goto/16 :goto_0

    .end local v1    # "max":I
    .end local v4    # "toSpawn":I
    :catchall_1
    move-exception v7

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .restart local v1    # "max":I
    :cond_7
    move v1, v8

    .line 294
    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_1

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, "currentBatch":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    monitor-enter v4

    .line 341
    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;

    move-object v1, v0

    .line 342
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->clear()V

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 348
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "currentBatch":Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
    :cond_1
    return-void
.end method

.method public receiveMessageAsync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 4
    .param p1, "rq"    # Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
            ">;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    iget-boolean v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->shutDown:Z

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "The client has been shut down."

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_0
    const/16 v0, 0xa

    .line 137
    .local v0, "numMessages":I
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 140
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->issueFuture(ILcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageFuture;

    move-result-object v1

    .line 143
    .local v1, "toReturn":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    invoke-direct {p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->satisfyFuturesFromBuffer()V

    .line 146
    invoke-direct {p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->spawnMoreReceiveTasks()V

    .line 148
    return-object v1
.end method

.method reportBatchFinished(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;)V
    .locals 4
    .param p1, "batch"    # Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    monitor-enter v1

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 318
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->finishedTasks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " receive results cached "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 321
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->taskSpawnSyncPoint:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_1
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    .line 325
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    invoke-direct {p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->satisfyFuturesFromBuffer()V

    .line 329
    invoke-direct {p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->spawnMoreReceiveTasks()V

    .line 330
    return-void

    .line 321
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 325
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->shutDown:Z

    .line 114
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->inflightReceiveMessageBatches:I

    if-lez v1, :cond_0

    .line 115
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 119
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
