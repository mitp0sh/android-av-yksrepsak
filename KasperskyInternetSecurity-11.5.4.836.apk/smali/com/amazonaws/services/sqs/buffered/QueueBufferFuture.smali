.class Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
.super Ljava/lang/Object;
.source "QueueBufferFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Req:",
        "Lcom/amazonaws/AmazonWebServiceRequest;",
        "Res:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TRes;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<TReq;TRes;>;"
        }
    .end annotation
.end field

.field private done:Z

.field private e:Ljava/lang/Exception;

.field private issuingBuffer:Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRes;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TReq;TRes;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<TReq;TRes;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TReq;TRes;>;"
    .local p1, "cb":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<TReq;TRes;>;"
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->result:Ljava/lang/Object;

    .line 37
    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->e:Ljava/lang/Exception;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z

    .line 52
    iput-object v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->issuingBuffer:Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    .line 59
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->result:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)Ljava/lang/Exception;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->e:Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "arg0"    # Z

    .prologue
    .line 112
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TReq;TRes;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRes;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TReq;TRes;>;"
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 12
    .param p1, "timeout"    # J
    .param p3, "tu"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TRes;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TReq;TRes;>;"
    monitor-enter p0

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 139
    .local v6, "waitStartMs":J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 140
    .local v4, "timeoutMs":J
    move-wide v2, v4

    .line 142
    .local v2, "timeToWaitMs":J
    :goto_0
    iget-boolean v8, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z

    if-nez v8, :cond_1

    .line 145
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_0

    .line 146
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timed out waiting for results after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v2    # "timeToWaitMs":J
    .end local v4    # "timeoutMs":J
    .end local v6    # "waitStartMs":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 149
    .restart local v2    # "timeToWaitMs":J
    .restart local v4    # "timeoutMs":J
    .restart local v6    # "waitStartMs":J
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 152
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 153
    .local v0, "nowMs":J
    sub-long v8, v0, v6

    sub-long v2, v4, v8

    .line 155
    goto :goto_0

    .line 159
    .end local v0    # "nowMs":J
    :cond_1
    iget-object v8, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->e:Ljava/lang/Exception;

    if-eqz v8, :cond_2

    .line 160
    new-instance v8, Ljava/util/concurrent/ExecutionException;

    iget-object v9, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->e:Ljava/lang/Exception;

    invoke-direct {v8, v9}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 164
    :cond_2
    iget-object v8, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->result:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TReq;TRes;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TReq;TRes;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuffer(Lcom/amazonaws/services/sqs/buffered/QueueBuffer;)V
    .locals 0
    .param p1, "paramBuffer"    # Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    .prologue
    .line 116
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TReq;TRes;>;"
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->issuingBuffer:Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    .line 117
    return-void
.end method

.method public declared-synchronized setFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "paramE"    # Ljava/lang/Exception;

    .prologue
    .line 89
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TReq;TRes;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->e:Ljava/lang/Exception;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->issuingBuffer:Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$2;

    invoke-direct {v1, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$2;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRes;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TReq;TRes;>;"
    .local p1, "paramResult":Ljava/lang/Object;, "TRes;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->result:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->done:Z

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->callback:Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->issuingBuffer:Lcom/amazonaws/services/sqs/buffered/QueueBuffer;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;

    invoke-direct {v1, p0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture$1;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
