.class public Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ReceiveMessageRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxNumberOfMessages:Ljava/lang/Integer;

.field private queueUrl:Ljava/lang/String;

.field private visibilityTimeout:Ljava/lang/Integer;

.field private waitTimeSeconds:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->queueUrl:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 395
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 411
    :cond_0
    :goto_0
    return v3

    .line 396
    :cond_1
    if-eqz p1, :cond_0

    .line 398
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 399
    check-cast v0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;

    .line 401
    .local v0, "other":Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 408
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 411
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 401
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 403
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 405
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 407
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 409
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getAttributeNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->attributeNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->attributeNames:Ljava/util/List;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->attributeNames:Ljava/util/List;

    return-object v0
.end method

.method public getMaxNumberOfMessages()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->maxNumberOfMessages:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQueueUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->queueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibilityTimeout()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->visibilityTimeout:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWaitTimeSeconds()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->waitTimeSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 382
    const/16 v1, 0x1f

    .line 383
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 385
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 386
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 387
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 388
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 389
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 390
    return v0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_2

    .line 388
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_3

    .line 389
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setAttributeNames(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "attributeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->attributeNames:Ljava/util/List;

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v0, "attributeNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->attributeNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setMaxNumberOfMessages(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxNumberOfMessages"    # Ljava/lang/Integer;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->maxNumberOfMessages:Ljava/lang/Integer;

    .line 245
    return-void
.end method

.method public setQueueUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->queueUrl:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setVisibilityTimeout(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "visibilityTimeout"    # Ljava/lang/Integer;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->visibilityTimeout:Ljava/lang/Integer;

    .line 291
    return-void
.end method

.method public setWaitTimeSeconds(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "waitTimeSeconds"    # Ljava/lang/Integer;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->waitTimeSeconds:Ljava/lang/Integer;

    .line 337
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxNumberOfMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getMaxNumberOfMessages()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VisibilityTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getVisibilityTimeout()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaitTimeSeconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getWaitTimeSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributeNames(Ljava/util/Collection;)Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "attributeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->attributeNames:Ljava/util/List;

    .line 218
    :goto_0
    return-object p0

    .line 213
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v0, "attributeNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->attributeNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttributeNames([Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .locals 6
    .param p1, "attributeNames"    # [Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->setAttributeNames(Ljava/util/Collection;)V

    .line 187
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 188
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withMaxNumberOfMessages(Ljava/lang/Integer;)Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .locals 0
    .param p1, "maxNumberOfMessages"    # Ljava/lang/Integer;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->maxNumberOfMessages:Ljava/lang/Integer;

    .line 263
    return-object p0
.end method

.method public withQueueUrl(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->queueUrl:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public withVisibilityTimeout(Ljava/lang/Integer;)Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .locals 0
    .param p1, "visibilityTimeout"    # Ljava/lang/Integer;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->visibilityTimeout:Ljava/lang/Integer;

    .line 309
    return-object p0
.end method

.method public withWaitTimeSeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;
    .locals 0
    .param p1, "waitTimeSeconds"    # Ljava/lang/Integer;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/ReceiveMessageRequest;->waitTimeSeconds:Ljava/lang/Integer;

    .line 355
    return-object p0
.end method
