.class public Lcom/amazonaws/services/sns/model/PublishRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PublishRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private message:Ljava/lang/String;

.field private messageStructure:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private topicArn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->topicArn:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->message:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->topicArn:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->message:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->subject:Ljava/lang/String;

    .line 178
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 610
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 624
    :cond_0
    :goto_0
    return v3

    .line 611
    :cond_1
    if-eqz p1, :cond_0

    .line 613
    instance-of v1, p1, Lcom/amazonaws/services/sns/model/PublishRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 614
    check-cast v0, Lcom/amazonaws/services/sns/model/PublishRequest;

    .line 616
    .local v0, "other":Lcom/amazonaws/services/sns/model/PublishRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 617
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 619
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 621
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 623
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 624
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 616
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 618
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 620
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 622
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageStructure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->messageStructure:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicArn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->topicArn:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 598
    const/16 v1, 0x1f

    .line 599
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 601
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 602
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 603
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 604
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 605
    return v0

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 603
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 604
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->message:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setMessageStructure(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageStructure"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->messageStructure:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->subject:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setTopicArn(Ljava/lang/String;)V
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->topicArn:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopicArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getTopicArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageStructure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/PublishRequest;->getMessageStructure()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withMessage(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/PublishRequest;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->message:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public withMessageStructure(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/PublishRequest;
    .locals 0
    .param p1, "messageStructure"    # Ljava/lang/String;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->messageStructure:Ljava/lang/String;

    .line 572
    return-object p0
.end method

.method public withSubject(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/PublishRequest;
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->subject:Ljava/lang/String;

    .line 448
    return-object p0
.end method

.method public withTopicArn(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/PublishRequest;
    .locals 0
    .param p1, "topicArn"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/PublishRequest;->topicArn:Ljava/lang/String;

    .line 212
    return-object p0
.end method
