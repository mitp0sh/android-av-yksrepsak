.class public Lcom/amazonaws/services/simpleemail/model/SendDataPoint;
.super Ljava/lang/Object;
.source "SendDataPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bounces:Ljava/lang/Long;

.field private complaints:Ljava/lang/Long;

.field private deliveryAttempts:Ljava/lang/Long;

.field private rejects:Ljava/lang/Long;

.field private timestamp:Ljava/util/Date;


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

    .line 256
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 272
    :cond_0
    :goto_0
    return v3

    .line 257
    :cond_1
    if-eqz p1, :cond_0

    .line 259
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 260
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;

    .line 262
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/SendDataPoint;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getDeliveryAttempts()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getDeliveryAttempts()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getDeliveryAttempts()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getDeliveryAttempts()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getDeliveryAttempts()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getBounces()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getBounces()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getBounces()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getBounces()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getBounces()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getComplaints()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getComplaints()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getComplaints()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getComplaints()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getComplaints()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getRejects()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getRejects()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getRejects()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getRejects()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getRejects()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 272
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 262
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 264
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 266
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 268
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 270
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getBounces()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->bounces:Ljava/lang/Long;

    return-object v0
.end method

.method public getComplaints()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->complaints:Ljava/lang/Long;

    return-object v0
.end method

.method public getDeliveryAttempts()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->deliveryAttempts:Ljava/lang/Long;

    return-object v0
.end method

.method public getRejects()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->rejects:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 243
    const/16 v1, 0x1f

    .line 244
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 246
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 247
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getDeliveryAttempts()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 248
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getBounces()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 249
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getComplaints()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 250
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getRejects()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 251
    return v0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getDeliveryAttempts()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getBounces()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_2

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getComplaints()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_3

    .line 250
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getRejects()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setBounces(Ljava/lang/Long;)V
    .locals 0
    .param p1, "bounces"    # Ljava/lang/Long;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->bounces:Ljava/lang/Long;

    .line 134
    return-void
.end method

.method public setComplaints(Ljava/lang/Long;)V
    .locals 0
    .param p1, "complaints"    # Ljava/lang/Long;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->complaints:Ljava/lang/Long;

    .line 168
    return-void
.end method

.method public setDeliveryAttempts(Ljava/lang/Long;)V
    .locals 0
    .param p1, "deliveryAttempts"    # Ljava/lang/Long;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->deliveryAttempts:Ljava/lang/Long;

    .line 100
    return-void
.end method

.method public setRejects(Ljava/lang/Long;)V
    .locals 0
    .param p1, "rejects"    # Ljava/lang/Long;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->rejects:Ljava/lang/Long;

    .line 202
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->timestamp:Ljava/util/Date;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getDeliveryAttempts()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeliveryAttempts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getDeliveryAttempts()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getBounces()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bounces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getBounces()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getComplaints()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Complaints: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getComplaints()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getRejects()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rejects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->getRejects()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBounces(Ljava/lang/Long;)Lcom/amazonaws/services/simpleemail/model/SendDataPoint;
    .locals 0
    .param p1, "bounces"    # Ljava/lang/Long;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->bounces:Ljava/lang/Long;

    .line 148
    return-object p0
.end method

.method public withComplaints(Ljava/lang/Long;)Lcom/amazonaws/services/simpleemail/model/SendDataPoint;
    .locals 0
    .param p1, "complaints"    # Ljava/lang/Long;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->complaints:Ljava/lang/Long;

    .line 182
    return-object p0
.end method

.method public withDeliveryAttempts(Ljava/lang/Long;)Lcom/amazonaws/services/simpleemail/model/SendDataPoint;
    .locals 0
    .param p1, "deliveryAttempts"    # Ljava/lang/Long;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->deliveryAttempts:Ljava/lang/Long;

    .line 114
    return-object p0
.end method

.method public withRejects(Ljava/lang/Long;)Lcom/amazonaws/services/simpleemail/model/SendDataPoint;
    .locals 0
    .param p1, "rejects"    # Ljava/lang/Long;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->rejects:Ljava/lang/Long;

    .line 216
    return-object p0
.end method

.method public withTimestamp(Ljava/util/Date;)Lcom/amazonaws/services/simpleemail/model/SendDataPoint;
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/SendDataPoint;->timestamp:Ljava/util/Date;

    .line 80
    return-object p0
.end method
