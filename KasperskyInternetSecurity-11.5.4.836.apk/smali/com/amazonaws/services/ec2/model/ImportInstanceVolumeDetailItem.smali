.class public Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
.super Ljava/lang/Object;
.source "ImportInstanceVolumeDetailItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

.field private bytesConverted:Ljava/lang/Long;

.field private description:Ljava/lang/String;

.field private image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

.field private status:Ljava/lang/String;

.field private statusMessage:Ljava/lang/String;

.field private volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 315
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 335
    :cond_0
    :goto_0
    return v3

    .line 316
    :cond_1
    if-eqz p1, :cond_0

    .line 318
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 319
    check-cast v0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;

    .line 321
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getBytesConverted()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getBytesConverted()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getBytesConverted()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getBytesConverted()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getBytesConverted()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/DiskImageDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    move v3, v2

    .line 335
    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 321
    goto/16 :goto_1

    :cond_a
    move v4, v3

    goto/16 :goto_2

    :cond_b
    move v1, v3

    .line 323
    goto/16 :goto_3

    :cond_c
    move v4, v3

    goto/16 :goto_4

    :cond_d
    move v1, v3

    .line 325
    goto/16 :goto_5

    :cond_e
    move v4, v3

    goto/16 :goto_6

    :cond_f
    move v1, v3

    .line 327
    goto/16 :goto_7

    :cond_10
    move v4, v3

    goto/16 :goto_8

    :cond_11
    move v1, v3

    .line 329
    goto/16 :goto_9

    :cond_12
    move v4, v3

    goto :goto_a

    :cond_13
    move v1, v3

    .line 331
    goto :goto_b

    :cond_14
    move v4, v3

    goto :goto_c

    :cond_15
    move v1, v3

    .line 333
    goto :goto_d

    :cond_16
    move v4, v3

    goto :goto_e
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesConverted()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->bytesConverted:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 300
    const/16 v1, 0x1f

    .line 301
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 303
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getBytesConverted()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 304
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 305
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 306
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 307
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 308
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 309
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    :goto_6
    add-int v0, v2, v3

    .line 310
    return v0

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getBytesConverted()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/DiskImageDescription;->hashCode()I

    move-result v2

    goto :goto_2

    .line 306
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;->hashCode()I

    move-result v2

    goto :goto_3

    .line 307
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 308
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 309
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_6
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->availabilityZone:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setBytesConverted(Ljava/lang/Long;)V
    .locals 0
    .param p1, "bytesConverted"    # Ljava/lang/Long;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->bytesConverted:Ljava/lang/Long;

    .line 53
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->description:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setImage(Lcom/amazonaws/services/ec2/model/DiskImageDescription;)V
    .locals 0
    .param p1, "image"    # Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    .line 121
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->status:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->statusMessage:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setVolume(Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;)V
    .locals 0
    .param p1, "volume"    # Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getBytesConverted()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BytesConverted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getBytesConverted()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getVolume()Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_6
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->availabilityZone:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public withBytesConverted(Ljava/lang/Long;)Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    .locals 0
    .param p1, "bytesConverted"    # Ljava/lang/Long;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->bytesConverted:Ljava/lang/Long;

    .line 67
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->description:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method public withImage(Lcom/amazonaws/services/ec2/model/DiskImageDescription;)Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    .locals 0
    .param p1, "image"    # Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->image:Lcom/amazonaws/services/ec2/model/DiskImageDescription;

    .line 135
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->status:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public withStatusMessage(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->statusMessage:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public withVolume(Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;)Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;
    .locals 0
    .param p1, "volume"    # Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImportInstanceVolumeDetailItem;->volume:Lcom/amazonaws/services/ec2/model/DiskImageVolumeDescription;

    .line 169
    return-object p0
.end method
