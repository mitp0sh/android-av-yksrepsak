.class public Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
.super Ljava/lang/Object;
.source "BatchResultErrorEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private senderFault:Ljava/lang/Boolean;


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

    .line 224
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 238
    :cond_0
    :goto_0
    return v3

    .line 225
    :cond_1
    if-eqz p1, :cond_0

    .line 227
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 228
    check-cast v0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;

    .line 230
    .local v0, "other":Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getCode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 238
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 230
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 232
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 234
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 236
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderFault()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->senderFault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 212
    const/16 v1, 0x1f

    .line 213
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 215
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 216
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 217
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 218
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 219
    return v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_1

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public isSenderFault()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->senderFault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->code:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->id:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->message:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setSenderFault(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "senderFault"    # Ljava/lang/Boolean;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->senderFault:Ljava/lang/Boolean;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SenderFault: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->isSenderFault()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withCode(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->code:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->id:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public withMessage(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->message:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public withSenderFault(Ljava/lang/Boolean;)Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    .locals 0
    .param p1, "senderFault"    # Ljava/lang/Boolean;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;->senderFault:Ljava/lang/Boolean;

    .line 109
    return-object p0
.end method
