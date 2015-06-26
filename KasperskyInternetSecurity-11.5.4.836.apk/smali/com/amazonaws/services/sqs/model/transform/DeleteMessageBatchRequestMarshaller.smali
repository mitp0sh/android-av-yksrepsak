.class public Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchRequestMarshaller;
.super Ljava/lang/Object;
.source "DeleteMessageBatchRequestMarshaller.java"

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
        "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;",
        ">;",
        "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;",
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
.method public marshall(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Lcom/amazonaws/Request;
    .locals 8
    .param p1, "deleteMessageBatchRequest"    # Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;",
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
    new-instance v5, Lcom/amazonaws/DefaultRequest;

    const-string v6, "AmazonSQS"

    invoke-direct {v5, p1, v6}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v5, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;>;"
    const-string v6, "Action"

    const-string v7, "DeleteMessageBatch"

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v6, "Version"

    const-string v7, "2012-11-05"

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 44
    const-string v6, "QueueUrl"

    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 48
    .local v1, "entriesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;>;"
    const/4 v2, 0x1

    .line 50
    .local v2, "entriesListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;

    .line 51
    .local v3, "entriesListValue":Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;
    move-object v0, v3

    .line 52
    .local v0, "deleteMessageBatchRequestEntryMember":Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;
    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeleteMessageBatchRequestEntry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeleteMessageBatchRequestEntry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ReceiptHandle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_0

    .line 65
    .end local v0    # "deleteMessageBatchRequestEntryMember":Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;
    .end local v3    # "entriesListValue":Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;
    :cond_4
    return-object v5
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
    check-cast p1, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/model/transform/DeleteMessageBatchRequestMarshaller;->marshall(Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
