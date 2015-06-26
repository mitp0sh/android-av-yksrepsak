.class public Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;
.super Ljava/lang/Object;
.source "SpotDatafeedSubscription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bucket:Ljava/lang/String;

.field private fault:Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

.field private ownerId:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private state:Ljava/lang/String;


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

    .line 263
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 279
    :cond_0
    :goto_0
    return v3

    .line 264
    :cond_1
    if-eqz p1, :cond_0

    .line 266
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 267
    check-cast v0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;

    .line 269
    .local v0, "other":Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getBucket()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getBucket()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getBucket()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getBucket()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 279
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 269
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 271
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 273
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 275
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 277
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->fault:Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->state:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 250
    const/16 v1, 0x1f

    .line 251
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 253
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 254
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getBucket()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 255
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 256
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 257
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 258
    return v0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getBucket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 257
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucket"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->bucket:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setFault(Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;)V
    .locals 0
    .param p1, "fault"    # Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->fault:Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    .line 209
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->ownerId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->prefix:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->state:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OwnerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getBucket()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getBucket()Ljava/lang/String;

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
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getPrefix()Ljava/lang/String;

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
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getState()Ljava/lang/String;

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
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fault: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->getFault()Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBucket(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;
    .locals 0
    .param p1, "bucket"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->bucket:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public withFault(Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;)Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;
    .locals 0
    .param p1, "fault"    # Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->fault:Lcom/amazonaws/services/ec2/model/SpotInstanceStateFault;

    .line 223
    return-object p0
.end method

.method public withOwnerId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->ownerId:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->prefix:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/SpotDatafeedSubscription;->state:Ljava/lang/String;

    .line 189
    return-object p0
.end method
