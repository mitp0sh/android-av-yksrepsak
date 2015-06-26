.class abstract Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;
.super Ljava/lang/Object;
.source "SendQueueBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OutboundBatchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/amazonaws/AmazonWebServiceRequest;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final futures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<TR;TResult;>;>;"
        }
    .end annotation
.end field

.field volatile onCompleted:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener",
            "<",
            "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask",
            "<TR;TResult;>;>;"
        }
    .end annotation
.end field

.field open:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)V
    .locals 2

    .prologue
    .line 339
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;"
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->onCompleted:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->requests:Ljava/util/List;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->futures:Ljava/util/ArrayList;

    .line 342
    return-void
.end method

.method private failAll(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 446
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;"
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    .line 447
    .local v0, "f":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TR;TResult;>;"
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 449
    .end local v0    # "f":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TR;TResult;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized addIfAllowed(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<TR;TResult;>;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<TR;TResult;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;"
    .local p1, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TR;"
    .local p2, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<TR;TResult;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->isOkToAdd(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->requests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    new-instance v0, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    invoke-direct {v0, p2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;-><init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)V

    .line 384
    .local v0, "theFuture":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TR;TResult;>;"
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->onRequestAdded(Lcom/amazonaws/AmazonWebServiceRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .end local v0    # "theFuture":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TR;TResult;>;"
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized addRequest(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback",
            "<TR;TResult;>;)",
            "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture",
            "<TR;TResult;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;"
    .local p1, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TR;"
    .local p2, "callback":Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback<TR;TResult;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 352
    const/4 v0, 0x0

    .line 367
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 354
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->addIfAllowed(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/sqs/buffered/QueueBufferCallback;)Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    move-result-object v0

    .line 358
    .local v0, "theFuture":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TR;TResult;>;"
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->isFull()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    .end local v0    # "theFuture":Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;, "Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture<TR;TResult;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized isFull()Z
    .locals 2

    .prologue
    .line 403
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isOkToAdd(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;"
    .local p1, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TR;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onRequestAdded(Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;"
    .local p1, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TR;"
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method abstract process()V
.end method

.method public declared-synchronized run()V
    .locals 14

    .prologue
    .local p0, "this":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;"
    const-wide/16 v12, 0x1

    .line 414
    monitor-enter p0

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v10}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchOpenMs()J

    move-result-wide v10

    add-long/2addr v8, v10

    add-long v1, v8, v12

    .line 416
    .local v1, "deadlineMs":J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 417
    .local v4, "t":J
    :goto_0
    iget-object v8, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_1

    cmp-long v8, v4, v1

    if-gez v8, :cond_1

    .line 418
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 421
    const-wide/16 v8, 0x1

    sub-long v10, v1, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 422
    .local v6, "toWait":J
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 427
    .end local v1    # "deadlineMs":J
    .end local v4    # "t":J
    .end local v6    # "toWait":J
    :catch_0
    move-exception v3

    .line 428
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-direct {p0, v3}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->failAll(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 439
    :try_start_2
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->onCompleted:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;

    .line 440
    .local v0, "completionListener":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener<Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;>;"
    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;->invoke(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 425
    .end local v0    # "completionListener":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener<Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;>;"
    .restart local v1    # "deadlineMs":J
    .restart local v4    # "t":J
    :cond_1
    :try_start_3
    iget-object v8, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 426
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->process()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 439
    :try_start_4
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->onCompleted:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;

    .line 440
    .restart local v0    # "completionListener":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener<Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;>;"
    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;->invoke(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 414
    .end local v0    # "completionListener":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener<Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;>;"
    .end local v1    # "deadlineMs":J
    .end local v4    # "t":J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 429
    :catch_1
    move-exception v3

    .line 430
    .local v3, "e":Lcom/amazonaws/AmazonClientException;
    :try_start_5
    invoke-direct {p0, v3}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->failAll(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 439
    :try_start_6
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->onCompleted:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;

    .line 440
    .restart local v0    # "completionListener":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener<Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;>;"
    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;->invoke(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 431
    .end local v0    # "completionListener":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener<Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;>;"
    .end local v3    # "e":Lcom/amazonaws/AmazonClientException;
    :catch_2
    move-exception v3

    .line 432
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_7
    invoke-direct {p0, v3}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->failAll(Ljava/lang/Exception;)V

    .line 433
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 439
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v8

    :try_start_8
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->onCompleted:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;

    .line 440
    .restart local v0    # "completionListener":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener<Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;>;"
    if-eqz v0, :cond_2

    .line 441
    invoke-interface {v0, p0}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;->invoke(Ljava/lang/Object;)V

    .line 442
    :cond_2
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 434
    .end local v0    # "completionListener":Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener;, "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$Listener<Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask<TR;TResult;>;>;"
    :catch_3
    move-exception v3

    .line 435
    .local v3, "e":Ljava/lang/Error;
    :try_start_9
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    const-string v9, "Error encountered"

    invoke-direct {v8, v9, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v8}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;->failAll(Ljava/lang/Exception;)V

    .line 436
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method
