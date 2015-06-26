.class public Lcom/amazonaws/services/sqs/model/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private body:Ljava/lang/String;

.field private mD5OfBody:Ljava/lang/String;

.field private messageId:Ljava/lang/String;

.field private receiptHandle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
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

    .line 264
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 280
    :cond_0
    :goto_0
    return v3

    .line 265
    :cond_1
    if-eqz p1, :cond_0

    .line 267
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/Message;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 268
    check-cast v0, Lcom/amazonaws/services/sqs/model/Message;

    .line 270
    .local v0, "other":Lcom/amazonaws/services/sqs/model/Message;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getMD5OfBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMD5OfBody()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getMD5OfBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getMD5OfBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMD5OfBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getAttributes()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/Message;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 280
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 270
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 272
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 274
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 276
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 278
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/Message;->attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/Message;->attributes:Ljava/util/Map;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/Message;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/Message;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getMD5OfBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/Message;->mD5OfBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/Message;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/Message;->receiptHandle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 251
    const/16 v1, 0x1f

    .line 252
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 254
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 255
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 256
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMD5OfBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 257
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 258
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getAttributes()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 259
    return v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMD5OfBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 257
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 258
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/Message;->attributes:Ljava/util/Map;

    .line 211
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/Message;->body:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setMD5OfBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "mD5OfBody"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/Message;->mD5OfBody:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/Message;->messageId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setReceiptHandle(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiptHandle"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/Message;->receiptHandle:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReceiptHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getReceiptHandle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMD5OfBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MD5OfBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getMD5OfBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/Message;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributes(Ljava/util/Map;)Lcom/amazonaws/services/sqs/model/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/sqs/model/Message;"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/sqs/model/Message;->setAttributes(Ljava/util/Map;)V

    .line 225
    return-object p0
.end method

.method public withBody(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/Message;
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/Message;->body:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public withMD5OfBody(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/Message;
    .locals 0
    .param p1, "mD5OfBody"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/Message;->mD5OfBody:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public withMessageId(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/Message;
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/Message;->messageId:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public withReceiptHandle(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/Message;
    .locals 0
    .param p1, "receiptHandle"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/Message;->receiptHandle:Ljava/lang/String;

    .line 118
    return-object p0
.end method
