.class public Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
.super Ljava/lang/Object;
.source "EbsBlockDevice.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deleteOnTermination:Ljava/lang/Boolean;

.field private iops:Ljava/lang/Integer;

.field private snapshotId:Ljava/lang/String;

.field private volumeSize:Ljava/lang/Integer;

.field private volumeType:Ljava/lang/String;


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

    .line 317
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 333
    :cond_0
    :goto_0
    return v3

    .line 318
    :cond_1
    if-eqz p1, :cond_0

    .line 320
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 321
    check-cast v0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;

    .line 323
    .local v0, "other":Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 333
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 323
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 325
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 327
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 329
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 331
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIops()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->iops:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->snapshotId:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->volumeSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVolumeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->volumeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 304
    const/16 v1, 0x1f

    .line 305
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 307
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 308
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 309
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 310
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 311
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 312
    return v0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_2

    .line 310
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 311
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public isDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDeleteOnTermination(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->deleteOnTermination:Ljava/lang/Boolean;

    .line 133
    return-void
.end method

.method public setIops(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "iops"    # Ljava/lang/Integer;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->iops:Ljava/lang/Integer;

    .line 263
    return-void
.end method

.method public setSnapshotId(Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->snapshotId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setVolumeSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "volumeSize"    # Ljava/lang/Integer;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->volumeSize:Ljava/lang/Integer;

    .line 95
    return-void
.end method

.method public setVolumeType(Lcom/amazonaws/services/ec2/model/VolumeType;)V
    .locals 1
    .param p1, "volumeType"    # Lcom/amazonaws/services/ec2/model/VolumeType;

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VolumeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->volumeType:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setVolumeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeType"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->volumeType:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapshotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

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
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteOnTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iops: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDeleteOnTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->deleteOnTermination:Ljava/lang/Boolean;

    .line 149
    return-object p0
.end method

.method public withIops(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    .locals 0
    .param p1, "iops"    # Ljava/lang/Integer;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->iops:Ljava/lang/Integer;

    .line 277
    return-object p0
.end method

.method public withSnapshotId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->snapshotId:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public withVolumeSize(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    .locals 0
    .param p1, "volumeSize"    # Ljava/lang/Integer;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->volumeSize:Ljava/lang/Integer;

    .line 109
    return-object p0
.end method

.method public withVolumeType(Lcom/amazonaws/services/ec2/model/VolumeType;)Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    .locals 1
    .param p1, "volumeType"    # Lcom/amazonaws/services/ec2/model/VolumeType;

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VolumeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->volumeType:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public withVolumeType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    .locals 0
    .param p1, "volumeType"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->volumeType:Ljava/lang/String;

    .line 209
    return-object p0
.end method
