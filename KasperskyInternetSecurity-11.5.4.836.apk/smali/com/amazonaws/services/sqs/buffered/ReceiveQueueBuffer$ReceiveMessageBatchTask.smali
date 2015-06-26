.class Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;
.super Ljava/lang/Object;
.source "ReceiveQueueBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveMessageBatchTask"
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sqs/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private open:Z

.field private parentBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

.field final synthetic this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

.field private visibilityDeadlineNano:J


# direct methods
.method constructor <init>(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)V
    .locals 1
    .param p2, "paramParentBuffer"    # Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->exception:Ljava/lang/Exception;

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->open:Z

    .line 397
    iput-object p2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->parentBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    .line 398
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;

    .line 399
    return-void
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 10

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->open:Z

    if-nez v6, :cond_0

    .line 454
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "batch is not open"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 456
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->visibilityDeadlineNano:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 457
    new-instance v6, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;

    invoke-direct {v6}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;-><init>()V

    iget-object v7, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$000(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;->withQueueUrl(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;

    move-result-object v0

    .line 459
    .local v0, "batchRequest":Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;
    sget-object v6, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 461
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;>;"
    const/4 v3, 0x0

    .line 465
    .local v3, "i":I
    iget-object v6, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/sqs/model/Message;

    .line 467
    .local v5, "m":Lcom/amazonaws/services/sqs/model/Message;
    new-instance v6, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;

    invoke-direct {v6}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;->withId(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;->withReceiptHandle(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;->withVisibilityTimeout(Ljava/lang/Integer;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    .end local v5    # "m":Lcom/amazonaws/services/sqs/model/Message;
    :cond_1
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;->setEntries(Ljava/util/Collection;)V

    .line 476
    iget-object v6, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;
    invoke-static {v6}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$100(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/amazonaws/services/sqs/AmazonSQS;->changeMessageVisibilityBatch(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;
    :try_end_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    .end local v0    # "batchRequest":Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;>;"
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    :try_start_3
    iget-object v6, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 477
    .restart local v0    # "batchRequest":Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;
    .restart local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;>;"
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Lcom/amazonaws/AmazonClientException;
    :try_start_4
    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReceiveMessageBatchTask: changeMessageVisibility failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized getException()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->open:Z

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "batch is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 422
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->exception:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized getSize()I
    .locals 2

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->open:Z

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "batch is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 405
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method declared-synchronized isEmpty()Z
    .locals 2

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->open:Z

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "batch is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 413
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method declared-synchronized removeMessage()Lcom/amazonaws/services/sqs/model/Message;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 434
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->open:Z

    if-nez v1, :cond_0

    .line 435
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "batch is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 438
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->visibilityDeadlineNano:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 443
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/sqs/model/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 492
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->visibilityTimeoutNanos:J
    invoke-static {v4}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->visibilityDeadlineNano:J

    .line 493
    new-instance v2, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->qUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$000(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v3}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$400(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->withMaxNumberOfMessages(Ljava/lang/Integer;)Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;

    move-result-object v1

    .line 494
    .local v1, "request":Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    sget-object v2, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 496
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v2}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$400(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getVisibilityTimeoutSeconds()I

    move-result v2

    if-lez v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v2}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$400(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getVisibilityTimeoutSeconds()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->setVisibilityTimeout(Ljava/lang/Integer;)V

    .line 498
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v5}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$400(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getVisibilityTimeoutSeconds()I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->visibilityDeadlineNano:J

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v2}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$400(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->isLongPoll()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v2}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$400(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getLongPollWaitTimeoutSeconds()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->withWaitTimeSeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;

    .line 505
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;
    invoke-static {v2}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->access$100(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazonaws/services/sqs/AmazonSQS;->receiveMessage(Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;)Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/model/ReceiveMessageResult;->getMessages()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->messages:Ljava/util/List;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    iput-boolean v8, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->open:Z

    .line 511
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->parentBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    invoke-virtual {v2, p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->reportBatchFinished(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;)V

    .line 514
    .end local v1    # "request":Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Lcom/amazonaws/AmazonClientException;
    :try_start_1
    iput-object v0, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->exception:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    iput-boolean v8, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->open:Z

    .line 511
    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->parentBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    invoke-virtual {v2, p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->reportBatchFinished(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;)V

    goto :goto_0

    .line 510
    .end local v0    # "e":Lcom/amazonaws/AmazonClientException;
    :catchall_0
    move-exception v2

    iput-boolean v8, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->open:Z

    .line 511
    iget-object v3, p0, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;->parentBuffer:Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;

    invoke-virtual {v3, p0}, Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer;->reportBatchFinished(Lcom/amazonaws/services/sqs/buffered/ReceiveQueueBuffer$ReceiveMessageBatchTask;)V

    throw v2
.end method
