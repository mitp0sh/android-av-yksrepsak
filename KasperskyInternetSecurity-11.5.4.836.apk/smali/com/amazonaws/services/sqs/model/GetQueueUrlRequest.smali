.class public Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetQueueUrlRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private queueName:Ljava/lang/String;

.field private queueOwnerAWSAccountId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->queueName:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 166
    :cond_0
    :goto_0
    return v3

    .line 157
    :cond_1
    if-eqz p1, :cond_0

    .line 159
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 160
    check-cast v0, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;

    .line 162
    .local v0, "other":Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueOwnerAWSAccountId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueOwnerAWSAccountId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueOwnerAWSAccountId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueOwnerAWSAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueOwnerAWSAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 166
    goto :goto_0

    :cond_4
    move v1, v3

    .line 162
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 164
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->queueName:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueOwnerAWSAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->queueOwnerAWSAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 146
    const/16 v1, 0x1f

    .line 147
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 149
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 150
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueOwnerAWSAccountId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 151
    return v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueOwnerAWSAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->queueName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setQueueOwnerAWSAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueOwnerAWSAccountId"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->queueOwnerAWSAccountId:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueOwnerAWSAccountId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueOwnerAWSAccountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->getQueueOwnerAWSAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withQueueName(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;
    .locals 0
    .param p1, "queueName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->queueName:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public withQueueOwnerAWSAccountId(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;
    .locals 0
    .param p1, "queueOwnerAWSAccountId"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/GetQueueUrlRequest;->queueOwnerAWSAccountId:Ljava/lang/String;

    .line 122
    return-object p0
.end method
