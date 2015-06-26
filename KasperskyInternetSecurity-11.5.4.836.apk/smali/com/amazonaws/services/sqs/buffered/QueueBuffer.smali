.class Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
.super Ljava/lang/Object;
.source "QueueBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/sqs/buffered/QueueBuffer$1;,
        Lcom/amazonaws/services/sqs/buffered/QueueBuffer$DaemonThreadFactory;
    }
.end annotation


# static fields
.field static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

.field private final realSqs:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

.field private final receiveBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

.field private final sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer$DaemonThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer$DaemonThreadFactory;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBuffer$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;Lcom/amazonaws/services/sqs/AmazonSQSAsync;)V
    .locals 2
    .param p1, "paramConfig"    # Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "sqs"    # Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p3, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->realSqs:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    .line 75
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    sget-object v1, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p3, v1, p1, p2}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;-><init>(Lcom/amazonaws/services/sqs/AmazonSQS;Ljava/util/concurrent/Executor;Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    .line 76
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    sget-object v1, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p3, v1, p1, p2}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;-><init>(Lcom/amazonaws/services/sqs/AmazonSQS;Ljava/util/concurrent/Executor;Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    .line 78
    return-void
.end method

.method private waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TResultType;>;)TResultType;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TResultType;>;"
    const/4 v4, 0x0

    .line 216
    .local v4, "toReturn":Ljava/lang/Object;, "TResultType;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 237
    return-object v4

    .line 217
    :catch_0
    move-exception v3

    .line 218
    .local v3, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 219
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v5, "Thread interrupted while waiting for execution result"

    invoke-direct {v1, v5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "ce":Lcom/amazonaws/AmazonClientException;
    invoke-virtual {v1, v3}, Lcom/amazonaws/AmazonClientException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 221
    throw v1

    .line 222
    .end local v1    # "ce":Lcom/amazonaws/AmazonClientException;
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 226
    .local v2, "ee":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 228
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v5, v0, Lcom/amazonaws/AmazonClientException;

    if-eqz v5, :cond_0

    .line 229
    check-cast v0, Lcom/amazonaws/AmazonClientException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 232
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v5, "Caught an exception while waiting for request to complete..."

    invoke-direct {v1, v5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v1    # "ce":Lcom/amazonaws/AmazonClientException;
    invoke-virtual {v1, v2}, Lcom/amazonaws/AmazonClientException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 234
    throw v1
.end method


# virtual methods
.method public changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;
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

    .prologue
    .line 144
    .local p2, "handler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 145
    .local v0, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Ljava/lang/Void;>;"
    if-eqz p2, :cond_0

    .line 146
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    .end local v0    # "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Ljava/lang/Void;>;"
    invoke-direct {v0, p2, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;-><init>(Lcom/amazonaws/handlers/AsyncHandler;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 149
    .restart local v0    # "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Ljava/lang/Void;>;"
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-virtual {v2, p1, v0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v1

    .line 150
    .local v1, "future":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Ljava/lang/Void;>;"
    invoke-virtual {v1, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setBuffer(Lcom/amazonaws/services/sqs/buffered/QueueBuffer;)V

    .line 151
    return-object v1
.end method

.method public changeMessageVisibilitySync(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    .line 160
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;
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

    .prologue
    .line 115
    .local p2, "handler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 116
    .local v0, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Ljava/lang/Void;>;"
    if-eqz p2, :cond_0

    .line 117
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    .end local v0    # "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Ljava/lang/Void;>;"
    invoke-direct {v0, p2, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;-><init>(Lcom/amazonaws/handlers/AsyncHandler;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 120
    .restart local v0    # "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Ljava/lang/Void;>;"
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-virtual {v2, p1, v0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v1

    .line 121
    .local v1, "future":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Ljava/lang/Void;>;"
    invoke-virtual {v1, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setBuffer(Lcom/amazonaws/services/sqs/buffered/QueueBuffer;)V

    .line 122
    return-object v1
.end method

.method public deleteMessageSync(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;

    .prologue
    .line 132
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->deleteMessage(Lcom/amazonaws/services/sqs/model/DeleteMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 133
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public receiveMessage(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 7
    .param p1, "rq"    # Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
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

    .prologue
    .local p2, "handler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 172
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v3, v5

    .line 173
    .local v3, "noAttributes":Z
    :goto_0
    iget-object v6, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v6}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxInflightReceiveBatches()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    invoke-virtual {v6}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxDoneReceiveBatches()I

    move-result v6

    if-lez v6, :cond_3

    move v0, v5

    .line 174
    .local v0, "bufferngEnabled":Z
    :goto_1
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    if-eqz p2, :cond_1

    .line 177
    new-instance v1, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    .end local v1    # "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    invoke-direct {v1, p2, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;-><init>(Lcom/amazonaws/handlers/AsyncHandler;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 180
    .restart local v1    # "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    invoke-virtual {v4, p1, v1}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->receiveMessageAsync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v2

    .line 181
    .local v2, "future":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    invoke-virtual {v2, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setBuffer(Lcom/amazonaws/services/sqs/buffered/QueueBuffer;)V

    .line 184
    .end local v1    # "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    .end local v2    # "future":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    :goto_2
    return-object v2

    .end local v0    # "bufferngEnabled":Z
    .end local v3    # "noAttributes":Z
    :cond_2
    move v3, v4

    .line 172
    goto :goto_0

    .restart local v3    # "noAttributes":Z
    :cond_3
    move v0, v4

    .line 173
    goto :goto_1

    .line 184
    .restart local v0    # "bufferngEnabled":Z
    :cond_4
    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->realSqs:Lcom/amazonaws/services/sqs/AmazonSQSAsync;

    invoke-interface {v4, p1}, Lcom/amazonaws/services/sqs/AmazonSQSAsync;->receiveMessageAsync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_2
.end method

.method public receiveMessageSync(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;
    .locals 2
    .param p1, "rq"    # Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;

    .prologue
    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveMessage(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 195
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;>;"
    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;

    return-object v1
.end method

.method public sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/SendMessageRequest;
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

    .prologue
    .line 88
    .local p2, "handler":Lcom/amazonaws/handlers/AsyncHandler;, "Lcom/amazonaws/handlers/AsyncHandler<Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/model/SendMessageResult;>;"
    const/4 v0, 0x0

    .line 89
    .local v0, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/model/SendMessageResult;>;"
    if-eqz p2, :cond_0

    .line 90
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    .end local v0    # "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/model/SendMessageResult;>;"
    invoke-direct {v0, p2, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;-><init>(Lcom/amazonaws/handlers/AsyncHandler;Lcom/amazonaws/AmazonWebServiceRequest;)V

    .line 92
    .restart local v0    # "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/model/SendMessageResult;>;"
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendBuffer:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-virtual {v2, p1, v0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v1

    .line 93
    .local v1, "future":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/services/sqs/model/SendMessageResult;>;"
    invoke-virtual {v1, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setBuffer(Lcom/amazonaws/services/sqs/buffered/QueueBuffer;)V

    .line 94
    return-object v1
.end method

.method public sendMessageSync(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Lcom/amazonaws/services/sqs/model/SendMessageResult;
    .locals 2
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    .prologue
    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;Lcom/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 104
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/amazonaws/services/sqs/model/SendMessageResult;>;"
    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->waitForFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/sqs/model/SendMessageResult;

    return-object v1
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->receiveBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->shutdown()V

    .line 206
    return-void
.end method
