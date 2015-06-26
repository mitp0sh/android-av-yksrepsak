.class public Lcom/amazonaws/services/ec2/model/VolumeAttachment;
.super Ljava/lang/Object;
.source "VolumeAttachment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attachTime:Ljava/util/Date;

.field private deleteOnTermination:Ljava/lang/Boolean;

.field private device:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private volumeId:Ljava/lang/String;


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

    .line 374
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 392
    :cond_0
    :goto_0
    return v3

    .line 375
    :cond_1
    if-eqz p1, :cond_0

    .line 377
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 378
    check-cast v0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    .line 380
    .local v0, "other":Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getDevice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 392
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 380
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 382
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 384
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 386
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 388
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 390
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getAttachTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->attachTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->volumeId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 360
    const/16 v1, 0x1f

    .line 361
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 363
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 364
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 365
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getDevice()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 366
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 367
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 368
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 369
    return v0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 366
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 367
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_4

    .line 368
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public isDeleteOnTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttachTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "attachTime"    # Ljava/util/Date;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->attachTime:Ljava/util/Date;

    .line 267
    return-void
.end method

.method public setDeleteOnTermination(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    .line 305
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->device:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->instanceId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setState(Lcom/amazonaws/services/ec2/model/VolumeAttachmentState;)V
    .locals 1
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/VolumeAttachmentState;

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VolumeAttachmentState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->state:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->state:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setVolumeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->volumeId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttachTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->getAttachTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteOnTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttachTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    .locals 0
    .param p1, "attachTime"    # Ljava/util/Date;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->attachTime:Ljava/util/Date;

    .line 281
    return-object p0
.end method

.method public withDeleteOnTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    .locals 0
    .param p1, "deleteOnTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->deleteOnTermination:Ljava/lang/Boolean;

    .line 321
    return-object p0
.end method

.method public withDevice(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->device:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->instanceId:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public withState(Lcom/amazonaws/services/ec2/model/VolumeAttachmentState;)Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    .locals 1
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/VolumeAttachmentState;

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VolumeAttachmentState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->state:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->state:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public withVolumeId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/VolumeAttachment;->volumeId:Ljava/lang/String;

    .line 90
    return-object p0
.end method
