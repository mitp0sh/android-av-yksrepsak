.class public Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DetachVolumeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private device:Ljava/lang/String;

.field private force:Ljava/lang/Boolean;

.field private instanceId:Ljava/lang/String;

.field private volumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->volumeId:Ljava/lang/String;

    .line 72
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

    .line 331
    :cond_0
    :goto_0
    return v3

    .line 318
    :cond_1
    if-eqz p1, :cond_0

    .line 320
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 321
    check-cast v0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;

    .line 323
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->isForce()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->isForce()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->isForce()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->isForce()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->isForce()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 331
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 323
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 325
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 327
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 329
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getForce()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->force:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->volumeId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 305
    const/16 v1, 0x1f

    .line 306
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 308
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 309
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 310
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 311
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->isForce()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 312
    return v0

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->isForce()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public isForce()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->force:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->device:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setForce(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "force"    # Ljava/lang/Boolean;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->force:Ljava/lang/Boolean;

    .line 228
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->instanceId:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setVolumeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->volumeId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getInstanceId()Ljava/lang/String;

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
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->isForce()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->isForce()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDevice(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->device:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public withForce(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;
    .locals 0
    .param p1, "force"    # Ljava/lang/Boolean;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->force:Ljava/lang/Boolean;

    .line 256
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->instanceId:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public withVolumeId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DetachVolumeRequest;->volumeId:Ljava/lang/String;

    .line 106
    return-object p0
.end method
