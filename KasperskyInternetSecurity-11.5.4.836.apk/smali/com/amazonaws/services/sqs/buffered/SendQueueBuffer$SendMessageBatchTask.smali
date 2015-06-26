.class Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;
.super Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;
.source "SendQueueBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMessageBatchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask",
        "<",
        "Lcom/amazonaws/services/sqs/model/SendMessageRequest;",
        "Lcom/amazonaws/services/sqs/model/SendMessageResult;",
        ">;"
    }
.end annotation


# instance fields
.field batchSizeBytes:I

.field final synthetic this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)V
    .locals 1

    .prologue
    .line 452
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-direct {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)V

    .line 454
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->batchSizeBytes:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;
    .param p2, "x1"    # Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)V

    return-void
.end method


# virtual methods
.method declared-synchronized isFull()Z
    .locals 4

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->batchSizeBytes:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v2}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSizeBytes()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic isOkToAdd(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 1
    .param p1, "x0"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 452
    check-cast p1, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    .end local p1    # "x0":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->isOkToAdd(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized isOkToAdd(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Z
    .locals 4
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->batchSizeBytes:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->config:Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    invoke-static {v2}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$300(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->getMaxBatchSizeBytes()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

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

.method protected bridge synthetic onRequestAdded(Lcom/amazonaws/AmazonWebServiceRequest;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 452
    check-cast p1, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    .end local p1    # "x0":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->onRequestAdded(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)V

    return-void
.end method

.method protected onRequestAdded(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    .prologue
    .line 464
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->batchSizeBytes:I

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->batchSizeBytes:I

    .line 465
    return-void
.end method

.method process()V
    .locals 13

    .prologue
    .line 475
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 515
    :cond_0
    return-void

    .line 478
    :cond_1
    new-instance v10, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;

    invoke-direct {v10}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;-><init>()V

    iget-object v11, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->qUrl:Ljava/lang/String;
    invoke-static {v11}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$400(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->withQueueUrl(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;

    move-result-object v1

    .line 480
    .local v1, "batchRequest":Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
    sget-object v10, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 482
    new-instance v3, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 484
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "n":I
    :goto_0
    if-ge v6, v9, :cond_2

    .line 485
    new-instance v10, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;

    invoke-direct {v10}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->withId(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;

    move-result-object v11

    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    invoke-virtual {v10}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->withMessageBody(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;

    move-result-object v11

    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    invoke-virtual {v10}, Lcom/amazonaws/services/sqs/model/SendMessageRequest;->getDelaySeconds()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->withDelaySeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->setEntries(Ljava/util/Collection;)V

    .line 491
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;
    invoke-static {v10}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$500(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;

    move-result-object v10

    invoke-interface {v10, v1}, Lcom/amazonaws/services/sqs/AmazonSQS;->sendMessageBatch(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;

    move-result-object v2

    .line 494
    .local v2, "batchResult":Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;

    .line 496
    .local v4, "entry":Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;
    invoke-virtual {v4}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 497
    .local v8, "index":I
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    invoke-static {v4}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->convert(Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;)Lcom/amazonaws/services/sqs/model/SendMessageResult;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 500
    .end local v4    # "entry":Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;
    .end local v8    # "index":I
    :cond_3
    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;

    .line 501
    .local v5, "errorEntry":Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 502
    .restart local v8    # "index":I
    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 503
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    invoke-static {v5}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->convert(Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;)Ljava/lang/Exception;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setFailure(Ljava/lang/Exception;)V

    goto :goto_2

    .line 508
    :cond_4
    :try_start_0
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    iget-object v11, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;
    invoke-static {v11}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$500(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;

    move-result-object v12

    iget-object v11, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->requests:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazonaws/services/sqs/model/SendMessageRequest;

    invoke-interface {v12, v11}, Lcom/amazonaws/services/sqs/AmazonSQS;->sendMessage(Lcom/amazonaws/services/sqs/model/SendMessageRequest;)Lcom/amazonaws/services/sqs/model/SendMessageResult;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "ace":Lcom/amazonaws/AmazonClientException;
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$SendMessageBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    invoke-virtual {v10, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setFailure(Ljava/lang/Exception;)V

    goto :goto_2
.end method
