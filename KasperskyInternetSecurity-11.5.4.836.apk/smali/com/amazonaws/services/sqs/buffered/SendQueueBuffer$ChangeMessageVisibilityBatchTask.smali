.class Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;
.super Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;
.source "SendQueueBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeMessageVisibilityBatchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask",
        "<",
        "Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;


# direct methods
.method private constructor <init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    invoke-direct {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$OutboundBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;
    .param p2, "x1"    # Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$1;

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;-><init>(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 570
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 611
    :cond_0
    return-void

    .line 573
    :cond_1
    new-instance v10, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;

    invoke-direct {v10}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;-><init>()V

    iget-object v11, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->qUrl:Ljava/lang/String;
    invoke-static {v11}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$400(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;->withQueueUrl(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;

    move-result-object v1

    .line 575
    .local v1, "batchRequest":Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;
    sget-object v10, Lcom/amazonaws/services/sqs/buffered/AmazonSQSBufferedAsyncClient;->USER_AGENT:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "n":I
    :goto_0
    if-ge v6, v9, :cond_2

    .line 580
    new-instance v10, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;

    invoke-direct {v10}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;->withId(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;

    move-result-object v11

    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;

    invoke-virtual {v10}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;->getReceiptHandle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;->withReceiptHandle(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;

    move-result-object v11

    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;

    invoke-virtual {v10}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;->withVisibilityTimeout(Ljava/lang/Integer;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequestEntry;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;->setEntries(Ljava/util/Collection;)V

    .line 587
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;
    invoke-static {v10}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$500(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;

    move-result-object v10

    invoke-interface {v10, v1}, Lcom/amazonaws/services/sqs/AmazonSQS;->changeMessageVisibilityBatch(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchRequest;)Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;

    move-result-object v2

    .line 590
    .local v2, "batchResult":Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;
    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;->getSuccessful()Ljava/util/List;

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

    check-cast v4, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResultEntry;

    .line 592
    .local v4, "entry":Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResultEntry;
    invoke-virtual {v4}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 593
    .local v8, "index":I
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    invoke-virtual {v10, v12}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 596
    .end local v4    # "entry":Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResultEntry;
    .end local v8    # "index":I
    :cond_3
    invoke-virtual {v2}, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityBatchResult;->getFailed()Ljava/util/List;

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

    .line 597
    .local v5, "errorEntry":Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 598
    .restart local v8    # "index":I
    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 599
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    invoke-static {v5}, Lcom/amazonaws/services/sqs/buffered/ResultConverter;->convert(Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;)Ljava/lang/Exception;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setFailure(Ljava/lang/Exception;)V

    goto :goto_2

    .line 603
    :cond_4
    :try_start_0
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->this$0:Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;

    # getter for: Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->sqsClient:Lcom/amazonaws/services/sqs/AmazonSQS;
    invoke-static {v10}, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;->access$500(Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer;)Lcom/amazonaws/services/sqs/AmazonSQS;

    move-result-object v11

    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->requests:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;

    invoke-interface {v11, v10}, Lcom/amazonaws/services/sqs/AmazonSQS;->changeMessageVisibility(Lcom/amazonaws/services/sqs/model/ChangeMessageVisibilityRequest;)V

    .line 604
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "ace":Lcom/amazonaws/AmazonClientException;
    iget-object v10, p0, Lcom/amazonaws/services/sqs/buffered/SendQueueBuffer$ChangeMessageVisibilityBatchTask;->futures:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;

    invoke-virtual {v10, v0}, Lcom/amazonaws/services/sqs/buffered/QueueBufferFuture;->setFailure(Ljava/lang/Exception;)V

    goto :goto_2
.end method
