.class public Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchRequestMarshaller;
.super Ljava/lang/Object;
.source "SendMessageBatchRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;",
        ">;",
        "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/Request;
    .locals 8
    .param p1, "sendMessageBatchRequest"    # Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    const-string v7, "Invalid argument passed to marshall(...)"

    invoke-direct {v6, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    :cond_0
    new-instance v4, Lcom/amazonaws/DefaultRequest;

    const-string v6, "AmazonSQS"

    invoke-direct {v4, p1, v6}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;>;"
    const-string v6, "Action"

    const-string v7, "SendMessageBatch"

    invoke-interface {v4, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v6, "Version"

    const-string v7, "2012-11-05"

    invoke-interface {v4, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 44
    const-string v6, "QueueUrl"

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "entriesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;>;"
    const/4 v1, 0x1

    .line 50
    .local v1, "entriesListIndex":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;

    .line 51
    .local v2, "entriesListValue":Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;
    move-object v5, v2

    .line 52
    .local v5, "sendMessageBatchRequestEntryMember":Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;
    if-eqz v5, :cond_4

    .line 53
    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendMessageBatchRequestEntry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendMessageBatchRequestEntry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".MessageBody"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->getDelaySeconds()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendMessageBatchRequestEntry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".DelaySeconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;->getDelaySeconds()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto/16 :goto_0

    .line 68
    .end local v2    # "entriesListValue":Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;
    .end local v5    # "sendMessageBatchRequestEntryMember":Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;
    :cond_5
    return-object v4
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/model/transform/SendMessageBatchRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
