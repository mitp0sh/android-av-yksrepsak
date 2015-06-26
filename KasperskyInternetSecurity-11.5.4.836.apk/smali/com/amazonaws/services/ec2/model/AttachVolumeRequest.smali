.class public Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "AttachVolumeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private device:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private volumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "device"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->volumeId:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->instanceId:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->device:Ljava/lang/String;

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

    .line 234
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 246
    :cond_0
    :goto_0
    return v3

    .line 235
    :cond_1
    if-eqz p1, :cond_0

    .line 237
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 238
    check-cast v0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;

    .line 240
    .local v0, "other":Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 246
    goto :goto_0

    :cond_5
    move v1, v3

    .line 240
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 242
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 244
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->volumeId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 223
    const/16 v1, 0x1f

    .line 224
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 226
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 227
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 228
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 229
    return v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->device:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->instanceId:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setVolumeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->volumeId:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDevice(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->device:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->instanceId:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public withVolumeId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/AttachVolumeRequest;->volumeId:Ljava/lang/String;

    .line 112
    return-object p0
.end method
