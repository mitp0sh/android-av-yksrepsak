.class public Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;
.super Ljava/lang/Object;
.source "SendMessageBatchResultEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;

.field private mD5OfMessageBody:Ljava/lang/String;

.field private messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 202
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 214
    :cond_0
    :goto_0
    return v3

    .line 203
    :cond_1
    if-eqz p1, :cond_0

    .line 205
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 206
    check-cast v0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;

    .line 208
    .local v0, "other":Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMessageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMD5OfMessageBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMD5OfMessageBody()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMD5OfMessageBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMD5OfMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMD5OfMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 214
    goto :goto_0

    :cond_5
    move v1, v3

    .line 208
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 210
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 212
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMD5OfMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->mD5OfMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 191
    const/16 v1, 0x1f

    .line 192
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 194
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 195
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMessageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 196
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMD5OfMessageBody()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 197
    return v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMD5OfMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->id:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setMD5OfMessageBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "mD5OfMessageBody"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->mD5OfMessageBody:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->messageId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMD5OfMessageBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MD5OfMessageBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->getMD5OfMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->id:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public withMD5OfMessageBody(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;
    .locals 0
    .param p1, "mD5OfMessageBody"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->mD5OfMessageBody:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public withMessageId(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;->messageId:Ljava/lang/String;

    .line 108
    return-object p0
.end method
