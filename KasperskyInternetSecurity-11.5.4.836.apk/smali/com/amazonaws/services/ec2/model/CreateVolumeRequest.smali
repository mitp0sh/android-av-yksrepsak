.class public Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateVolumeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

.field private iops:Ljava/lang/Integer;

.field private size:Ljava/lang/Integer;

.field private snapshotId:Ljava/lang/String;

.field private volumeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/Integer;
    .param p2, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->size:Ljava/lang/Integer;

    .line 67
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->availabilityZone:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;
    .param p2, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->snapshotId:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->availabilityZone:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 350
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 366
    :cond_0
    :goto_0
    return v3

    .line 351
    :cond_1
    if-eqz p1, :cond_0

    .line 353
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 354
    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;

    .line 356
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getVolumeType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getVolumeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getIops()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getIops()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getIops()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getIops()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getIops()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 366
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 356
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 358
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 360
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 362
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 364
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getIops()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->iops:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->size:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->snapshotId:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->volumeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 337
    const/16 v1, 0x1f

    .line 338
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 340
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 341
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 342
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 343
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getVolumeType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 344
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getIops()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 345
    return v0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 343
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getVolumeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 344
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getIops()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->availabilityZone:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setIops(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "iops"    # Ljava/lang/Integer;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->iops:Ljava/lang/Integer;

    .line 296
    return-void
.end method

.method public setSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/Integer;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->size:Ljava/lang/Integer;

    .line 109
    return-void
.end method

.method public setSnapshotId(Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->snapshotId:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setVolumeType(Lcom/amazonaws/services/ec2/model/VolumeType;)V
    .locals 1
    .param p1, "volumeType"    # Lcom/amazonaws/services/ec2/model/VolumeType;

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VolumeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->volumeType:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setVolumeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeType"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->volumeType:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapshotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getVolumeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getIops()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iops: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->getIops()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->availabilityZone:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public withIops(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;
    .locals 0
    .param p1, "iops"    # Ljava/lang/Integer;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->iops:Ljava/lang/Integer;

    .line 310
    return-object p0
.end method

.method public withSize(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;
    .locals 0
    .param p1, "size"    # Ljava/lang/Integer;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->size:Ljava/lang/Integer;

    .line 125
    return-object p0
.end method

.method public withSnapshotId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->snapshotId:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public withVolumeType(Lcom/amazonaws/services/ec2/model/VolumeType;)Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;
    .locals 1
    .param p1, "volumeType"    # Lcom/amazonaws/services/ec2/model/VolumeType;

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VolumeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->volumeType:Ljava/lang/String;

    .line 277
    return-object p0
.end method

.method public withVolumeType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;
    .locals 0
    .param p1, "volumeType"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateVolumeRequest;->volumeType:Ljava/lang/String;

    .line 242
    return-object p0
.end method
