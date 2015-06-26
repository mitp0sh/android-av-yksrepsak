.class public Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;
.super Ljava/lang/Object;
.source "DeleteMessageBatchRequestEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private receiptHandle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "receiptHandle"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->id:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->receiptHandle:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 180
    :cond_0
    :goto_0
    return v3

    .line 171
    :cond_1
    if-eqz p1, :cond_0

    .line 173
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 174
    check-cast v0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;

    .line 176
    .local v0, "other":Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 180
    goto :goto_0

    :cond_4
    move v1, v3

    .line 176
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 178
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->receiptHandle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 160
    const/16 v1, 0x1f

    .line 161
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 163
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 164
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 165
    return v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->id:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setReceiptHandle(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiptHandle"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->receiptHandle:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReceiptHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->getReceiptHandle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->id:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public withReceiptHandle(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;
    .locals 0
    .param p1, "receiptHandle"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchRequestEntry;->receiptHandle:Ljava/lang/String;

    .line 136
    return-object p0
.end method
